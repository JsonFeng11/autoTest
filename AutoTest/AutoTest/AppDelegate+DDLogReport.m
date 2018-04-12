//
//  AppDelegate+DDLogReport.m
//  AutoTest
//
//  Created by fdd on 2018/3/13.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import "AppDelegate+DDLogReport.h"
#import <objc/message.h>
#import "NSObject+Analyse.h"

void analyseLog(id self, SEL _cmd, NSMutableDictionary *params) {
    
    NSLog(@"动态添加了一个方法 %@", params);
}

@implementation AppDelegate (DDLogReport)

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    
    if (sel == NSSelectorFromString(@"analyseLog")) {
        // 注意:这里需要强转成IMP类型
        class_addMethod(self, sel, (IMP)analyseLog, "v@:@");
        return YES;
    }
    // 先恢复, 不然会覆盖系统的方法
    return [super resolveInstanceMethod:sel];
}
@end
