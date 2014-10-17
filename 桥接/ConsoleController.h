//
//  ConsoleController.h
//
//  整个虚拟控制器类层次的起点。
//
//
//

#import <Foundation/Foundation.h>
#import "ConsoleEmulator.h"
#import "ConsoleCommands.h"

/* 虚拟控制器 */
@interface ConsoleController : NSObject

/* 保持 ConsoleEmulator 实例的一个内部引用 */
@property (nonatomic, strong) ConsoleEmulator *emulator;

/* 使其子类用预先定义的命令类型输入命令 */
- (void)setCommand:(ConsoleCommand)command;


@end
