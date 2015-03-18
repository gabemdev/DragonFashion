//
//  HomeViewController.m
//  DragonFashion
//
//  Created by Rockstar. on 3/17/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "HomeViewController.h"
#import "Dragon.h"
#import "ClothingViewController.h"

@interface HomeViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *dragons;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Dragon *dragonOne = [[Dragon alloc] initWithFullName:@"Smaug" andClothingItem:@"High Heels"];
    Dragon *dragonTwo = [[Dragon alloc] initWithFullName:@"Spyro" andClothingItem:@"Firefly"];
    Dragon *dragonThree = [[Dragon alloc] initWithFullName:@"Trogdor" andClothingItem:@"Thatched Roof Cottages"];
    Dragon *dragonFour = [[Dragon alloc] initWithFullName:@"Ben" andClothingItem:@"Beard"];

    self.dragons = @[dragonOne, dragonTwo, dragonThree, dragonFour];

    for (Dragon *dragon in self.dragons) {
        NSLog(@"%@", dragon.fullName);
    }

    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DragonCell"];
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    cell.textLabel.text = dragon.fullName;
    cell.detailTextLabel.text = dragon.signatureClothingItem;

    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)cell {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    ClothingViewController *vc = segue.destinationViewController;
    vc.dragon = dragon;
    vc.title = dragon.fullName;

}

@end
