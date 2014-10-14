//
//  ChasingGame.h
//  设计模式
//
//  追寻
//

#import <Foundation/Foundation.h>
#import "CharacterBuilder.h"
#import "StandardCaracterBuilder.h"

@interface ChasingGame : NSObject



- (Character *)createPlayer:(CharacterBuilder *)builder;

- (Character *)createEnemy:(CharacterBuilder *)builder;


@end
