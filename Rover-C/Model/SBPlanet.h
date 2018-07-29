#import <Foundation/Foundation.h>

@interface SBPlanet : NSObject

-(instancetype)initWithName:(NSString *)name
                   diameter:(NSInteger)diameter
                  dayLength:(NSInteger)dayLength
            distanceFromSun:(float)millionKMsFromSun;


@property(nonatomic, copy, readonly)NSString *name;
@property(nonatomic, copy, readonly)NSString *imageName;
@property(nonatomic, readonly)NSInteger diameter;
@property(nonatomic, readonly)float dayLength;
@property(nonatomic, readonly)float millionKMsFromSun;

@end
