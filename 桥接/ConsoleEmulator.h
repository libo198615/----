//
//  ConsoleEmulator.h
//  test
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kConsoleCommandUp,
    kConsoleCommandDown,
    kConsoleCommandLeft,
    kConsoleCommandRight,
    kConsoleCommandSelect,
    kConsoleCommandStart,
    kConsoleCommandAction1,
    kConsoleCommandAction2,
}ConsoleCommand;

@interface ConsoleEmulator : NSObject


- (void)loadInstructionsForCommand:(ConsoleCommand)command;
- (void)executeInstructions;

@end
