//
//  Character.m
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "Character.h"

@implementation Character

- (id)init{
    if (self = [super init]) {
        self.protection = 1.0;
        self.power = 1.0;
        self.strength = 1.0;
        self.stamina = 1.0;
        self.intelligence = 1.0;
        self.agility = 1.0;
        self.aggressiveness = 1.0;
    }
    return self;
}

@end
