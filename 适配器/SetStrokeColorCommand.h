//
//  SetStrokeColorCommand.h
//  test
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

/* 起到客户端与适配器之间的合约作用，是目标接口 */

#import "Command.h"
@class SetStrokeColorCommand;


typedef void (^RGBValuesProvider)(CGFloat *red, CGFloat *green, CGFloat *blue);


@protocol SetStroketDelegate <NSObject>

- (void)command:(SetStrokeColorCommand *)command didRequestColorComponentsForRed:(CGFloat *)red
                                                                           green:(CGFloat *)green
                                                                            blue:(CGFloat *)blue;

- (void)command:(SetStrokeColorCommand *)command didFinishColorUpdateWithColor:(UIColor *)color;

@end



@interface SetStrokeColorCommand : Command

@property (nonatomic, assign) id <SetStroketDelegate> delegate;

@property (nonatomic, copy) RGBValuesProvider rgbValuesProider;

- (void)execute;

@end
