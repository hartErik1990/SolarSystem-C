//
//  Planet.h
//  SolarSystem-C
//
//  Created by Erik HARTLEY on 2/10/18.
//  Copyright © 2018 Erik HARTLEY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Planet : NSObject

- (instancetype)initWithName:(NSString *)name diameter:(NSInteger)diameter dayLength:(float)dayLength millionKMsFromSun:(float)millionMKsFromSun;

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *imageName;
@property (nonatomic, readonly) NSInteger diameter;
@property (nonatomic, readonly) float dayLength;
@property (nonatomic, readonly) float millionsKMsFromSun;


@end
