//
//  FISTrivia.swift
//  locationTrivia-Objects
//
//  Created by Zachary Drossman on 10/13/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

import UIKit

class FISTrivia: NSObject {
    var content : String = ""
    var likes : Int = 0
    
    init (content : String, likes : Int)
    {
        self.content = content;
        self.likes = likes;
    }
}
