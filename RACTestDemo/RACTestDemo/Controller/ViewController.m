//
//  ViewController.m
//  RACTestDemo
//
//  Created by 全速 on 2018/3/25.
//  Copyright © 2018年 lin-tong. All rights reserved.
//

#import "ViewController.h"
#import "ChangeLabel.h"
#import "ChangeBtn.h"
#import "ChangeViewModel.h"

@interface ViewController ()
@property (strong, nonatomic) ChangeViewModel *viewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ChangeLabel *label = [[ChangeLabel alloc] initWithFrame:CGRectMake(50, 200, 300, 50)];
    label.viewModel = self.viewModel;
    [self.view addSubview:label];
    
    
    ChangeBtn *btn = [[ChangeBtn alloc] initWithFrame:CGRectMake(150, 100, 150, 60)];
    btn.viewModel = self.viewModel;
    [self.view addSubview:btn];
}


- (ChangeViewModel *)viewModel{
    if (!_viewModel) {
        _viewModel = [ChangeViewModel new];
    }
    return _viewModel;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
