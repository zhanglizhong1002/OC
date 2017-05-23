//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

//copyWithZone:实现NSCopying协议中的方法
-(id)copyWithZone:(NSZone *)zone
{
    //allocWithZone: 指定zone空间值传入per
    Person *per = [Person allocWithZone:zone];
    per.name = _name;
    per.age = _age;
    return per;  //把拷贝对象传出
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,age=%ld", _name,_age];
}

@end
