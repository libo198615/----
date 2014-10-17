//
//  Vertex.h
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

/* 顶点 */
@interface Vertex : NSObject <Mark, NSCopying>//最高点 定点

@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;

- (id)initWithLocation:(CGPoint )aLocation;
/* 任何实现了<Mark>协议的 id 都可以作为参数 */
- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (id<Mark>)childMrkAtIndex:(NSUInteger)index;


/* NSObject型的接收器收到copy消息时，NSObject会依次向其采用了NSCopying协议的子类转发消息 */
- (id)copyWithZone:(NSZone *)zone;

- (void)drawWithContext:(CGContextRef )context;

@end
