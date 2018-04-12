//
//  NSMutableDictionary+DDClassMsg.h
//  AutoTest
//
//  Created by fdd on 2018/3/13.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYClassInfo.h"

@interface NSMutableDictionary (DDClassMsg)
@property (nonatomic, strong) YYClassInfo *classInfo;

- (void)getFuns;
@end
