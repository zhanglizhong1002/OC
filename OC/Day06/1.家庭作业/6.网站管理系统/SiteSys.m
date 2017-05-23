//
//  SiteSys.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "SiteSys.h"

@implementation SiteSys

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mutDic = [NSMutableDictionary dictionary];
    }
    return self;
}

-(void)addSite:(Site *)site
{
    [_mutDic setObject:site forKey:[site title]];
}

-(void)deleteforKey:(NSString *)title
{
    id obj = [self searchForKey:title];
    if(obj)
    {
        [_mutDic removeObjectForKey:title];
    }
}

-(Site *)searchForKey:(NSString *)title
{
    return [_mutDic objectForKey:title];
}
@end
