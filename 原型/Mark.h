//
//  Mark.h
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Mark <NSObject>


@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;

/* mark协议采用了NSObject协议， NSObjection协议没有声明copy方法 */
- (id)copy;
- (void)addMark:(id<Mark>) mark;
- (void)removeMark:(id<Mark>)mark;
- (id <Mark>)childMrkAtIndex:(NSUInteger )index;


@end
