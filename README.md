

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

 2. Create an initializer that takes in the three properties and assigns them correctly. 
 
 3. Create a `shortenLocationName` method in your `FISLocation` class.
 
 4. Create a `getLocationNamesWithLocations` method that takes an Array of `FISLocation` objects and just return their names. This should be a class function.
 
 5. Create a `verifyLocation` method to be an instance method for `FISLocation` that ensures the location name is not blank (i.e. `""`), and the location latitude and longitude are both possible (remember there are limits on the range of latitude and longitude!)
 
 6. Create a `searchForLocationName:inLocations:` method to search an Array of `FISLocation` objects.
 
 7. Create a new class called `FISTrivia`. This class should have the following properties:

    ```swift
    var content : String
	var likes : Int
	```

 8. Create an initializer for `FISTrivia` that takes an argument for all of the properties and sets them appropriately

 9. Add an `Array` property to `FISLocation` to hold trivia items

 10. Write a method called `topTrivia` that returns the trivia item with the most likes.Assume this method will always return something, even if there are no trivia items for a location. (i.e. a placeholder trivia with placeholder content and zero likes.)

 ##Hints

There are some global functions in swift that may be helpful to creating these classes. These are:

* `advance()`
* `countElements()`

Additionally, strings work differently in Swift than they do in Objective-C. Consider doing some reading so you understand how they are constructed.
<a href='https://learn.co/lessons/swift-LocationTrivia-Objects' data-visibility='hidden'>View this lesson on Learn.co</a>
