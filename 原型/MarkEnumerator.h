//
//  MarkEnumerator.h
//  设计模式
//
//  Created by libo on 14/10/17.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"
#import "NSMutableArray+Stack.h"

@interface MarkEnumerator : NSEnumerator

@property (nonatomic, strong) NSMutableArray *stack;

/* 重载父类方法 */
- (NSArray *)allObjects;
- (id)nextObject;

- (id)initWithMark:(id <Mark>)mark;
- (void)traverseAndBuildStackWithMark:(id <Mark>)mark;

@end
