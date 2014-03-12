//
//  ChasingGame.h
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CharacterBuilder.h"
#import "StandardCaracterBuilder.h"

@interface ChasingGame : NSObject



- (Character *)createPlayer:(CharacterBuilder *)builder;

- (Character *)createEnemy:(CharacterBuilder *)builder;


@end
