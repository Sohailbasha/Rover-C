#import <Foundation/Foundation.h>

@interface PlanetController : NSObject

-(instancetype)initWithName:(NSString *)name
                           :(NSInteger)diameter
                           :(float)dayLength
                           :(float)millionKMsFromSun;


@property(readonly)NSString *name;
@property(readonly)NSString *imageName;
@property(readonly)NSInteger diameter;
@property(readonly)float dayLength;
@property(readonly)float millionKMsFromSun;

@end
