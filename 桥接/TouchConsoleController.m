//
//  TouchConsoleController.m
//  test
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "TouchConsoleController.h"


@implementation TouchConsoleController

- (void)up{
    [super setCommand:kConsoleCommandUp];
}

- (void)down{
    [super setCommand:kConsoleCommandDown];
}

@end
