//
//  PaperCanvasViewGenerator.m
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"

@implementation PaperCanvasViewGenerator

- (UIView *)canvasViewWithFrame:(CGRect )aFrame{
    return [[PaperCanvasView alloc] initWithFrame:aFrame];
}

@end
