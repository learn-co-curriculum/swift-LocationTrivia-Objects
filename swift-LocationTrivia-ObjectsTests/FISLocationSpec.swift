import Quick
import Nimble
import swift_LocationTrivia_Objects

class FISLocationSpec: QuickSpec {
    override func spec() {

        describe("FISLocation") {
        
            let location : FISLocation = FISLocation(name: "Da Name", latitude: 4.0, longitude: 5.0)
            
            describe("properties") {
                
                it("should have a name property") {
                        expect(location.name).to(equal("Da Name"))
                }
                
                it("should have a latitude property") {
                    expect(location.latitude).to(equal(4.0))
                }
                
                it("should have a longitude property") {
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
                
                let initLocation = FISLocation()
                
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
                    
                    let loc: FISLocation = FISLocation(name: "Empire State Building", latitude: 40.7484, longitude: -73.9857)
                    
                    expect(loc.verifyLocation()).to(beTruthy())
                }
                
                it("Should return NO for invalid latitude") {
                    let loc: FISLocation = FISLocation(name: "Empire State Building", latitude: 140.7484, longitude: -73.9857)
               
                    expect(loc.verifyLocation()).to(beFalsy());
                }
                
                it("Should return NO for invalid longitude") {
                    let loc: FISLocation = FISLocation(name: "Empire State Building", latitude: 40.7484, longitude: -1173.9857)
                    expect(loc.verifyLocation()).to(beFalsy());
                }
                
                it("Should return NO for invalid name") {
                    let loc: FISLocation = FISLocation(name: "", latitude: 140.7484, longitude: -73.9857)
                    expect(loc.verifyLocation()).to(beFalsy());
                }
                
            }
            
            describe("shorten location name") {

                it("should shorten location name to 5 characters") {
                    let shortenedName = location.shortenedNameToLength(5)
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
