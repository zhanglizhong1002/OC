//
//  BookModel.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "BookModel.h"

@implementation BookModel

- (NSString *)description
{
    return [NSString stringWithFormat:@"counts=%@,name=%@,title=%@", _counts,_name,_title];
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:_name forKey:@"name"];
    [coder encodeObject:_title forKey:@"title"];
    [coder encodeObject:_counts forKey:@"counts"];
    NSLog(@"进入归档");
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        _name = [coder decodeObjectForKey:@"name"];
        _title = [coder decodeObjectForKey:@"title"];
        _counts = [coder decodeObjectForKey:@"counts"];
        NSLog(@"进入解档");
    }
    return self;
}

@end
