#import "RootViewController.h"
#import "HomeViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)loadView {
    [super loadView];
    HomeViewController *homeViewController = [[HomeViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:homeViewController];
    [self addChildViewController:navigationController];
    [self.view addSubview:navigationController.view];
}

@end
