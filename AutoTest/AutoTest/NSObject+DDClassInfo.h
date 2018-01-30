//
//  NSObject+DDClassInfo.h
//  AutoTest
//
//  Created by fdd on 2018/1/29.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYClassInfo.h"

@interface NSObject (DDClassInfo)

@property (nonatomic, strong) YYClassInfo *classInfo;

- (void)initData;
@end
