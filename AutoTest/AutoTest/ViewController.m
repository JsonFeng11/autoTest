//
//  ViewController.m
//  AutoTest
//
//  Created by fdd on 2018/1/29.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
#import "RunViewController.h"
#import "NSObject+Analyse.h"
#import "jisuanqi.h"

#define TEST 1
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn addTarget:self action:@selector(aaa) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    
    [self addObserver:self
           forKeyPath:@"number"
              options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
              context:nil];
    //字典
    [self test01];
    
    NSLog(@"----%ld", [self getNum:22]);
    jisuanqi *jj = [[jisuanqi alloc] init];
    jj.add(12).multiply(66).divide(3);
    NSLog(@"%d", jj.result);
    
    NSDictionary *dic = @{@"a" : @"1"};
    NSLog(@"%@", [dic objectForKey:@"b"]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)aaa {
//    if (TEST) {
//        RunViewController *tVC = [[RunViewController alloc] init];
//        [self.navigationController pushViewController:tVC animated:YES];
//    } else {
    
    TestViewController *tVC = [[TestViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tVC];
    [self.navigationController pushViewController:tVC animated:YES];
//    }
}
- (void)test01 {
    NSDictionary *dic = @{@"a" : @"1",
                          @"b" : @"",
                          @"c" : @"3",
                          @"d" : @"4"
                          
                          };
    NSLog(@"%@", dic);
}
@end
