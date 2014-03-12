//
//  Dot.m
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "Dot.h"

@implementation Dot


- (id)copyWithZone:(NSZone *)zone{
    Dot *dotCopy = [[[self class] allocWithZone:zone] initWithLocation:self.location];
    [dotCopy setColor:[UIColor colorWithCGColor:[self.color CGColor]]];
    [dotCopy setSize:self.size];
    return dotCopy;
}


@end
