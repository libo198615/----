//
//  NSMutableArray+Stack.h
//  设计模式
//
//  Created by libo on 14/10/17.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Stack)

- (void)push:(id)object;

- (id)pop;

@end
