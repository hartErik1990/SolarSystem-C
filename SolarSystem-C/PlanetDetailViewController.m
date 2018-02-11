//
//  PlanetDetailViewController.m
//  SolarSystem-C
//
//  Created by Erik HARTLEY on 2/10/18.
//  Copyright © 2018 Erik HARTLEY. All rights reserved.
//

#import "PlanetDetailViewController.h"
#import "Planet.h"

@interface PlanetDetailViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *planetImageView;
@property (nonatomic , weak) IBOutlet UILabel *diameterlabel;
@property (nonatomic , weak) IBOutlet UILabel *distanceLabel;
@property (nonatomic , weak) IBOutlet UILabel *lengthLabel;

@end

@implementation PlanetDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWithPlanet:self.planet];
    // Do any additional setup after loading the view.
}

- (void)updateWithPlanet:(Planet *)planet
{
    self.title = planet.name;
    self.planetImageView.image = [UIImage imageNamed:planet.imageName];
    self.diameterlabel.text = [NSString stringWithFormat:@"%@", @(planet.diameter)];
    self.distanceLabel.text = [NSString stringWithFormat:@"%@ 10^6km", @(planet.millionsKMsFromSun)];
    self.lengthLabel.text = [NSString stringWithFormat:@"%@ hours", @(planet.dayLength)];
}

- (void)setPlanet:(Planet *)planet
{
    _planet = planet;
    [self updateWithPlanet:planet];
}
@end
















