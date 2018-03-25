//
//  ChangeBtn.m
//  RACTestDemo
//
//  Created by 全速 on 2018/3/25.
//  Copyright © 2018年 lin-tong. All rights reserved.
//

#import "ChangeBtn.h"

@implementation ChangeBtn

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
        [self setTitle:@"我要修改Label" forState:UIControlStateNormal];
        
        //RAC在button中的使用
        //RAC中一定要写上 @weakify(self)和@strongify(self)
        @weakify(self)
        [[self rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
            @strongify(self)
            //发送信号
            [self.viewModel.changeSubject sendNext:@"我的地盘听我的"];
        }];
        
//        [self addTarget:self action:@selector(changeLabel) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)changeLabel{
    //调用信号
    [self.viewModel.changeSubject sendNext:@"我的地盘就得听我的"];
}

- (void)setViewModel:(ChangeViewModel *)viewModel{
    _viewModel = viewModel;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
