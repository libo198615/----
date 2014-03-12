//
//  Stroke.h
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Stroke : NSObject<Mark,NSCopying> //线

@property (nonatomic, strong) NSMutableArray *children;

@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;

- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (id <Mark>)childMrkAtIndex:(NSUInteger)index;
- (id)copyWithZone:(NSZone *)zone;



@end
