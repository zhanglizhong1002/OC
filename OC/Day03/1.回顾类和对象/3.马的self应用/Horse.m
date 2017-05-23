//
//  Horse.m
//  1.回顾类和对象
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Horse.h"

@implementation Horse

-(id)init
{
    self = [super init];
    if(self)
    {
        _name = "";
    }
    return  self;
}
-(void)setName:(char*)name
{
    _name  = name;
}
-(char*)name
{
    return _name;
}
-(void)eat
{
    NSLog(@"%s一顿能吃3大桶",_name);
    [self run];   //self指的就是调用eat方法的对象指针
}
-(void)run
{
    NSLog(@"%s奔跑起来，郭德纲，郭德纲。。。",_name);
}


@end
