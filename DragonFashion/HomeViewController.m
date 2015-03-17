//
//  HomeViewController.m
//  DragonFashion
//
//  Created by Rockstar. on 3/17/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "HomeViewController.h"
#import "Dragon.h"

@interface HomeViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *dragons;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Dragon *dragonOne = [Dragon new];
    dragonOne.fullName = @"Smaug";
    dragonOne.signatureClothingItem = @"High Heels";
    self.dragons = [NSArray arrayWithObjects:dragonOne, nil];
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

@end
