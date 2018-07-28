#import "PlanetController.h"

@implementation PlanetController

-(instancetype)initWithName:(NSString *)name :(NSInteger)diameter :(float)dayLength :(float)millionKMsFromSun
{
    self = [super init];
    if (self) {
        _name = name;
        _diameter = diameter;
        _dayLength = dayLength;
        _millionKMsFromSun = millionKMsFromSun;
    }
    return self;
}

-(void)setName:(NSString *)name {
    _imageName = [name lowercaseString];
}

@end
