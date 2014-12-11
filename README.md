---
tags: objects, collections
languages: swift
---

#Location Trivia Objects

An app to share the different trivia items of life around you. As users walk around NYC they are notified of nearby trivia items. Users are also able to add trivia facts and tag them to any location nearby. Through this app, we can all be a little bit smarter.

## Instructions


Before getting started - key thing - for this lab, you do not need to know / use / understand optionals. If you get messages suggesting you need to add a `?` or `!` to your code though, you do need to know that the compiler / linter thinks you are trying to assign a variable to nil. For this lab, we will not allow any of our objects to ever be nil! (Either initialize a variable when declared or in an initializer.)

 1. First create a new `FISLocation` class, add in the following properties:

 ```swift
 	let name : String
 	var latitude : Double
 	var longitude : Double
 ```

 2. Create a `shortenLocationName` method in your `FISLocation` class.
 3. Create an initializer that takes in the three properties and assigns them correctly.
 4. Create a `getLocationNamesWithLocations` method that takes an Array of `FISLocation` objects and just return their names.
 5. Create a `verifyLocation` method to be an instance method for `FISLocation` and  return `true` or `false` as to whether the `FISLocation` has all of it's properties filled out.
 6. Create a `searchForLocationName:inLocations:` method to search an Array of `FISLocation` objects.
 7. Create a new class called `FISTrivia`. This class should have the following properties:

    ```swift
    var content : String
	var likes : Int
	```

 8. Add an `Array` property to `FISLocation` to hold trivia items

 9. Write a method called `topTrivia` that returns the trivia item with the most likes.Assume this method will always return something, even if there are no trivia items for a location. (i.e. a placeholder trivia with placeholder content and zero likes.)

 10. Create an initializer for `FISTrivia` that takes an argument for all of the properties and sets them appropriately