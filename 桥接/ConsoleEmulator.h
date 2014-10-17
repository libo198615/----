//
//  ConsoleEmulator.h
//  test
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleCommands.h"

/* 控制台模拟器 */
@interface ConsoleEmulator : NSObject

- (void)loadInstructionsForCommand:(ConsoleCommand)command;
- (void)executeInstructions;

@end
