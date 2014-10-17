//
//  BrandingFactory.m
//  设计模式
//
//  Created by libo on 14-10-15.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+ (BrandingFactory *)factory{
#if defined (USE_ACME)
    return [[AcmeBrandingFactory alloc] init];
#elif defined (USE_SIERRA)
    return [[SierraBrandingFactory alloc] init];
#else
    return nil;
#endif
}

- (UIView *)brandedView{
    return nil;
}

- (UIButton *)brandedMainButton{
    return nil;
}

- (UIToolbar *)brandedToolbar{
    return nil;
}

@end
