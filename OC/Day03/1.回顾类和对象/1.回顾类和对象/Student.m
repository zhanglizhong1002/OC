//
//  Student.m
//  1.回顾类和对象
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Student.h"

@implementation Student

//重写方法，init
-(id)init
{
    //self是当前调用这个方法的对象指针，类似于c++、java中的this
    self = [super init];  //super 代表父类的一个编号，用父类对象指针来初始化父类属性
    if(self != nil)  //判断父类的初始化成功后，可执行子类属性的初始化 nil相当于c中的NULL
    {
        _name = "";   //当前类属性的初始化
        _addr = "";
        _age  = 0;
        NSLog(@"调用当前的init");
    }
    return self;
}

-(void)pigHobby    //方法的实现
{
    NSLog(@"%s同学来自%s,今年%ld岁，爱好泡妞",_name,_addr,_age);
}

-(void)monkeyHobby   //方法的实现
{
    NSLog(@"%s同学来自%s,今年%ld岁，爱好耍棍",_name,_addr,_age);
}

-(void)setName:(char *)name andAddr:(char *)addr andAge:(NSInteger)age
{
    _name = name;
    _addr = addr;
    _age  = age;
}

-(char*)name
{
    return _name;
}

-(char*)addr
{
    return _addr;
}
-(NSInteger)age
{
    return _age;
}

+(void)test
{
    //在类方法中不能使用成员变量
    //NSLog(@"%s说,我是类方法",_name);  err
    
    Student *tangsen = [Student alloc];
    [tangsen setName:"tangsen" andAddr:"dong tu" andAge:28];
    //在类方法中不能直接使用成员变量，但可通过，实例化对象通过对象调用方法的方式，间接使用；
    NSLog(@"%s说,我是类方法",[tangsen name]);
}

@end
