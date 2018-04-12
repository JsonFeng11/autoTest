//
//  TestViewController.m
//  AutoTest
//
//  Created by fdd on 2018/1/29.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import "TestViewController.h"
#import "TestBuilder.h"
#import "NSObject+Analyse.h"

@interface TestViewController ()
@property (nonatomic, strong) UIButton *btn;

//@property (nonatomic, copy) NSMutableDictionary *paramsDic;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.btn.backgroundColor = [UIColor redColor];
    self.btn.frame = CGRectMake(100, 100, 100, 100);
    [self.btn addTarget:self action:@selector(printWhoareyou) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:self.btn];
    
    
    //test -- 从app加载完成之后开始自动执行代码
    [TestBuilder start];
#ifdef DEBUG
    NSLog(@"cell recursive description:\n\n%@\n\n",[[[UIApplication sharedApplication] keyWindow] performSelector:@selector(recursiveDescription)]);
    NSLog(@"%@", self.view.subviews);
#endif

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)printSumWitha:(NSInteger )a b:(NSInteger)b {
    NSLog(@"%ld", a + b);
}

- (void)printWhoareyou {
    NSLog(@"i am cici");
    
    self.analyseParams = [NSMutableDictionary dictionaryWithDictionary:@{@"a" : @"1", @"b" : @"2"}];
    
//    [self analyseLog];
}
//- (void)setAnalyseParams:(NSMutableDictionary *)analyseParams {
//    _analyseParams = analyseParams;
//}
@end
