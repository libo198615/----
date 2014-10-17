//
//  CanvasViewGenerator.h
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CanvasView.h"

/* 画布视图生成器 */
@interface CanvasViewGenerator : NSObject

- (CanvasView *)canvasViewWithFrame:(CGRect )aFrame;

@end
