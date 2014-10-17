//
//  StandardCaracterBuilder.h
//  设计模式
//
//  标准角色生成器
//

#import "CharacterBuilder.h"

/* 具体生成器 */
@interface StandardCaracterBuilder : CharacterBuilder

- (CharacterBuilder *)buildStrength:(float )value;
- (CharacterBuilder *)buildStamina:(float )value;
- (CharacterBuilder *)buildIntelligence:(float )value;
- (CharacterBuilder *)buildAgility:(float )value;
- (CharacterBuilder *)buildAggressiveness:(float )value;


@end
