//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,age=%ld", _name,_age];
}

//归档方法：encodeWithCoder
- (void)encodeWithCoder:(NSCoder *)coder
{
    //encodeObject:归档某个对象的方法 forKey,为自定义的key，用于在解档中匹配
    [coder encodeObject:_name forKey:@"name"];
    [coder encodeInteger:_age forKey:@"age"];
    NSLog(@"进入归档");
}

//解档方法：initWithCoder
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        _name = [coder decodeObjectForKey:@"name"];
        _age = [coder decodeIntegerForKey:@"age"];
    }
    NSLog(@"进入解档");
    return self;
}

@end
