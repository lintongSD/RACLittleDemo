//
//  ChangeLabel.m
//  RACTestDemo
//
//  Created by 全速 on 2018/3/25.
//  Copyright © 2018年 lin-tong. All rights reserved.
//

#import "ChangeLabel.h"

@implementation ChangeLabel

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor orangeColor];
        self.text = @"我就是我,是颜色不一样的烟火...";
    }
    return self;
}

- (void)setViewModel:(ChangeViewModel *)viewModel{
    _viewModel = viewModel;
    
    @weakify(self)
    //订阅信号(我理解的是执行信号)
    [viewModel.changeSubject subscribeNext:^(NSString *x) {
        @strongify(self)
        self.text = x;
    }];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
