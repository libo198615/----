//
//  PaletteViewController.m
//  设计模式
//
//  Created by libo on 14-3-6.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "CommandPaletteViewController.h"
#import "SetStrokeColorCommand.h"

@interface CommandPaletteViewController () <SetStroketDelegate>

@end

@implementation CommandPaletteViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [_redSlider addTarget:self
                   action:@selector(commandSliderValueChanged:)
         forControlEvents:UIControlEventValueChanged];
    
    SetStrokeColorCommand *colorCommand = [[SetStrokeColorCommand alloc] init];
    [colorCommand setRgbValuesProider:^(CGFloat *red, CGFloat *green, CGFloat *blue){
        *red = [_redSlider value];
        *green = [_greenSlider value];
        *blue = [_blueSlider value];
    }];
}

- (void)command:(SetStrokeColorCommand *)command didRequestColorComponentsForRed:(CGFloat *)red green:(CGFloat *)green blue:(CGFloat *)blue{
    *red = [_redSlider value];
    *green = [_greenSlider value];
    *blue = [_blueSlider value];
}

- (void)command:(SetStrokeColorCommand *)command didFinishColorUpdateWithColor:(UIColor *)color{
    [self.view setBackgroundColor:color];
}


- (void)commandSliderValueChanged:(CommandSlider *)slider{
    [[slider command] execute];
}





@end
