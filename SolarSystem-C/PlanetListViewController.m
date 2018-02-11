//
//  PlanetListViewController.m
//  SolarSystem-C
//
//  Created by Erik HARTLEY on 2/10/18.
//  Copyright © 2018 Erik HARTLEY. All rights reserved.
//

#import "PlanetListViewController.h"
#import "PlanetController.h"
#import "Planet.h"
#import "PlanetDetailViewController.h"

@interface PlanetListViewController ()

@end

@implementation PlanetListViewController

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete implementation, return the number of rows
    return [[PlanetController planets] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"planetCell" forIndexPath:indexPath];
    
    Planet *planet = [PlanetController planets][indexPath.row];
    
    cell.textLabel.text = planet.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Planet %@", @(indexPath.row + 1)];
    cell.imageView.contentMode = UIViewContentModeScaleAspectFill;
    cell.imageView.image = [UIImage imageNamed:planet.imageName];
    
    return cell;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toPlanetDetail"]) {
        PlanetDetailViewController *detailViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Planet *planet = [PlanetController planets][indexPath.row];
        detailViewController.planet = planet;
    }
}


@end


















