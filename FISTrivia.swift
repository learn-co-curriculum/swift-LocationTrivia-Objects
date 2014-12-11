//
//  FISTrivia.swift
//  locationTrivia-Objects
//
//  Created by Zachary Drossman on 10/13/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

import UIKit

public class FISTrivia: NSObject {
    var content: String
    var likes: Int
    
    init (content: String, likes: Int)
    {
        self.content = content;
        self.likes = likes;
    }
    
}
