//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString *)name andAge:(NSInteger)age andSex:(char)sex
{
    _name = name;
    _age = age;
    _sex = sex;
}
-(NSString *)name
{
    return _name;
}
-(NSInteger)age
{
    return  _age;
}
-(char)sex
{
    return  _sex;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,age=%ld,sex=%c", _name,_age,_sex];
}

@end
