//
//  Man.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@interface Man : Person
{
@public
    NSString *_kind;   //派生类的属性，也就是说子类可以继承父类的属性，同时也可派生出自己新的属性
}

@property(nonatomic,copy)NSString *kind;
-(void)eat;   //子类派生出新的方法，子类继承父类的set、get方法，同时可派生出自己的新的方法

@end
