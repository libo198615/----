//
//  CharacterBuilder.h
//  设计模式
//
//  角色生成器
//

#import <Foundation/Foundation.h>
#import "Character.h"

@interface CharacterBuilder : NSObject{
@protected
    Character *character;//不能用self 存取方法
}

@property (nonatomic, readonly) Character *character;



- (CharacterBuilder *)buildNewCharacter;
- (CharacterBuilder *)buildStrength:(float )value;
- (CharacterBuilder *)buildStamina:(float )value;
- (CharacterBuilder *)buildIntelligence:(float )value;
- (CharacterBuilder *)buildAgility:(float )value;
- (CharacterBuilder *)buildAggressiveness:(float )value;


@end
