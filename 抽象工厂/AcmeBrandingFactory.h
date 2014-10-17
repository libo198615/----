//
//  AcmeBrandingFactory.h
//  设计模式
//
//  Created by libo on 14-10-15.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeToolbar.h"
#import "AcmeMainButton.h"
#import "AcmeView.h"

@interface AcmeBrandingFactory : BrandingFactory

- (UIView *)brandedView;
- (UIButton *)brandedMainButton;
- (UIToolbar *)brandedToolbar;

@end
