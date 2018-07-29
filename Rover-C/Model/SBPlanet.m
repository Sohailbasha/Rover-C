#import "SBPlanet.h"

@implementation SBPlanet

-(instancetype)initWithName:(NSString *)name
                   diameter:(NSInteger)diameter
                  dayLength:(NSInteger)dayLength
            distanceFromSun:(float)millionKMsFromSun
{
    self = [super init];
    if (self) {
        _name = name;
        _diameter = diameter;
        _dayLength = dayLength;
        _millionKMsFromSun = millionKMsFromSun;
        _imageName = [name lowercaseString];
    }
    return self;
}


@end
