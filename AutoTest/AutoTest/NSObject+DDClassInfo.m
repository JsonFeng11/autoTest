//
//  NSObject+DDClassInfo.m
//  AutoTest
//
//  Created by fdd on 2018/1/29.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import "NSObject+DDClassInfo.h"


@implementation NSObject (DDClassInfo)


- (void)initData {
    NSLog(@"%@", NSStringFromClass([self class]));
    self.classInfo = [YYClassInfo classInfoWithClassName:NSStringFromClass([self class])];
}
- (void)setClassInfo:(YYClassInfo *)classInfo {
    classInfo  = classInfo;
}
@end
