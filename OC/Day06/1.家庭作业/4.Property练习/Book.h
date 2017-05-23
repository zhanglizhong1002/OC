//
//  Book.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
   /* NSString *_name;
    NSInteger _pages;
    CGFloat   _price;
    NSString *_author;*/
}

//1. readwrite/readonly: 默认为readwrite;
//readonly:只能使用get，不能使用set

//2. nonatomic:非原子性操作，多线程，同一时间允许多个线程来进行访问  效率高
//  atomic: 原子性操作，同一时间只允许一个线程进行访问     安全性高
//默认：atomic

//3. copy/retain/assign
//copy: 一般用于字符串类型（NSString）
//retain:  一般用于自定义类类型(自定义类)
//assign:   用于修饰普通变量类型 (NSInteger/CGFloat/int...)

//4.setter/getter:给设置和获取方法改名

@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign,setter=setAAPages:,getter=getAAPages) NSInteger pages;
//@property(nonatomic,assign) NSInteger pages;
@property(nonatomic,assign) CGFloat  price;
@property(nonatomic,copy) NSString *author;

/*-(void)setName:(NSString *)name;
-(void)setPages:(NSInteger)pages;
-(void)setPrice:(CGFloat)price;
-(void)setAuthor:(NSString *)author;

-(NSString *)name;
-(NSInteger)pages;
-(CGFloat)price;
-(NSString *)author;*/

@end
