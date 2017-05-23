//
//  Worker.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Worker.h"

@interface Worker ()    //匿名类别,可扩展属性和方法，并方法与属性都是私有的，外部无法访问
{
    NSInteger counts;
}

@end


@implementation Worker

//NSInteger counts = 0;  //尽量少用全局变量，作用域为整个文件，很容易出现问题

-(NSInteger)doWork
{
    counts += arc4random()%40+1;
    return counts;
}

@end
