//
//  TestBuilder.h
//  AutoTest
//
//  Created by fdd on 2018/1/29.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestBuilder : NSObject

+ (instancetype)sharedManager;

- (void)test01;
+ (void)start;
@end
