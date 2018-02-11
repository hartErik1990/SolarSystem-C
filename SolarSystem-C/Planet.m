//
//  Planet.m
//  SolarSystem-C
//
//  Created by Erik HARTLEY on 2/10/18.
//  Copyright © 2018 Erik HARTLEY. All rights reserved.
//

#import "Planet.h"

@implementation Planet

- (instancetype)initWithName:(NSString *)name diameter:(NSInteger)diameter dayLength:(float)dayLength millionKMsFromSun:(float)millionMKsFromSun
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _imageName = [name lowercaseString];
        _diameter = diameter;
        _dayLength = dayLength;
        _millionsKMsFromSun = millionMKsFromSun;
    }
    return self;
}



@end
