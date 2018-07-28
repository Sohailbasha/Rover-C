#import "SBPlanetController.h"

@implementation SBPlanetController

-(NSArray*)planets
{
  
    SBPlanet *mercury = [[SBPlanet alloc] initWithName:@"Mercury" diameter:4879 dayLength:4222.6 distanceFromSun:57.9];
    SBPlanet *venus = [[SBPlanet alloc] initWithName:@"Venus" diameter:12104 dayLength:2802 distanceFromSun:108.2];
    SBPlanet *earth = [[SBPlanet alloc] initWithName:@"Earth" diameter:12756 dayLength:24 distanceFromSun:149.6];

    SBPlanet *mars = [[SBPlanet alloc] initWithName:@"Mars" diameter:6792 dayLength:24.7 distanceFromSun:227.9];
    
    SBPlanet *jupiter = [[SBPlanet alloc] initWithName:@"Jupiter" diameter:142986 dayLength:9.9 distanceFromSun:778.6];

    SBPlanet *saturn = [[SBPlanet alloc] initWithName:@"Saturn" diameter:120536 dayLength:10.7 distanceFromSun:1433.5];
    SBPlanet *uranus = [[SBPlanet alloc] initWithName:@"Uranus" diameter:51118 dayLength:17.2 distanceFromSun:2872.5];
    SBPlanet *neptune = [[SBPlanet alloc] initWithName:@"Neptune" diameter:49528 dayLength:16.1 distanceFromSun:4495.1];
    SBPlanet *pluto = [[SBPlanet alloc] initWithName:@"Pluto" diameter:2370 dayLength:153.3 distanceFromSun:5906.4];
    
    return @[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto];
}


@end
