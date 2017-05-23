//
//  QFDog.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "QFDog.h"

@implementation QFDog

//当不用block时，不方便，每个对象的应用不一样，那么要么需要对每个对象都建立一个调用叫的方法，要么使用block来实现，只需一个接口(推荐)

//例如：土狗：汪汪汪  天狗：王王王  藏獒：嗷嗷嗷
-(void)bark
{
    NSLog(@"%@ wang wang wang ",_name);
}
//block回调的作用：统一接口调用
-(void)bark1:(blockType)block
{
    block(_name);
}



@end
