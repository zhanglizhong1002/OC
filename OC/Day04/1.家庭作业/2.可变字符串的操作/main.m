//
//  main.m
//  2.可变字符串的操作
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str = @"hello";  //初始化一个不可变字符串
        //NSMutableString继承NSString，所以可以使用NSString的方法
        //NSMutableString *mutstr2 = @"world";  //err  NSString的特性
        NSMutableString *mutStr = [NSMutableString stringWithString:str];
        NSLog(@"%@",mutStr);
        //setString: 可变字符串派生的设置字符串的方法
        [mutStr setString:@"IOS"];
        NSLog(@"setString : %@",mutStr);
        //appendString:在可变字符串的后面追加一个字符串
        [mutStr appendString:@" good"];
        NSLog(@"appendString : %@",mutStr);
        //appendFormat:@"%@%s":以格式化符的方式在原串后面追加字符串；“%@”-OC字符串,“%s”-C字符串
        [mutStr appendFormat:@"%@%s",@" zhen shi"," good"];
        NSLog(@"appendFormat : %@",mutStr);
        
        //练习：
        //string:初始化空的可变字符串--类方法
        NSMutableString *mutStr2 = [NSMutableString string];
        NSLog(@"mutStr2:%@",mutStr2);
        [mutStr2 setString:@"IOS"];
        NSLog(@"setString 2: %@",mutStr2);
        NSString *name = @"xiaoqiang";
        NSInteger age = 18;
        char sex = 'M';
        [mutStr2 appendFormat:@" %@-%ld-%c",name,age,sex];
        NSLog(@"appendFormat 2: %@",mutStr2);
        
        
        //insertString:在指定下标位置插入字符串
        [mutStr insertString:@" ding gua gua" atIndex:8];
        NSLog(@"insertString : %@",mutStr);
        
        //deleteCharactersInRange: 删除一个指定范围内的字符串
        [mutStr deleteCharactersInRange:NSMakeRange(3, 10)];
        NSLog(@"delete : %@",mutStr);

    }
    return 0;
}
