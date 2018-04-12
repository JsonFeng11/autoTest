//
//  NSObject+Analyse.h
//  打点p
//
//  Created by fdd on 2018/3/13.
//  Copyright © 2018年 fdd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate+DDLogReport.h"

//@class ;

@interface NSObject (Analyse)
@property (nonatomic, copy) NSMutableDictionary *analyseParams;

//- (void)analyseLog;

- (NSInteger)getNum:(NSInteger )count;

@end
