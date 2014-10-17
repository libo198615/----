//
//  AcmeBrandingFactory.m
//  设计模式
//
//  Created by libo on 14-10-15.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "AcmeBrandingFactory.h"

@implementation AcmeBrandingFactory

- (UIView *)brandedView{
    return [[AcmeView alloc] init];
}

- (UIButton *)brandedMainButton{
    return [[AcmeMainButton alloc] init];
}

- (UIToolbar *)brandedToolbar{
    return [[AcmeToolbar alloc] init];
}

@end
