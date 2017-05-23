//
//  main.m
//  回顾字符串的拷贝
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSString *str = @"hello";
        NSString *str1 = [[NSString alloc] initWithString:str];
        NSString *str2 = [str1 copy];
        NSLog(@"str1=%p",str1); //str1和str2地址相同，所以是引用计数＋1
        NSLog(@"str2=%p",str2);  // 不可变字符串的copy为浅拷贝
        
        NSMutableString *mutStr = [[NSMutableString alloc] initWithString:str];
        NSString *str3 = [mutStr copy]; //可变字读成进行copy， str3重新开辟了空间，引用计数不＋1，深拷贝
        NSLog(@"mutStr=%p",mutStr);
        NSLog(@"str3 = %p",str3);
        
        NSMutableString *str4 = [str1 mutableCopy];
        NSLog(@"str1=%p",str1);
        NSLog(@"str4=%p",str4);   //不可变字符串进行mutableCopy str4重新开辟了空间，引用计数不＋1，－－深拷贝
        
        NSMutableString *str5 = [mutStr mutableCopy];
        NSLog(@"str5=%p",str5);  //可变字符串进行mutableCopy str5重新开辟了空间，引用计数不＋1，－－深拷贝
        NSLog(@"mutStr=%p",mutStr);
        
        NSString *str6 = [str retain];
        NSLog(@"str6=%p",str6);  //不可变字符串进行retain，引用计数＋1，-- 浅拷贝
        NSLog(@"str=%p",str);
        
        NSString *str7 = [mutStr retain];
        NSLog(@"str7=%p",str7);  //可变字符串进行retain，引用计数＋1，-- 浅拷贝
        NSLog(@"mutStr=%p",mutStr);
        
        
        //总结：  1.字符串（可变和不可变）进行retain，始终是浅拷贝
               //2.字符串（可变和不可变）进行mutableCopy，始终是深拷贝
               //3.可变字符串进行copy，为深拷贝；不可变字符串进行copy，为浅拷贝

    }
    return 0;
}
