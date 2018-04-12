//
//  jisuanqi.m
//  AutoTest
//
//  Created by fdd on 2018/3/19.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import "jisuanqi.h"

@implementation jisuanqi

- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
        
    }
    self.result = 0;
    return self;
}
- (jisuanqi *(^)(NSInteger))add {
    return ^id(NSInteger num) {
        self.result += num;
        return self;
    };
}
- (jisuanqi *(^)(NSInteger))minus {
    return ^id(NSInteger num) {
        self.result -= num;
        return self;
    };
}
- (jisuanqi *(^)(NSInteger))multiply {
    return ^id (NSInteger num) {
        self.result *= num;
        return self;
    };
}
- (jisuanqi *(^)(NSInteger))divide {
    return ^id(NSInteger num) {
        NSAssert(0 != num, @"除数不能为0");
        self.result /= num;
        return self;
    };
}
@end
