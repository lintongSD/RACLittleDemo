//
//  ChangeViewModel.m
//  RACTestDemo
//
//  Created by 全速 on 2018/3/25.
//  Copyright © 2018年 lin-tong. All rights reserved.
//

#import "ChangeViewModel.h"

@implementation ChangeViewModel


//初始化信号
- (RACSubject *)changeSubject{
    if (!_changeSubject) {
        _changeSubject = [RACSubject subject];
    }
    return _changeSubject;
}

@end
