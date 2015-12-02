# Swift — Conjunction Function
*What's Your Junction?*

## Objectives

1. Use control flow statements within a function to program dynamic behavior based upon varying input arguments.

## Introduction

Listen to [*Conjunction Junction*](https://youtu.be/RPoBE-E8VOc?t=13s) by [Schoolhouse Rock!](https://en.wikipedia.org/wiki/Schoolhouse_Rock!), performed by [Jack Sheldon](https://en.wikipedia.org/wiki/Jack_Sheldon), Terry Morel, and Mary Sue Berry in 1973.

##### Using a Typed Collection as an Argument

This lab requires that you type a function's argument as an array containing strings. The syntax for this is to wrap the name of the type to be held in the array with square brackets `[` `]`. So to type an argument as an array of type `String`, it would be written as `[String]`. Upcoming lessons will discuss types and typed collections in more detail.

## Instructions

Open `swift-conjunction-function.xcworkspace` and navigate to the `Sandbox.swift` file.

Write a function named `listWithElements(_:conjunction:)` that takes two arguments, an array of strings named `elements` and a string named `conjunction`, and returns a string. The returned string should contain the strings from the `elements` array but organized into a list phrase using the `conjunction` argument. This means that:

1. If the `elements` argument is empty, the function should return an empty string.
2. A single string in the `elements` array should result to just that same string, as in "one".
3. Two strings in the `elements` array should be joined with the `conjunction` argument, as in "one and two".
4. Three or more strings in the `elements` array should be joined with commas (`,`), with the conjunction also joining the last element in the list phrase, as in "one, two, or three".  
**Hint:** *Consider using a* `switch` *statement to detect these different cases.*
5. Acceptable `conjunction` arguments are `"and"`, `"or"`, and "`&"` ("ampersand", a symbol meaning "and"). If the `conjunction` argument does not match one of these three strings, the function should return a string message that reads `"unknown conjunction"`.

If you wish to test your function with your own sample data, call it from the AppDelegate. When the tests in `SandboxSpec.swift` all pass you have completed this lab.
<a href='https://learn.co/lessons/swift-conjunction-function' data-visibility='hidden'>View this lesson on Learn.co</a>
