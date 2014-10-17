//
//  CanvasViewGenerator.m
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "CanvasViewGenerator.h"

@implementation CanvasViewGenerator


- (CanvasView *)canvasViewWithFrame:(CGRect )aFrame{
    return [[CanvasView alloc] initWithFrame:aFrame];
}


@end
