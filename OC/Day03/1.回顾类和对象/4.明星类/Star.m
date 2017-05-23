//
//  Star.m
//  1.回顾类和对象
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Star.h"

@implementation Star

-(id)init
{
    self = [super init];
    if(self)
    {
        _name = "";
        _age = 0;
    }
    return self;
}
-(void)setName:(char*)name andAge:(NSInteger)age
{
    _name = name;
    _age = age;
}
-(char*)name
{
    return _name;
}
-(NSInteger)age
{
    return _age;
}
//创建比较年龄的方法，一定要传对象进来，否则不知道是哪个对象的年龄
-(void)compareAge:(Star*)star
{
    //self为degang对象  star 是zhiying对象
    NSLog(@"%ld---%ld",[self age],[star age]);
    if([self age] == [star age])
    {
        NSLog(@"%s和%s的年龄相等",[self name],[star name]);
    }
    else{
        NSLog(@"%s和%s的年龄不相等",[self name],[star name]);
    }
}

+(void)test1
{
    Star *baoqiang = [[Star alloc] init];
    [baoqiang setName:"wangbao" andAge:30];
    //类方法中不能使用_name、_age;
    NSLog(@"类方法调用：name=%s,age=%ld",[baoqiang name],[baoqiang age]);
}

@end
