//
//  NSObject+Analyse.m
//  打点p
//
//  Created by fdd on 2018/3/13.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import "NSObject+Analyse.h"
#import <objc/runtime.h>
#import <objc/message.h>


//void analyseLog(id self, SEL _cmd) {
//
//    NSLog(@"动态添加了一个学习英语的方法");
//}

@implementation NSObject (Analyse)

- (void)setAnalyseParams:(NSMutableDictionary *)analyseParams {
    objc_setAssociatedObject(self, @selector(analyseParams), analyseParams, OBJC_ASSOCIATION_COPY);
    NSLog(@"666 - %@", analyseParams);
    [[AppDelegate new] performSelector:@selector(analyseLog) withObject:analyseParams afterDelay:0];
}
- (NSMutableDictionary *)analyseParams {
   return objc_getAssociatedObject(self, @selector(analyseParams));
}
+ (BOOL)resolveInstanceMethod:(SEL)sel {

//    if (sel == NSSelectorFromString(@"analyseLog")) {
//        // 注意:这里需要强转成IMP类型
//        class_addMethod(self, sel, (IMP)analyseLog, "v@:@");
//        return YES;
//    }
//    // 先恢复, 不然会覆盖系统的方法
    NSLog(@"-----%@", NSStringFromSelector(sel));
    return YES;
    
}

//- (void)analyseLog {
//    NSLog(@"在这里打点");
//}
- (NSInteger)getNum:(NSInteger )count {
    return 20 + count;
}
@end
