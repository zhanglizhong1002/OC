//
//  TagsModel.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/13.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "TagsModel.h"

@implementation TagsModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mutArr = [NSMutableArray array];
    }
    return self;
}

-(id)searchTitle:(NSString*)title
{
    CGFloat fTitle = [title floatValue];
    NSLog(@"%g",fTitle);
    for (id obj in _mutArr) {
        if([[obj average] floatValue] == fTitle)
        {
            return obj;
        }
    }
    return  nil;
}

@end
