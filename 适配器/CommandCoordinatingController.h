//
//  CoordinatingController.h
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandCanvasViewController.h"
#import "CommandPaletteViewController.h"
#import "CommandThumbnailViewController.h"

typedef enum {
    ButtonTagDone,
    ButtonTagOpenPaletteView,
    ButtonTagOpenThumbnailView
}ButtonTag;

@interface CommandCoordinatingController : NSObject{

@private
    CommandCanvasViewController *canvasViewController;
    UIViewController *activeViewController;
    
}

@property (nonatomic, readonly) CommandCanvasViewController *canvasViewController;
@property (nonatomic, readonly) UIViewController *activeViewController;


+ (CommandCoordinatingController *)sharedInstance;

- (void)requestViewChangeByObject:(id)object;


@end
