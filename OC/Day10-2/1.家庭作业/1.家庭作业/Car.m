//
//  Car.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Car.h"

@implementation Car

-(id)initWithEngine:(Engine *)engine
{
    self = [super init];
    if(self)
    {
        if(_engine != engine)
        {
            [_engine release];
            _engine = [engine retain];
        }
    }
    return  self;
}

-(void)setEngine:(Engine *)engine
{
    if(_engine != engine)
    {
        NSLog(@"11111111");
        [_engine release];
        _engine = [engine retain];
    }
}

- (void)dealloc
{
    [_engine release];
    
    NSLog(@"Car dealloc");
    [super dealloc];
}
@end
