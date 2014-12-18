import Quick
import Nimble

class FISLocationSpec: QuickSpec {
    override func spec() {

        describe("FISLocation") {
        
            var location : FISLocation = FISLocation(name: "Da Name", latitude: 4.0, longitude: 5.0)
            
            describe("properties") {
                
                it("should have a name property") {
                        var tempString : String = ""
            
                    expect(location.name).to(beAKindOf(object_getClass(tempString)))
                    
                        expect(location.name).to(equal("Da Name"))
                }
                
                it("should have a latitude property") {
                    
                    var tempNumber = 10.0
                    expect(location.latitude).to(beAKindOf(object_getClass(tempNumber)))
                    
                    expect(location.latitude).to(equal(4.0))
                }
                
                it("should have a longitude property") {

                    var tempNumber = 10.0
                    
                    expect(location.longitude).to(beAKindOf(object_getClass(tempNumber)))
                    
                    expect(location.longitude).to(equal(5.0))
                }

            }
            
            describe("init(name:latitude:longitude:) function") {
                
                it("Should initialize content correctly") {
                    expect(location.name).to(equal("Da Name"));
                }
                
                it("Should initialize latitude correctly") {
                    expect(location.latitude).to(equal(4.0));
                }
                
                it("Should initialize longitude correctly") {
                    expect(location.longitude).to(equal(5.0));
                }
                
            }
            
            describe("default convenience initializer") {
                
                var initLocation = FISLocation()
                
                it("Should initialize content correctly") {
                    expect(initLocation.name).to(equal(""));
                }
                
                it("Should initialize latitude correctly") {
                    expect(initLocation.latitude).to(equal(0.0));
                }
                
                it("Should initialize longitude correctly") {
                    expect(initLocation.longitude).to(equal(0.0));
                }

            }
            
            describe("verify location") {

                it("should return YES for a valid location") {
                    
                    var loc: FISLocation = FISLocation(name: "Empire State Building", latitude: 40.7484, longitude: -73.9857)
                    
                    expect(loc.verifyLocation).to(beTruthy())
                }
                
                it("Should return NO for invalid latitude") {
                    var loc: FISLocation = FISLocation(name: "Empire State Building", latitude: 140.7484, longitude: -73.9857)
               
                    expect(loc.verifyLocation).to(beFalsy());
                }
                
                it("Should return NO for invalid longitude") {
                    var loc: FISLocation = FISLocation(name: "Empire State Building", latitude: 40.7484, longitude: -1173.9857)
                    expect(loc.verifyLocation).to(beFalsy());
                }
                
                it("Should return NO for invalid name") {
                    var loc: FISLocation = FISLocation(name: "", latitude: 140.7484, longitude: -73.9857)
                    expect(loc.verifyLocation).to(beFalsy());
                }
                
            }
            
            describe("shorten location name") {
                
                it("Should return an NSString") {
                    
                    var tempString : String = ""
                    
                    expect(location.shortenedNameToLength(5)).to(beAKindOf(object_getClass(tempString)))
                }
                
                it("should shorten location name to 5 characters") {
                    var shortenedName = location.shortenedNameToLength(5)
                    expect(shortenedName).to(equal("Da Na"))
                }
            }
            
            describe("topTrivia") {
                it("Should return the top trivia") {
                    let firstTrivia = FISTrivia(content: "This is some trivia item!", likes: 4)
                    let secondTrivia = FISTrivia(content: "This is some other trivia item!", likes: 2)
                    
                    location.trivia.append(secondTrivia)
                    location.trivia.append(firstTrivia)
                    
                    expect(location.topTrivia()).to(equal(firstTrivia))
                }
            }
        }
    }
}
