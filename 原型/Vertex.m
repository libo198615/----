//
//  Vertex.m
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

- (id)initWithLocation:(CGPoint)aLocation{
    if (self = [super init]) {
        [self setLocation:aLocation];
    }
    return self;
}

/* 默认属性什么也不做 */
- (void)setColor:(UIColor *)color{}
- (UIColor *)color{return nil;}
- (void)setSize:(CGFloat)size{}
- (CGFloat )size{return 0.0;}

/* mark操作什么也不做 */
- (void)addMark:(id<Mark>)mark{}
- (void)removeMark:(id<Mark>)mark{}
- (id <Mark>)childMrkAtIndex:(NSUInteger)index{return nil;}
- (id <Mark>)lastChild{return nil;}
- (NSUInteger )count{return 0;}


- (id)copyWithZone:(NSZone *)zone{
    // [self class] 子类可以复用这个复制方法
    // [vertex alloc] 子类只会返回vertex而不是他的实际类型的副本
    Vertex *vertexCopy = [[[self class] allocWithZone:zone] initWithLocation:self.location];
    return vertexCopy;
}


- (void)drawWithContext:(CGContextRef )context{
    CGFloat x = self.location.x;
    CGFloat y = self.location.y;
    
    CGContextAddLineToPoint(context, x, y);
}


@end
