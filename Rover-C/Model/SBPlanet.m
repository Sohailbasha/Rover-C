#import "SBPlanet.h"

@implementation SBPlanet

-(instancetype)initWithName:(NSString *)name {
    self = [super init];
    if(self) {
        _name = name;
    }
    return self;
}

@end
