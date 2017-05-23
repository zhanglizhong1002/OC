//
//  QFDog.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "QFDog.h"

@implementation QFDog


-(id)init
{
    self = [super init];
    if(self)
    {
        _name = @"";
        _age = 0;
    }
    return  self;
}

-(void)setName:(NSString *)name andAge:(NSInteger)age
{
    _name = name;
    _age = age;
}

-(NSString *)name
{
    return  _name;
}
-(NSInteger)age
{
    return _age;
}

//重写父类的description方法,重写方法的返回值一定是NSString*类型
-(NSString*)description  //一般重写该方法，返回属性的打印信息
{
    NSLog(@"进入description");
    return [NSString stringWithFormat:@"name=%@,age=%ld",_name,_age];
}

@end
