//
//  main.m
//  5.OC字符串的使用
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
  
        //c字符串的弊端：一般都是以字符数组去存储与使用，在OC中不方便使用
        //OC字符串集成了很多方法，方便代码调用
        //OC字符串与C字符串的使用区别
        //OC    @""
        //c     ""
        //NSLog(@"");  前面有@，说明使用的是OC的字符串
 
#if 0
        //c字符串转oc字符串：
        char * str = "hello";
        //NSString是一个类，调用类方法stringWithUTF8String，将char＊转为NSString
        NSString *str2 = [NSString stringWithUTF8String:str];
        
        //OC字符串的格式化符  %@
        NSLog(@"--C转OC--%@",str2);   //打印字符串对象

        const char * cstr = [str2 UTF8String];
        NSLog(@"--OC转C--%s",cstr);
#endif
        //OC字符串的创建方法
        
        NSString *str = @"how are you";  //直接创建字符串   在Xcode4.6之后才引入的方
        NSLog(@"直接创建字符串：%@",str);
        
        //-------对象方法------------
        //使用对象方法一定要注意，先开辟空间，然后用对象调用initWith开头的方法
        //initWithString:通过一个字符串初始化另一个字符串
        NSString *str2 = [[NSString alloc] initWithString:str];
        NSLog(@"str2 = %@",str2);
        
        //通过格式化符的方式创建一个字符串
        NSString *str3 = [[NSString alloc] initWithFormat:@"Hi,%d",1];
        NSLog(@"str3 = %@",str3);
        
        //通过C字符串去创建NSString字符串
        NSString *str4 = [[NSString alloc] initWithCString:"good" encoding:NSUTF8StringEncoding];
        NSLog(@"str4 = %@",str4);
        
        
        //-------类方法---------------
        //字符串的类方法，一般都是以string开头，通过类来调用
        //stringWithString:通过一个字符串去初始化另一个字符串的类方法
        NSString *str5 = [NSString stringWithString:str4];
        NSLog(@"str5 = %@",str5);
        
        //stringWithFormat:通过格式化符的方式去初始化另一个字符串
        NSString *str6 = [NSString stringWithFormat:@"Hi,%d",2];
        NSLog(@"str6 = %@",str6);
        
        NSString *str7 = [NSString stringWithCString:"c string" encoding:NSUTF8StringEncoding];
        NSLog(@"str7 = %@",str7);
    }
    return 0;
}
