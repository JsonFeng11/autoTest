//
//  TestBuilder.m
//  AutoTest
//
//  Created by fdd on 2018/1/29.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import "TestBuilder.h"
#import "TestViewController.h"
#import "NSObject+DDClassInfo.h"

@implementation TestBuilder


+ (instancetype)sharedManager
{
    static id _sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[self class] new];
    });
    return _sharedManager;
}
+ (void)start {
    [[self new] test01];
}
- (void)test01 {
    TestViewController *tvc = [[TestViewController alloc] init];
    [tvc initData];
    
    [tvc performSelector:tvc.classInfo.methodInfos[@"printWhoareyou"].sel];
    [tvc performSelector:tvc.classInfo.methodInfos[@"printSumWitha:b:"].sel withObject:@{@"a" : @"20", @"b" : @"30"}];
//    NSLog(@"%@", tvc.classInfo.methodInfos);
}
@end
