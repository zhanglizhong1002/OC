//
//  main.m
//  1.回顾类和对象
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //alloc是一个类方法，就是用类调用的方法，以‘＋’开头，通过alloc开辟空间，相当于c众的malloc
        
        //面向对象的三大特性:
        //1.封装性：对象不可以直接调用属性，需通过方法封装；优点：安全、重用
        //结构体与类的区别：
        //结构体：不能使用方法(函数)，可直接调用属性
        //类： 不可直接调用属性，通过方法设置和获取属性
        //2.继承性：子类可以继承父类的属性和方法
        //3.多态性：不同对象调用相同的方法，产生不同的响应；  //动物类-叫  猫－喵  狗－旺  猪－嘟
        Student *wukong = [Student alloc];
        Student *bajie = [Student alloc];
        wukong = [wukong init];    //init为初始化的方法，给父类的属性初始化，返回值为instancetype，类似于id，与id的区别为，instancetype只能作为返回值类型，id还可作为参数类型
        
        //当当前类重写了init方法后，就不回调用父类的init；重写可不用写声明
        
        //对象方法：以‘－’开头，通过对象来调用的方法
        [wukong setName:"wu kong" andAddr:"hua guoshan" andAge:520];
        [wukong monkeyHobby];
        
        [bajie setName:"bajie" andAddr:"gaolaozhuang" andAge:380];
        [bajie pigHobby];
        
        //自定义类方法，直接用类来调用
        [Student test];
        
    }
    return 0;
}
