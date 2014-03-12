//
//  StandardCaracterBuilder.h
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "CharacterBuilder.h"

@interface StandardCaracterBuilder : CharacterBuilder




- (CharacterBuilder *)buildStrength:(float )value;
- (CharacterBuilder *)buildStamina:(float )value;
- (CharacterBuilder *)buildIntelligence:(float )value;
- (CharacterBuilder *)buildAgility:(float )value;
- (CharacterBuilder *)buildAggressiveness:(float )value;


@end
