//
//  canvasViewCondtroller.m
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "canvasViewCondtroller.h"

@interface canvasViewCondtroller ()

@end

@implementation canvasViewCondtroller

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:defaultGenerator];
}


//用不同的画布 直接调用此方法
- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator{
    [_canvasView removeFromSuperview];
    CGRect aFrame = CGRectMake(0, 0, 0, 0);
    CanvasView *aCanvasView = [generator canvasViewWithFrame:aFrame];
    [self setCanvasView:aCanvasView];
    [self.view addSubview:_canvasView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
