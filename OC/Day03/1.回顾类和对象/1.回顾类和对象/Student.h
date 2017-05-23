//
//  Student.h
//  1.回顾类和对象
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

//NSObject类为Student的父类，继承父类后，拥有父类的属性和方法
@interface Student : NSObject
{
    char *_name;   //创建属性
    char *_addr;
    NSInteger _age;
}
//编写OC程序的相关规范
//1.成员属性名以_开头，第一个单词小写，第二个单词首字母大写
//2.方法名第一个单词小写，第二个单词首字母大写，如果带多参，一般第一个方法前缀＋and
//3.get方法不加get开头，直接使用属性名去掉'_'

//set方法可以带一个参数、也可带多个参数
-(void)setName:(char*)name andAddr:(char*)addr andAge:(NSInteger)age;

//get方法
-(char*)name;
-(char*)addr;
-(NSInteger)age;
-(void)pigHobby;    //声明方法
-(void)monkeyHobby;

+(void)test;

@end
