#import "SBPlanetDetailViewController.h"
#import "SBPlanet.h"

@interface SBPlanetDetailViewController ()

@end

@implementation SBPlanetDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.prefersLargeTitles = NO;
    self.navigationController.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeNever;
    
    self.title = _planet.name;
}



@end
