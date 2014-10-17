//
//  ConsoleCommands.h
//  设计模式
//
//  Created by libo on 14-10-16.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ConsoleCommand) {
    ConsoleCommandUp,
    ConsoleCommandDown,
    ConsoleCommandLeft,
    ConsoleCommandRight,
    ConsoleCommandSelect,
    ConsoleCommandStart,
    ConsoleCommandAction1,
    ConsoleCommandAction2,
};

/* 控制台 */
@interface ConsoleCommands : NSObject

@end
