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
    [builder buildStrength:50.0];
    [builder buildStamina:25.0];
    [builder buildIntelligence:70.0];
    
    return [builder character];
}

- (Character *)createEnemy:(CharacterBuilder *)builder{
    [builder buildNewCharacter];
    [builder buildStrength:80.0];
    [builder buildStamina:65.0];
    [builder buildIntelligence:35.0];
    
    return [builder character];
}


@end
