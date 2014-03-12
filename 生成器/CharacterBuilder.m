//
//  CharacterBuilder.m
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "CharacterBuilder.h"

@implementation CharacterBuilder


- (CharacterBuilder *)buildNewCharacter{
    _character = [[Character alloc] init];
    return self;
}

- (CharacterBuilder *)buildStrength:(float)value{
    _character.strength = value;
    return self;
}


@end
