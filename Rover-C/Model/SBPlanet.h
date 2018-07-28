#import <Foundation/Foundation.h>

@interface SBPlanet : NSObject

-(instancetype)initWithName:(NSString *)name
                   diameter:(NSInteger)diameter
                  dayLength:(float)dayLength
            distanceFromSun:(float)millionKMsFromSun;


@property(readonly)NSString *name;
@property(readonly)NSString *imageName;
@property(readonly)NSInteger diameter;
@property(readonly)float dayLength;
@property(readonly)float millionKMsFromSun;

@end
