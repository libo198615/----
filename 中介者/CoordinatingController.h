//
//  CoordinatingController.h
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CanvasViewController.h"
#import "PaletteViewController.h"
#import "ThumbnailViewController.h"

typedef enum {
    ButtonTagDone,
    ButtonTagOpenPaletteView,
    ButtonTagOpenThumbnailView
}ButtonTag;

@interface CoordinatingController : NSObject{

@private
    CanvasViewController *canvasViewController;
    UIViewController *activeViewController;
    
}

@property (nonatomic, readonly) CanvasViewController *canvasViewController;
@property (nonatomic, readonly) UIViewController *activeViewController;


+ (CoordinatingController *)sharedInstance;

- (void)requestViewChangeByObject:(id)object;


@end
