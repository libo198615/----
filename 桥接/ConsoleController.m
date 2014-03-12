//
//  ConsoleController.m
//  test
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "ConsoleController.h"

@implementation ConsoleController


- (void)setCommand:(ConsoleCommand)command{
    [self.emulator loadInstructionsForCommand:command];
    [self.emulator executeInstructions];
}



@end
