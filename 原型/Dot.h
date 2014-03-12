//
//  Dot.h
//  设计模式
//
//  Created by libo on 14-3-4.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "Vertex.h"

@interface Dot : Vertex


@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGFloat size;

- (id)copyWithZone:(NSZone *)zone;


@end
