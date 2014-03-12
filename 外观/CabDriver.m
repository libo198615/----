//
//  CabDriver.m
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "CabDriver.h"

@implementation CabDriver


- (void)driveToLocation:(CGPoint)x{
    Taximeter *meter = [[Taximeter alloc] init];
    [meter start];
    
    Car *car = [[Car alloc] init];
    [car releaseBrakes];
    [car changeGears];
    [car pressAccelerator];
    
    
    [car releaseBrakes];
    [car pressAccelerator];
    [meter stop];
}


@end
