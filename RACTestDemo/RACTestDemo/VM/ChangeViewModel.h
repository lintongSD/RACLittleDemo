//
//  ChangeViewModel.h
//  RACTestDemo
//
//  Created by 全速 on 2018/3/25.
//  Copyright © 2018年 lin-tong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveObjC.h>
@interface ChangeViewModel : NSObject

//VM中大多用RACSubject和RACCommand,其它的还没用到过
@property (strong, nonatomic) RACSubject *changeSubject;

@end
