//
//  UserModel.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,age=%@,type=%@", _name,_age,_type];
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:_name forKey:@"name"];
    [coder encodeObject:_age forKey:@"age"];
    [coder encodeObject:_type forKey:@"type"];
    NSLog(@"进入归档");
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        _name = [coder decodeObjectForKey:@"name"];
        _age = [coder decodeObjectForKey:@"age"];
        _type = [coder decodeObjectForKey:@"type"];
    }
    return self;
}

@end
