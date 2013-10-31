#import "HomeViewController.h"
#import "BorderLayoutViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)loadView {
    [super loadView];
    self.title = @"Layout Managers";
}

#pragma mark - UITableViewDataSource/Delegate

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)sectionIndex {
    return @"Standard Managers";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"HomeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.textLabel.text = @"Border Layout";
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    BorderLayoutViewController *borderLayoutViewController = [[BorderLayoutViewController alloc] init];
    [self presentViewController:borderLayoutViewController
                       animated:YES
                     completion:nil];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
