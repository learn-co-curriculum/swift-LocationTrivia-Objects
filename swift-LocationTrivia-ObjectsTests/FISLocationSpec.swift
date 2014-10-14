import Quick
import Nimble

class FISLocationSpec: QuickSpec {
    override func spec() {

        describe("FISLocation") {
        
            var location : FISLocation?
            
            beforeSuite {
             
                location = FISLocation()
                
            }
            
            describe("properties") {
                
                it("should have a name property") {
                    
                        location!.name = "Da Name"
                        var tempString : String = ""
            
                    expect(location!.name).to(beAKindOf(object_getClass(tempString)))
                    
                        expect(location!.name).to(equal("Da Name"))
                }
                
                it("should have a latitude property") {
                    
                    location!.latitude = 4.0
                    var tempNumber = 10.0
                    expect(location!.latitude).to(beAKindOf(object_getClass(tempNumber)))
                    
                    expect(location!.latitude).to(equal(4.0))
                }
                
                it("should have a longitude property") {

                    location!.longitude = 4.0
                    var tempNumber = 10.0
                    
                    expect(location!.latitude).to(beAKindOf(object_getClass(tempNumber)))
                    
                    expect(location!.latitude).to(equal(4.0))
                }

            }
            
            describe("verify location") {
                
                it("should return YES for a valid location") {
                    
                    var loc: FISLocation = FISLocation()
                    
                    loc.name = "Empire State Building";
                    loc.latitude = 40.7484;
                    loc.longitude = -73.9857;
                    
                    expect(loc.verifyLocation).to(beTruthy())
                }
                
                it("Should return NO for invalid latitude") {
                    var loc: FISLocation = FISLocation()
                    loc.name = "Empire State Building";
                    loc.latitude = 140.7484;
                    loc.longitude = -73.9857;
                    expect(loc.verifyLocation).to(beFalsy());
                }
                
                it("Should return NO for invalid longitude") {
                    var loc: FISLocation = FISLocation()
                    loc.name = "Empire State Building";
                    loc.latitude = 40.7484;
                    loc.longitude = -1173.9857;
                    expect(loc.verifyLocation).to(beFalsy());
                }
                
                it("Should return NO for invalid name") {
                    var loc: FISLocation = FISLocation()
                    loc.name = "";
                    loc.latitude = 40.7484;
                    loc.longitude = -73.9857;
                    expect(loc.verifyLocation).to(beFalsy());
                }
                
            }
            
            describe("shorten location name") {
                
                it("Should return an NSString") {
                    
                    var tempString : String = ""
                    
                    expect(location!.shortenedNameToLength(5)).to(beAKindOf(object_getClass(tempString)))
                }
                
                it("should shorten location name to 5 characters") {
                    var location = FISLocation()
                    location.name = "Statue of Liberty"
                    var shortenedName = location.shortenedNameToLength(5)
                    expect(shortenedName).to(equal("Statu"))
                }
            }
        }
        
        
//            it(@"Should handle negative numbers by returning the same string", ^{
//            NSString *shortenedName =[location shortenedNameToLength:-5];
//            expect(shortenedName).to.equal(location.name);
//            });
//            });

    }
}
