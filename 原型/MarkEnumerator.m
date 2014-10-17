//
//  MarkEnumerator.m
//  设计模式
//
//  Created by libo on 14/10/17.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "MarkEnumerator.h"

@implementation MarkEnumerator

- (NSArray *)allObjects{
    return [[_stack reverseObjectEnumerator] allObjects];
}

- (id)nextObject{
    return [_stack pop];
}


- (id)initWithMark:(id<Mark>)mark{
    if (self = [super init]) {
        _stack = [[NSMutableArray alloc] initWithCapacity:[mark count]];
        [self traverseAndBuildStackWithMark:mark];
    }
    return self;
}

- (void)traverseAndBuildStackWithMark:(id<Mark>)mark{
    if (mark == nil) return;
    
    [_stack push:mark];
    NSUInteger index = [mark count];
    id <Mark> childMark;
    while (childMark == [mark childMrkAtIndex:--index]) {
        [self traverseAndBuildStackWithMark:childMark];
    }
}


@end
