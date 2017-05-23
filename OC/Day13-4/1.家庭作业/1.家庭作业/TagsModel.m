//
//  TagsModel.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
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
-(id)searchNameOrAge:(NSString *)name
{
    for (id obj in _mutArr) {
        if([name isEqualToString:[obj name]] || [name isEqualToString:[obj age]])
        {
            return obj;
        }
    }
    return nil;
}


@end
