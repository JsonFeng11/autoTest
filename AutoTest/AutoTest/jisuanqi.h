//
//  jisuanqi.h
//  AutoTest
//
//  Created by fdd on 2018/3/19.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface jisuanqi : NSObject
@property (nonatomic, assign) NSInteger result; // 保存计算结果

// 下面分别定义加、减、乘、除 四个只读的 Block 类型的属性，
// 设为只读是为了限制只实现 getter 方法，防止我们定义好的 Block 内容被外部修改，
// 这里每个 Block 类型的属性携带一个 NSInteger 类型的参数，而其返回值类型为当前 Calculator 类型。
@property (readonly, nonatomic, copy) jisuanqi * (^add)(NSInteger num);
@property (readonly, nonatomic, copy) jisuanqi * (^minus)(NSInteger num);
@property (readonly, nonatomic, copy) jisuanqi * (^multiply)(NSInteger num);
@property (readonly, nonatomic, copy) jisuanqi * (^divide)(NSInteger num);


@end
