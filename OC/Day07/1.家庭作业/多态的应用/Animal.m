//
//  Animal.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Animal.h"

@implementation Animal

-(void)bark
{
    //self代表的是当前调用bark的对象
    NSLog(@"%@正在叫.....",[self class]);
}
//父类对象指向子类对象：Animal *ani = dahuang(实参)
-(void)startCall:(Animal *)ani
{
    [ani bark];   //实质不一定是Animal这个对象来调用的，要看传入的实参对象
}

@end
