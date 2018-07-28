#import "SBPlanet.h"

@implementation SBPlanet

-(instancetype)initWithName:(NSString *)name
                   diameter:(NSInteger)diameter
                  dayLength:(float)dayLength
            distanceFromSun:(float)millionKMsFromSun
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

-(void)setName:(NSString *)name
{
    _imageName = [name lowercaseString];
}

@end
