//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)start
{
    if([_delegate respondsToSelector:@selector(searchHouse)])
    {
         NSInteger price = [_delegate searchHouse];
        //代理返回price的值，person判断是否继续执行
        while (price>2000) {
            NSLog(@"房租为%ld，太贵了，继续找",price);
            sleep(1);  //延时1秒
            price = [_delegate searchHouse];
        }
        NSLog(@"房租为%ld，正合适",price);
    }
}

@end
