#import "SBPlanetDetailViewController.h"
#import "SBPlanet.h"

@interface SBPlanetDetailViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *distanceFromSunLabel;
@property (strong, nonatomic) IBOutlet UILabel *diameterLabel;
@property (strong, nonatomic) IBOutlet UILabel *dayLengthLabel;

@end

@implementation SBPlanetDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.prefersLargeTitles = NO;
    self.navigationController.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeNever;
    [self updateSelfWithPlanet:self.planet];
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
}

-(void)updateSelfWithPlanet:(SBPlanet *)planet
{
    self.title = planet.name;
    self.imageView.image = [UIImage imageNamed:planet.imageName];
    self.distanceFromSunLabel.text = [NSString stringWithFormat:@"%@ ^10km", @(planet.millionKMsFromSun)];
    self.diameterLabel.text = [NSString stringWithFormat:@"%@", @(planet.diameter)];
    self.dayLengthLabel.text = [NSString stringWithFormat:@"%@ hours", @(planet.dayLength)];
}

-(void)setPlanet:(SBPlanet *)planet
{
    if(planet != _planet) {
        _planet = planet;/// IMPORTANT stats as nil.
        [self updateSelfWithPlanet:planet];
    }
}

@end
