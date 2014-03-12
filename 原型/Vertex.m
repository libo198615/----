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



- (id)copyWithZone:(NSZone *)zone{
    // [self class] 子类可以复用这个复制方法
    // [vertex alloc] 子类只会返回vertex而不是他的实际类型的副本
    Vertex *vertexCopy = [[[self class] allocWithZone:zone] initWithLocation:self.location];
    return vertexCopy;
}


@end
