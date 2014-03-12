//
//  SetStrokeColorCommand.h
//  test
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "Command.h"
@class SetStrokeColorCommand;

@protocol SetStroketDelegate <NSObject>

- (void)command:(SetStrokeColorCommand *)command number:(CGFloat *)nmber;

@end


@interface SetStrokeColorCommand : Command


@property (nonatomic, assign) id <SetStroketDelegate> delegate;

@end
