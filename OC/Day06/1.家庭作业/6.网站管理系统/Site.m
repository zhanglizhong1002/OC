//
//  Site.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Site.h"

@implementation Site


- (instancetype)init
{
    self = [super init];
    if (self) {
        _title = @"";
        _addr = @"";
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"title=%@,addr=%@", _title,_addr];
}

@end
