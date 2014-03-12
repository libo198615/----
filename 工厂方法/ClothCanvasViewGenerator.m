//
//  ClothCanvasViewGenerator.m
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"

@implementation ClothCanvasViewGenerator


- (UIView *)canvasViewWithFrame:(CGRect )aFrame{
    return [[ClothCanvasView alloc] initWithFrame:aFrame];
}


@end
