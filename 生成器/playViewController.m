//
//  playViewController.m
//  设计模式
//
//  Created by libo on 14-10-15.
//  Copyright (c) 2014年 Lowoo. All rights reserved.
//

#import "playViewController.h"
#import "ChasingGame.h"

@interface playViewController ()

@end

@implementation playViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CharacterBuilder *characterBuilder = [[StandardCaracterBuilder alloc] init];
    ChasingGame *game = [[ChasingGame alloc] init];
    
    Character *player = [game createPlayer:characterBuilder];
    Character *enemy = [game createEnemy:characterBuilder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
