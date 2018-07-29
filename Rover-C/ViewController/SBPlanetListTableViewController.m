#import "SBPlanetListTableViewController.h"
#import "SBPlanetController.h"
#import "SBPlanetDetailViewController.h"
#import "SBPlanet.h"

@interface SBPlanetListTableViewController ()
@property(readonly)NSArray *planets;

@end

@implementation SBPlanetListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Solar System";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    self.navigationController.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeAlways;
    
    [[self tableView] setTableFooterView:[UIView new]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[SBPlanetController planets] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"planetCell" forIndexPath:indexPath];
    
    SBPlanet *planet = [[SBPlanetController planets] objectAtIndex:indexPath.row];
    cell.textLabel.text = planet.name;
    cell.imageView.contentMode = UIViewContentModeScaleAspectFill;
    cell.imageView.image = [UIImage imageNamed:planet.imageName];
    
    return cell;
}



#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"PlanetDetailSegue"]) {
        SBPlanetDetailViewController *detailViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SBPlanet *planet = [SBPlanetController planets][indexPath.row];
        detailViewController.planet = planet;
    }
    
    /*
                            +isEqualToString:@""
    if([segue.identifier  isEqual: @"toPlanetDetail"]) {
        SBPlanetDetailViewController *detailVC = segue.destinationViewController;
        if(detailVC) {
            NSIndexPath *indexPath = [[self tableView] indexPathForSelectedRow];
            if(indexPath) {
                SBPlanet *planet = [[SBPlanetController planets] objectAtIndex:indexPath.row];
                detailVC.planet = planet;
            }
        }
    }
     */
}


@end
