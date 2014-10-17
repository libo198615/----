//
//  CommandSlider.h
//  设计模式
//
//  Created by libo on 14-10-16.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Command.h"

@interface CommandSlider : UISlider

@property (nonatomic, strong) Command *command;

@end
