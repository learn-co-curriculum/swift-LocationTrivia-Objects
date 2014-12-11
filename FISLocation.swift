//
//  FISLocation.swift
//  locationTrivia-Objects
//
//  Created by Zachary Drossman on 10/13/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

import UIKit

//Does this need to be a subclass of NSObject?

class FISLocation: NSObject {
    
    //properties and local variables are declared / defined the same way in swift
    //explicit vs. implicit declaration ("exceedingly obvious")
    //Double vs. Float
    //No @ symbols necessary any longer
    //New syntax for arrays and dictionaries that makes them type-safe
    
    var name: String
    var latitude: Double
    var longitude: Double
    var trivia: [FISTrivia] = []

    //our initializer
    init(name: String, latitude: Double, longitude: Double)
    {
        self.latitude = latitude
        self.longitude = longitude
        self.name = name
    }
    
    convenience override init() {
        self.init(name:"", latitude:0.0, longitude: 0.0)
    }
    
    func shortenedNameToLength(length: Int) -> String
    {
        if length < 0
        {
            return self.name
        }
        
        let substringIndex:String.Index = advance(self.name.startIndex, 5)
        
        return name.substringToIndex(substringIndex)
    }
    
    func verifyLocation() -> Bool
    {
        
        let validLatitude : Bool = latitude >= -90 && latitude <= 90
        let validLongitude : Bool = longitude >= -180 && longitude <= 180
        
        if countElements(self.name) > 0 && validLongitude && validLatitude
        {
            return true;
        }
        
        return false;
    }
    
    func topTrivia() -> FISTrivia
    {
        if self.trivia.count == 0
        {
            var placeholderTrivia = FISTrivia(content: "This is a placeholder.", likes: 0)
            return placeholderTrivia
        }
        
        var topTrivia : FISTrivia = self.trivia[0]
        for trivium in self.trivia
        {
            if topTrivia.likes < trivium.likes
            {
                topTrivia = trivium
            }
        }
        
        return topTrivia
    }
}
