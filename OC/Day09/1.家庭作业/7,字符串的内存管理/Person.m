//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc
{
    [_name release];
    
    NSLog(@"Person dealloc");
    [super dealloc];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = nil;
    }
    return self;
}

-(void)setName:(NSString *)name
{
    //_name = name;
    if(_name != name)
    {
        [_name release];  //如果_name没有初始化，默认为nil，空指针进行release没有影响
        _name = [name copy];
    }
}

@end
