#import "SBPlanetDetailViewController.h"
#import "SBPlanet.h"

@interface SBPlanetDetailViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation SBPlanetDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.prefersLargeTitles = NO;
    self.navigationController.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeNever;
    [self updateSelfWithPlanet:self.planet];
}


-(void)updateSelfWithPlanet:(SBPlanet *)planet
{
    self.title = planet.name;
    self.imageView.image = [UIImage imageNamed:planet.imageName];
}

-(void)setPlanet:(SBPlanet *)planet
{
    if(planet != _planet) {
        [self updateSelfWithPlanet:planet];
    }
}

@end
