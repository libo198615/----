//
//  canvasViewCondtroller.h
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

@interface canvasViewCondtroller : UIViewController


@property (nonatomic, retain) CanvasView *canvasView;


- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator;


@end
