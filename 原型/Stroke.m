//
//  Stroke.m
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke


- (id)init{
    if (self = [super init]) {
        self.children = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}


- (CGPoint)location{
    //返回第一个子节点的位置
    if ([self.children count]>0) {
        //return (id<Mark>)[[self.children objectAtIndex:0] location];
    }
    
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark{
    [self.children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark{
    if ([self.children containsObject:mark]) {
        [self.children removeObject:mark];
    }else{
        [self.children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMrkAtIndex:(NSUInteger)index{
    if (index >= self.children.count) {
        return nil;
    }
    return [self.children objectAtIndex:index];
}

- (id)copyWithZone:(NSZone *)zone{
    Stroke *strokeCopy = [[[self class] allocWithZone:zone] init];
    //复制color
    [strokeCopy setColor:[UIColor colorWithCGColor:[self.color CGColor]]];
    //复制size
    [strokeCopy setSize:self.size];
    //复制children
    for (id <Mark> child in self.children) {
        id <Mark> childCopy = [child copy];
        [strokeCopy addMark:childCopy];
    }
    return strokeCopy;
}





@end
