//
//  ConsoleController.h
//  test
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleEmulator.h"

@interface ConsoleController : NSObject



@property (nonatomic, strong) ConsoleEmulator *emulator;

- (void)setCommand:(ConsoleCommand)command;


@end
