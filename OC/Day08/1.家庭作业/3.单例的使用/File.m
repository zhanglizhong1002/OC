//
//  File.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "File.h"

@implementation File

static File *file;  //静态变量默认初始化为nil  作用域为当前文件
                    //全局变量为整个文件，一般不建议使用

+(id)defaultManger
{
    
    if(file==nil)
    {
        file = [[File alloc] init];
    }
    return file;
}

@end
