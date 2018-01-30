//
//  NSObject+DDClassInfo.m
//  AutoTest
//
//  Created by fdd on 2018/1/29.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import "NSObject+DDClassInfo.h"

static const void *tagKey = &tagKey;
@implementation NSObject (DDClassInfo)
//@dynamic classInfo;

- (void)initData {
    self.classInfo = [YYClassInfo classInfoWithClass:[self class]];
    NSLog(@"%@", self.classInfo.methodInfos);
}
- (void)setClassInfo:(YYClassInfo *)classInfo {
    objc_setAssociatedObject(self, tagKey, classInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}
- (YYClassInfo *)classInfo {
    return objc_getAssociatedObject(self, tagKey);
}
@end
