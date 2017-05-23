//
//  main.m
//  1-设计人类
//
//  Created by qianfeng on 15-9-21.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

// 类分为声明 + 实现 :

//1、类的声明:
// ":" 表示：继承;
//目前设计的类都集成NSObject。 : NSObject
//@interface 类名 : 父类
//{
//    //成员变量的声明;
//}
//// 方法的声明;
//@end                       /// 基类
@interface Person : NSObject
{
    // 成员变量： 类拥有什么;
    // 成员变量名以_开头;
    char *_name;  // 姓名
    NSUInteger _age; // 年龄;
}
// 方法的声明:
// 方法： 类能够做什么;
// C: 没有返回值没有参数:  (void)函数名(void);
// OC: 没有返回值没有参数： - (void)函数名;
- (void)eat;
- (void)sleep;
- (void)beat;

// 设置成员变量name:
// C: void 方法名(参数类型 参数名)
//OC: - (void)方法名:(参数类型) 参数名;     // 一个冒号对象一个参数;
// 方法名: 第一个单词全部小写, 从第二个单词开始首字母大写;
- (void)setName:(char *)name;
- (void)setAge:(NSUInteger)age;


// 去掉返回值， 去掉参数类型和参数名，剩下就是方法名;  -->  setName:


// 获取成员变量age的值
// C:  返回值类型 方法名(void);
//OC: - (返回值类型) 方法名;

- (NSUInteger)getAge;
- (char *)getName;

// 写一个方法:同时设置姓名和年龄;
// C: void 方法名(参数类型 参数名, 参数类型 参数名, 参数类型 参数名.....)
// OC: - (void) 方法名:(数据类型)参数名 标志:(数据类型)参数名.....

- (void)setName:(char *)name andAge:(NSUInteger)age;

// setName: andAge:

@end
//@implementation 类名
//
//// 方法的实现;
//
//@end
@implementation Person
- (void)eat
{
    NSLog(@"正在吃饭中....");
}
- (void)sleep
{
    NSLog(@"正在睡觉中.....");
}
- (void)beat
{
    NSLog(@"打豆豆.....");
}

- (void)setName:(char *)name // name = "zhangsan"
{
    _name = name;
}
- (void)setAge:(NSUInteger)age //age = 30
{
    _age = age;
}

- (NSUInteger)getAge
{
    return _age;
}

- (char *)getName
{
    return _name;
}

- (void)setName:(char *)name andAge:(NSUInteger)age
{
    // name， age;
    _name = name;
    _age = age;
}

@end
    // 练习： 设计学生类,
    // 成员变量：  姓名，学号，体重;
    // 成员方法：  学习， 打LOL
    // main 创建一个学生对象， 调用方法;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 如何用类创建一个对象;
        
        // [类名 alloc]： 创建一个对象, 返回对象的首地址;
        Person *xiaoming =  [Person alloc]; // 对象的首地址存储到指针变量xiaoming里面;

        // 对象如何调用成员方法:
        
//        [对象 方法名]
        
        [xiaoming eat];
        // 某个对象 做什么
        [xiaoming sleep];
        [xiaoming beat];
        //如何访问成员变量?-- > 通过方法访问成员变量;
        // 默认情况下外部不能访问成员变量;
//        xiaoming->name = "zhangsan";
//        xiaoming->age = 20;
//        NSLog(@"%s, %d\n", xiaoming->name, xiaoming->age);
        
        [xiaoming setName:"zhangsan"];
        [xiaoming setAge:30];
        
        NSUInteger a = [xiaoming getAge];
        NSLog(@"%ld", a);
//        char *b = [xiaoming getName];
        NSLog(@"%s", [xiaoming getName]);
        
        [xiaoming setName:"lisi" andAge:30];
        
        NSLog(@"%s, %ld", [xiaoming getName], [xiaoming getAge]);
        [xiaoming setName:"laowang" andAge:25];
        
        
        
    }
    return 0;
}





















