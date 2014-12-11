//
//  FISTriviaSpec.swift
//  swift-LocationTrivia-Objects
//
//  Created by Zachary Drossman on 10/14/14.
//  Copyright (c) 2014 Zachary Drossman. All rights reserved.
//

import Quick
import Nimble
import swift_LocationTrivia_Objects

class FISTriviaSpec: QuickSpec {
    override func spec() {
        
        describe("FISTrivia") {
            var trivia : FISTrivia = FISTrivia(content: "This is the content", likes: 0)
           
            describe("properties") {
                it("should have a content NSString property") {

                    trivia.content = "ASDF"
                    var tempString : String = ""
                    expect(trivia.content).to(beAKindOf(object_getClass(tempString)))
                    expect(trivia.content).to(equal("ASDF"))
                }
                
                it("should have a likes NSInteger property") {

                    trivia.likes=5;
                    expect(trivia.likes).to(equal(5))
                    
                }
            }
            
            describe("init(content:likes:) function") {
                
                var initTrivia: FISTrivia = FISTrivia(content: "Joe is amazing", likes: 5)
                
                it("Should initialize content correctly") {
                    expect(initTrivia.content).to(equal("Joe is amazing"))
                }
                
                it("Should initialize likes correctly") {
                    expect(initTrivia.likes).to(equal(5))
                }
                
            }
            
            describe("default convenience initializer") {
                var initTrivia: FISTrivia = FISTrivia()
                
                it("Should initialize content correctly") {
                expect(initTrivia.content).to(equal(""))
                }
                
                it("should initialize likes correctly") {
                    expect(initTrivia.likes).to(equal(0))
                }
                
                
            }
            
        }
    }
}
