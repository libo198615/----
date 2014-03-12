//
//  ChasingGame.m
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "ChasingGame.h"

@implementation ChasingGame



- (Character *)createPlayer:(CharacterBuilder *)builder{
    [builder buildNewCharacter];
    [builder buildStrength:5.0];
    [builder buildStrength:25.0];
    
    return [builder character];
}

//客户端使用
- (void)do{

    CharacterBuilder *characterBuilder = [[StandardCaracterBuilder alloc] init];
    ChasingGame *game = [[ChasingGame alloc] init];
    Character *player = [game createPlayer:characterBuilder];
}

@end
