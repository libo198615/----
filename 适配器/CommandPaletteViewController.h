//
//  PaletteViewController.h
//  设计模式
//
//  调色板
//

#import <UIKit/UIKit.h>
#import "CommandSlider.h"

@interface CommandPaletteViewController : UIViewController

@property (nonatomic, strong) CommandSlider *redSlider;
@property (nonatomic, strong) CommandSlider *greenSlider;
@property (nonatomic, strong) CommandSlider *blueSlider;

@end
