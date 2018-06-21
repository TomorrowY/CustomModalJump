//
//  ModalViewController.m
//  CustomPop
//
//  Created by Tomorrow on 2018/6/20.
//  Copyright © 2018年 Tomorrow. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *closeBut = [UIButton buttonWithType:UIButtonTypeSystem];
    closeBut.frame = CGRectMake(self.view.frame.size.width - 70, 50, 80, 50);
    [closeBut setTitle:@"返回" forState:UIControlStateNormal];
    [closeBut addTarget:self action:@selector(CloseAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:closeBut];
}

- (void) CloseAction {
    [self dismissViewControllerAnimated:YES completion:nil];
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
