//
//  main.m
//  4.数组的创建方法
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        //int a[]={1,2,3};
        //char *p[]={"111","222","333"};
        //c中的数组元素可以是普通变量，也可以是复杂变量
        
        //创建一个OC数组--只能存储对象指针－－可直接打印数组元素值
        //NSArray *array = @[11,22,33];  //err   不能存储基本类型
        NSArray *array = @[@"11",@"22",@"33"];
        NSLog(@"arr:%@",array);
        
        //创建数组的方法
        //-----------对象方法---------------
        //initWithArray:通过一个数组初始化另一个数组
        NSArray * array1 = [[NSArray alloc] initWithArray:array];
        NSLog(@"array1 = %@",array1);
        //initWithObjects:传入多个对象指针，个数不确定，初始化该数组
        NSArray *array2 = [[NSArray alloc] initWithObjects:@"leibei",@"guanyu",@"zhangfei", nil];
        NSLog(@"array2=%@",array2);
        
        //-------------类方法-----------------
        //arrayWithArray:通过传入一个数组初始化另一个数组的类方法
        NSArray *array3 = [NSArray arrayWithArray:array2];
        NSLog(@"array3=%@",array3);
        //arrayWithObjects:传入多个对象指针，个数不确定，初始化该数组
        NSArray *array4 = [NSArray arrayWithObjects:@"laoda",@"laoer", nil];
        NSLog(@"array4=%@",array4);
        
        //NSArray数组存储空对象   NSNull,的作用就是占位符
        NSNull *obj = [NSNull null];//初始化一个空对象 [NSNull null]
        NSLog(@"obj=%@",obj);
        NSArray *array5 = @[@"11",obj,@"22"];
        NSLog(@"array5=%@",array5);
        
        //NSArray存储自定义类的对象；
        Person *xiaohong = [[Person alloc] init];
        Person *xiaolv   = [[Person alloc] init];
        Person *xiaolan = [[Person alloc] init];
        [xiaohong setName:@"xiaohong" andAge:18];
        [xiaolv setName:@"xiaolv" andAge:80];
        [xiaolan setName:@"xiaolan" andAge:40];
        
        NSArray *array6 = @[xiaohong,xiaolv,xiaolan];
        //打印数组时，会给每一个自定义对象调用一次description;
        NSLog(@"aray6=%@",array6);
    }
    return 0;
}
