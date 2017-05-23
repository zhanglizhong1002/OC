//
//  QFPerson.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "QFPerson.h"


@interface QFPerson ()     //匿名类别的接口
{
    NSInteger _age;   //匿名属性
}
-(void)setAge:(NSInteger)age;  //匿名类别的方法声明
-(NSInteger)age;
@end

//1.匿名类别即可扩展方法，也可扩展属性
//2.在匿名类别中,方法和属性都是私有的，外部不能调用

@implementation QFPerson

-(void)setAge:(NSInteger)age
{
    _age = age;
}

-(NSInteger)age
{
    return _age;
}

-(void)print
{
    NSLog(@"name=%@",_name);
    self.age = 18;
    NSLog(@"age=%ld",self.age);
}

@end
