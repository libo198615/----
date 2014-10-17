//
//  SetStrokeColorCommand.m
//  test
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "SetStrokeColorCommand.h"
#import "CommandCoordinatingController.h"
#import "CommandCanvasViewController.h"

@implementation SetStrokeColorCommand


- (void)execute{
    CGFloat redValue = 0.0;
    CGFloat greenValue = 0.0;
    CGFloat blueValue = 0.0;
    
    /* 从delegate中获取值 */
    [_delegate command:self didRequestColorComponentsForRed:&redValue
                                                      green:&greenValue
                                                       blue:&blueValue];
    /* 根据RGB值创建一个颜色对象 */
    UIColor *color = [UIColor colorWithRed:redValue
                                     green:greenValue
                                      blue:blueValue
                                     alpha:1.0];
    if (_rgbValuesProider) {
        _rgbValuesProider(&redValue, &greenValue, &blueValue);
    }
    /* 把它赋值给当前canvasViewController */
    CommandCoordinatingController *coordinator = [CommandCoordinatingController sharedInstance];
    CommandCanvasViewController *controller = [coordinator canvasViewController];
    [controller setStrokeColor:color];
    /* 转发更新成功消息 */
    [_delegate command:self didFinishColorUpdateWithColor:color];
}


@end
