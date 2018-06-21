//
//  ViewController.m
//  CustomPop
//
//  Created by Tomorrow on 2018/6/20.
//  Copyright © 2018年 Tomorrow. All rights reserved.
//

#import "ViewController.h"
#import <ZFModalTransitionAnimator.h>
#import "ModalViewController.h"
@interface ViewController ()
@property BOOL dragable;
@property (nonatomic, strong) ZFModalTransitionAnimator *animator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dragable = YES;
}
- (IBAction)leftAction:(UIButton *)sender {
    ModalViewController *modalVC = [[ModalViewController alloc] init];
    modalVC.modalPresentationStyle = UIModalPresentationCustom;
    
    self.animator = [[ZFModalTransitionAnimator alloc] initWithModalViewController:modalVC];
    self.dragable = NO;
    self.animator.dragable = self.dragable;
    
    self.animator.direction = ZFModalTransitonDirectionLeft;
    modalVC.transitioningDelegate = self.animator;
    [self presentViewController:modalVC animated:YES completion:nil];
}

- (IBAction)RightAction:(UIButton *)sender {
    ModalViewController *modalVC = [[ModalViewController alloc] init];
    modalVC.modalPresentationStyle = UIModalPresentationCustom;
    
    self.animator = [[ZFModalTransitionAnimator alloc] initWithModalViewController:modalVC];
    self.animator.dragable = self.dragable;
    
    self.animator.direction = ZFModalTransitonDirectionRight;
    modalVC.transitioningDelegate = self.animator;
    [self presentViewController:modalVC animated:YES completion:nil];
}

- (IBAction)BottomAction:(UIButton *)sender {
    ModalViewController *modalVC = [[ModalViewController alloc] init];
    modalVC.modalPresentationStyle = UIModalPresentationCustom;
    
    self.animator = [[ZFModalTransitionAnimator alloc] initWithModalViewController:modalVC];
    self.dragable = NO;
    self.animator.dragable = self.dragable;
//    self.animator.bounces = NO;
    
    self.animator.direction = ZFModalTransitonDirectionBottom;
    modalVC.transitioningDelegate = self.animator;
    [self presentViewController:modalVC animated:YES completion:nil];
}

- (IBAction)isPlanBack:(UISwitch *)sender {
    if (sender.on) {
        self.dragable = YES;
    } else {
        self.dragable = NO;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
