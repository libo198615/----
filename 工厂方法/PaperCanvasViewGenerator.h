//
//  PaperCanvasViewGenerator.h
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "CanvasViewGenerator.h"
#import "PaperCanvasView.h"
#import "CanvasView.h"

/* 纸质 */
@interface PaperCanvasViewGenerator : CanvasViewGenerator


- (CanvasView *)canvasViewWithFrame:(CGRect )aFrame;

@end
