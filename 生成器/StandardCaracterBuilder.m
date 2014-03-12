//
//  StandardCaracterBuilder.m
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "StandardCaracterBuilder.h"

@implementation StandardCaracterBuilder


- (CharacterBuilder *)buildStrength:(float)value{
    self.character.protection *= value;
    self.character.power *= value;
    
    return [super buildStrength:value];
}


@end
