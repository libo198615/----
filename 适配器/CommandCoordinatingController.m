//
//  CoordinatingController.m
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "CommandCoordinatingController.h"

@implementation CommandCoordinatingController


- (void)requestViewChangeByObject:(id)object{
    if ([object isKindOfClass:[UIBarButtonItem class]]) {
        switch ([(UIBarButtonItem *)object tag]) {
            case ButtonTagOpenPaletteView:
            {
                CommandPaletteViewController *controller = [[CommandPaletteViewController alloc] init];
                [_canvasViewController presentViewController:controller animated:YES completion:^{
                    
                }];
                _activeViewController = controller;
            }
                break;
            case ButtonTagOpenThumbnailView:
            {
                CommandThumbnailViewController *controller = [[CommandThumbnailViewController alloc] init];
                [_canvasViewController presentViewController:controller animated:YES completion:^{
                    
                }];
                _activeViewController = controller;
            }
                break;
            case ButtonTagDone:
            {
                [_canvasViewController dismissViewControllerAnimated:YES completion:^{
                    
                }];
                _activeViewController = _canvasViewController;
            }
                break;
            default:
            {
                [_canvasViewController dismissViewControllerAnimated:YES completion:^{
                    
                }];
                _activeViewController = _canvasViewController;
            }
                break;
        }
    }else{
        [_canvasViewController dismissViewControllerAnimated:YES completion:^{
            
        }];
        _activeViewController = _canvasViewController;
    }
}


@end
