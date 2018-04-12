//
//  NSMutableDictionary+DDClassMsg.m
//  AutoTest
//
//  Created by fdd on 2018/3/13.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import "NSMutableDictionary+DDClassMsg.h"
static const void *tagKey = &tagKey;

@implementation NSMutableDictionary (DDClassMsg)
- (void)getFuns {
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
