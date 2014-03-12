//
//  SetStrokeColorCommand.m
//  test
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "SetStrokeColorCommand.h"

@implementation SetStrokeColorCommand


- (void)execute{
    CGFloat num = 0;
    [_delegate command:self number:&num];
    NSLog(@"%f",num);
}


@end
