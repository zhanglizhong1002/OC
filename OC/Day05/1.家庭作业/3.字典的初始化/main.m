//
//  main.m
//  3.字典的初始化
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
     //生活中的字典：作用，根据查找的工具去实现查找到的内容：拼音查找、偏旁、笔画-手段 内容－目的
        
     //OC中的字典： 通过关键字去查找想要的内容；关键字(key)－工具   内容(value)－目的
        
    //OC字典的创建 @{key1:value1,key2:value2};
    
    NSDictionary *dic = @{@"laoda":@"liubei",@"laoer":@"guanyu",@"laosan":@"zhangfei"};
    NSLog(@"dic=%@",dic);  //laoda,laoer,laosan为key；liubei，guanyu，zhangfei为value
        
     //创建字典的方法
     //对象方法：需要调用alloc，再调用initWith。。
     //类方法  ：通过类来调用dictionary开头的方法
    //----------对象方法-----------总结：初始化的键值对一定要成对出现，否则会奔溃
    //通过一个字典初始化另一个字典的方法：initWithDictionary
        NSDictionary *dic1 = [[NSDictionary alloc] initWithDictionary:dic];
        NSLog(@"dic1=%@",dic1);
        NSArray *arr = @[@"11",@"22",@"33"];
        NSArray *arr2 = @[@"liubei",@"guanyu",@"zhangfei"];
       //initWithObjects:通过传递两个数组去初始化该字典,字典的键值对的存储方式无序
        //前面一个数组为value的集合，后面一个数组为key的集合
        NSDictionary *dic2 = [[NSDictionary alloc] initWithObjects:arr forKeys:arr2];
        NSLog(@"dic2=%@",dic2);
        //initWithObjectsAndKeys:根据传入键值对初始化字典，第一个为value，第二个为key
        
        NSDictionary *dic3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"11",@"laoda",@"22",@"laoer", nil];
        NSLog(@"dic3=%@",dic3);
        
        
        //-------------类方法------------
        //dictionaryWithDictionary:通过一个字典初始化另一个字典的类方法
        NSDictionary *dic4 = [NSDictionary dictionaryWithDictionary:dic3];
        NSLog(@"dic4=%@",dic4);
        //dictionaryWithObjects:通过传递两个数组去初始化该字典的类方法,字典的键值对的存储方式无序,
        NSDictionary *dic5 = [NSDictionary dictionaryWithObjects:arr forKeys:arr2];
        NSLog(@"dic5=%@",dic5);
    //dictionaryWithObjectsAndKeys:根据传入键值对初始化字典的类方法，第一个为value，第二个为key
        NSDictionary *dic6 = [NSDictionary dictionaryWithObjectsAndKeys:@"11",@"a",@"11",@"b", nil];
        //字典的可以具有唯一性，如果key有重复的，不会进行存储，value可以重复
        NSLog(@"dic6=%@",dic6);
        
    }
    return 0;
}
