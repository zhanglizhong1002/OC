//
//  Truck.m
//  1.回顾类和对象
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Truck.h"

@implementation Truck

//不带参数的构造方法
-(id)init
{
    self = [super init];
    if(self)  //可省略 self != nil
    {
        _bland = "";
        _speed = 0;
    }
    return  self;
}

//带参数的构造方法
-(id)initWithBland:(char *)bland andSpeed:(NSInteger)speed
{
    self = [super init];
    if(self)
    {
        _bland = bland;
        _speed = speed;
    }
    return self;
}
-(void)setBland:(char *)bland andSpeed :(NSInteger)speed
{
    _bland = bland;
    _speed = speed;
}

-(char*)bland
{
    return _bland;
}

-(NSInteger)speed
{
    return _speed;
}

@end
