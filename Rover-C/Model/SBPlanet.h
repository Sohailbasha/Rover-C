#import <Foundation/Foundation.h>

@interface SBPlanet : NSObject

-(instancetype)initWithName:(NSString *)name;
@property(nonatomic, readonly, strong) NSString *name;

@end
