//
//  TestViewController.m
//  AutoTest
//
//  Created by fdd on 2018/1/29.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import "TestViewController.h"
#import "TestBuilder.h"

@interface TestViewController ()
@property (nonatomic, strong) UIButton *btn;
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)printSumWitha:(NSInteger )a b:(NSInteger)b {
    NSLog(@"%d", a + b);
}

- (void)printWhoareyou {
    NSLog(@"i am cici");
}

@end
