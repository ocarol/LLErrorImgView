//
//  ViewController.m
//  ErrorImgViewDemo
//
//  Created by ocarol on 16/1/4.
//  Copyright © 2016年 ocarol. All rights reserved.
//

#import "ViewController.h"
#import "ErrorImgView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *orangeView;
@property (weak, nonatomic) IBOutlet UIView *greenView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)show:(UIButton *)sender {
    [ErrorImgView showErrorImageViewWithEnum:errorImgViewWithNetworkError ImageName:@"noorder" onView:sender.superview];
    
}

- (IBAction)remove:(UIButton *)sender {
    [ErrorImgView removeErrorImageViewFromView:sender.superview];
    
}

-(BOOL)prefersStatusBarHidden {
    return YES;
}
@end
