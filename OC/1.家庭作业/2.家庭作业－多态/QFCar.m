//
//  QFCar.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "QFCar.h"

@implementation QFCar

-(void)start:(QFCar *)car
{
    [car loader];
}

-(void)loader
{
    NSLog(@"汽车在搭载。。。。。");
}

@end
