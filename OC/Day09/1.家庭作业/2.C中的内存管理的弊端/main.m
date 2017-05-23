//
//  main.m
//  2.C中的内存管理的弊端
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

static int count = 0;

void release(char *p)
{
    count--;
    if(count == 0)
    {
        NSLog(@"释放");
        free(p);
    }
}

void fun1(char *p1)
{
    count++;
    char *a = strchr(p1, 'e');   //在字符串中查找字母，如果查找到，返回对应地址
    if(a)
    {
        NSLog(@"%s",a);
    }
    release(p1);   //2
    //free(p1);
}

void fun2(char *p2)
{
    count++;
    strcmp(p2, "hello");
    release(p2);    //1
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        //当程序简单时，在哪开辟空间，在哪释放；当程序复杂时，无法做到
        //c内存管理的弊端：
        //1.重复释放
        //2.提前释放
        //3.没有释放
        char *p = malloc(100*sizeof(char));  //c开辟内存关键
        count++;  //1  开辟空间引用计数＋1
        strcpy(p,"hello");   //字符串拷贝函数
        
        //c中模拟引用计数
        fun1(p);  //2
        fun2(p);  //3
        //....
        release(p);    //0
        //free(p);
        //fun3(p);
    }
    return 0;
}
