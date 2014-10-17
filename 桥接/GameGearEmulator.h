//
//  GameGearEmulator.h
//  test
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "ConsoleEmulator.h"

@interface GameGearEmulator : ConsoleEmulator

- (void)loadInstructionsForCommand:(ConsoleCommand)command;
- (void)executeInstructions;

@end
