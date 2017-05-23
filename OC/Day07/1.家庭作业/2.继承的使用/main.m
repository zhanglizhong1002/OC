//
//  main.m
//  2.继承的使用
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Man.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //面向对象的三大特性：封装、继承、多态
        //封装：属性全部封装，通过方法进行调用
        
        //生活中的继承：
        //父类       子类       父类      子类        类      对象
        //动物      猫、狗       狗     黑狗、黄狗     黄狗     大黄
        //爷爷       爸爸       爸爸      儿子        儿子     小明
        
        //继承特性1: 子类拥有父类的属性和方法;
        
        //属性的访问权限：（与方法调用无关）
        //                类内      类外      继承关系中
        //@public         可以      可以        可以
        //@protected      可以      不可以       可以
        //@private        可以      不可以       不可以
        
        Man *xiaoming = [[Man alloc] init];
        //虽然Man这个类并没有属性name，age，也没有方法，setName,setAge,但Man继承了Person，所以可调用，证明了父亲的就是我的
        xiaoming.name = @"huangxiaoming";
        xiaoming.age = 38;
        
        //xiaoming.kind = @"huangzhong";
        //当属性权限为@public时，用对象可直接调属性，但是OC中有封装的特性，不推荐大家直接调属性，而是通过方法封装的方式来调用
        xiaoming->_kind = @"xiaohuang";
        NSLog(@"name=%@,age=%ld,kind=%@",xiaoming.name,xiaoming.age,xiaoming.kind);
        
        [xiaoming eat];
        
        

    }
    return 0;
}
