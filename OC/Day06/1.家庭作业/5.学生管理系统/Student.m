//
//  Student.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Student.h"

@implementation Student

-(id)init
{
    self = [super init];
    if(self)
    {
        _name = @"";
        _num = @"";
        _score = 0;
        _telePhone = @"";
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,num=%@,score=%ld,telePhone=%@", _name,_num,_score,_telePhone];
}

@end
