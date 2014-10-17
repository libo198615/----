//
//  NSMutableArray+Stack.m
//  设计模式
//
//  Created by libo on 14/10/17.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "NSMutableArray+Stack.h"

@implementation NSMutableArray (Stack)

- (void)push:(id)object{
    [self addObject:object];
}

- (id)pop{
    if (self.count == 0) return 0;
    id object = [self lastObject];
    [self removeLastObject];
    return object;
}

@end
