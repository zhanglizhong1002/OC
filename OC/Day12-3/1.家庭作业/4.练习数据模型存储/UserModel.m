//
//  UserModel.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/13.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,sex=%@,age=%@", _name,_sex,_age];
}

//实现归档协议的方法
- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:_name forKey:@"name"];
    [coder encodeObject:_sex forKey:@"sex"];
    [coder encodeObject:_age forKey:@"age"];
    NSLog(@"进入归档");
}
//实现解档协议的方法
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        _name = [coder decodeObjectForKey:@"name"];
        _sex = [coder decodeObjectForKey:@"sex"];
        _age = [coder decodeObjectForKey:@"age"];
        NSLog(@"进入解档");
    }
    return self;
}

@end
