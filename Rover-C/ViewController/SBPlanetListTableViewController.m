#import "SBPlanetListTableViewController.h"
#import "SBPlanetController.h"
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
    cell.imageView.image = [UIImage imageNamed:planet.imageName];
    
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
