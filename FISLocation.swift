//
//  FISLocation.swift
//  locationTrivia-Objects
//
//  Created by Zachary Drossman on 10/13/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

import UIKit

class FISLocation: NSObject {
    var name: String = ""
    var latitude: Double = 0
    var longitude: Double = 0
    var trivia: [FISTrivia] = []

    init(_ name: String, latitude: Double, longitude: Double)
    {
        self.latitude = latitude
        self.longitude = longitude
        self.name = name;
    }
    
    func shortenedNameToLength(length: Int) -> String
    {
        if length < 0
        {
            return self.name;
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
    
    func topTrivia() -> FISTrivia?
    {
        if self.trivia.count == 0
        {
            return nil
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
