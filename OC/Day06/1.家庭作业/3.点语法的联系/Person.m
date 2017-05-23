//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

//将属性名称与@property中的变量名做一个合成（@synthesize）
//通过版本升级后（XCode5.0），@synthesize隐藏了，但内部仍然有这种逻辑
/*@synthesize name = _name;
@synthesize age  = _age;
@synthesize identical = _identical;*/

//@property 的用法，可省略掉set/get的方法实现，默认会展开成赋值与取值的操作
//一般情况，当只要set/get作为赋值和传值，不做其他操作，那么选择省略实现get／set部分，如果需要做传值以外的操作，那么可自己自定义set／get方法

/*-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return  _name;
}
-(void)setAge:(NSInteger)age
{
    _age = age;
}
-(void)setIdentical:(NSString *)identical
{
    _identical = identical;
}
-(NSInteger)age
{
    return  _age;
}
-(NSString *)identical
{
    return  _identical;
}*/


@end
