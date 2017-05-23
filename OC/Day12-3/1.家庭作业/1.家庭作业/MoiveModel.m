//
//  MoiveModel.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/13.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "MoiveModel.h"

@implementation MoiveModel

- (NSString *)description
{
    return [NSString stringWithFormat:@"title=%@,average=%@,name=%@", _title,_average,_name];
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:_title forKey:@"title"];
    [coder encodeObject:_average forKey:@"average"];
    [coder encodeObject:_name forKey:@"name"];
    NSLog(@"进入归档");
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        _title = [coder decodeObjectForKey:@"title"];
        _average = [coder decodeObjectForKey:@"average"];
        _name = [coder decodeObjectForKey:@"name"];
    }
    NSLog(@"进入解档");
    return self;
}

@end
