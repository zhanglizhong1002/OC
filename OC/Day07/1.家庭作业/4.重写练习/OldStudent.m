//
//  OldStudent.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "OldStudent.h"

@implementation OldStudent

-(void)course   //重写
{
    NSLog(@"高中生%@正在上课",_name);
}

-(void)write   //重写
{
    NSLog(@"高中生%@正在写作业",_name);
}


@end
