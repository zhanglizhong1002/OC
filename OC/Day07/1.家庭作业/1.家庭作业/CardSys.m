//
//  CardSys.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "CardSys.h"

@implementation CardSys

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mutArr = [NSMutableArray array];
    }
    return self;
}

-(void)addCard:(Card *)card
{
    id obj = [self search:[card name]];
    if(obj)
    {
        NSLog(@"该卡片%@已存在",[card name]);
    }else{
        [_mutArr addObject:card];
    }
}

-(Card *)search:(NSString *)name
{
    for (id obj in _mutArr) {
        if([[obj name] isEqualToString:name])
        {
            return obj;  //判断在对象中能够找到相同的名字，那么返回
        }
    }
    return  nil;  //遍历完成后一直没找到相同名的对象，那么返回一个空的标示
}

-(void)print
{
    NSLog(@"mutdic=%@",_mutArr);
}

@end
