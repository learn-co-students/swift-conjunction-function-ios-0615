//  SandboxSpec.swift

import Quick
import Nimble
@testable import swift_conjunction_function

class SandboxSpec: QuickSpec {
    override func spec() {
        describe("Sandbox listOfElements:conjunction:") {
            
            let and = "and"
            let amp = "&"
            let or = "or"
            
            let empty: [String] = []
            let han = ["solo"]
            let thisThat = ["this", "that"]
            let firstPerson = ["me", "myself", "I"]
            let instructors = ["Joe", "Tim", "Jim", "Tom", "Mark"]
            
            let unknownConjunction = "unknown conjunction"
            
            describe("when the array parameter is empty") {
                it("should return an empty string for the conjuction 'and'") {
                    let emptyAnd = listWithElements(empty, conjunction: and)
                    
                    expect(emptyAnd).to(beEmpty())
                }
                
                it("should return an empty string for the conjuction '&'") {
                    let emptyAmp = listWithElements(empty, conjunction: amp)
                    
                    expect(emptyAmp).to(beEmpty())
                }

                it("should return an empty string for the conjuction 'or'") {
                    let emptyOr = listWithElements(empty, conjunction: or)
                    
                    expect(emptyOr).to(beEmpty())
                }

                it("should return an 'unknown conjuction' string for the conjuction 'but'") {
                    let emptyBut = listWithElements(empty, conjunction: "but")
                    
                    expect(emptyBut).to(match(unknownConjunction))
                }
            }
            
            describe("when the array parameter contains one object") {
                it("should return just the object for valid conjuctions") {
                    expect(listWithElements(han, conjunction: and)).to(match("solo"))
                    expect(listWithElements(han, conjunction: amp)).to(match("solo"))
                    expect(listWithElements(han, conjunction: or)).to(match("solo"))
                }
                
                it("should return an 'unknown conjuction' message for the conjunction 'nah'") {
                    let hanNah = listWithElements(han, conjunction: "nah")
                    
                    expect(hanNah).to(match(unknownConjunction))
                }
            }
            
            describe("when the array parameter contains two objects") {
                it("should return a string with two objects joined by the conjuction 'and'") {
                    let thisAndThat = listWithElements(thisThat, conjunction: and)
                    
                    expect(thisAndThat).to(match("this and that"))
                }
                
                it("should return a string with two objects joined by the conjuction '&'") {
                    let thisAmpThat = listWithElements(thisThat, conjunction: amp)
                    
                    expect(thisAmpThat).to(match("this & that"))
                }

                it("should return a string with two objects joined by the conjuction 'or'") {
                    let thisOrThat = listWithElements(thisThat, conjunction: or)
                    
                    expect(thisOrThat).to(match("this or that"))
                }
                
                it("should return an 'unknown conjuction' message for the conjunction 'asdf'") {
                    let thisAsdfThat = listWithElements(thisThat, conjunction: "asdf")
                    
                    expect(thisAsdfThat).to(match(unknownConjunction))
                }
            }

            describe("when the array parameter contains three objects") {
                it("should return a string with three objects in a comma-separated list with the conjunction 'and'") {
                    let firstPersonAnd = listWithElements(firstPerson, conjunction: and)
                    
                    expect(firstPersonAnd).to(match("me, myself, and I"))
                }
                
                it("should return a string with three objects in a comma-separated list with the conjunction '&'") {
                    let firstPersonAmp = listWithElements(firstPerson, conjunction: amp)
                    
                    expect(firstPersonAmp).to(match("me, myself, & I"))
                }

                it("should return a string with three objects in a comma-separated list with the conjunction 'or'") {
                    let firstPersonOr = listWithElements(firstPerson, conjunction: or)
                    
                    expect(firstPersonOr).to(match("me, myself, or I"))
                }

                it("should return an 'unknown conjuction' message for the conjunction 'narf'") {
                    let firstPersonNarf = listWithElements(thisThat, conjunction: "narf")
                    
                    expect(firstPersonNarf).to(match(unknownConjunction))
                }
            }
            
            describe("when the array parameter contains more than three objects") {
                it("should return a string with all of the objects in a comma-separated list with the conjunction 'and'") {
                    let instructorsAnd = listWithElements(instructors, conjunction: and)
                    let expected = "Joe, Tim, Jim, Tom, and Mark"
                    
                    expect(instructorsAnd).to(match(expected))
                }
                
                it("should return a string with all of the objects in a comma-separated list with the conjunction '&'") {
                    let instructorsAmp = listWithElements(instructors, conjunction: amp)
                    let expected = "Joe, Tim, Jim, Tom, & Mark"
                    
                    expect(instructorsAmp).to(match(expected))
                }

                it("should return a string with all of the objects in a comma-separated list with the conjunction 'or'") {
                    let instructorsOr = listWithElements(instructors, conjunction: or)
                    let expected = "Joe, Tim, Jim, Tom, or Mark"
                    
                    expect(instructorsOr).to(match(expected))
                }

                it("should return an 'unknown conjunction' message for the conjunction 'neither'") {
                    let instructorsNeither = listWithElements(instructors, conjunction: "neither")
                    
                    expect(instructorsNeither).to(match(unknownConjunction))
                }
            }
        }
    }
}

