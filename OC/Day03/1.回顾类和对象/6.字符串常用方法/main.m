//
//  main.m
//  6.字符串常用方法
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSString * str = @"nihaoma";
        //length为字符串求长度的方法
        NSInteger len = [str length];
        NSLog(@"len=%ld",len);
        
        //characterAtIndex:根据字符串的下标值求对应字符串的字符
        char c = [str characterAtIndex:4];
        NSLog(@"%c",c);
        
        //练习：求字符串逆序打印输出
        for(NSInteger i=len-1;i>=0;i--)
        {
            printf("%c",[str characterAtIndex:i]);
        }
        
        //字符串的比较方法一：
        //isEqualToString:判断两个字符串是否相等，返回YES，真，NO，假
        BOOL bval = [str isEqualToString:@"nihaom"];
        if(bval == YES)
        {
            NSLog(@"字符串相等");
        }
        else{
            NSLog(@"字符串不相等");
        }
        
        //字符串的比较方法二
        //NSComparisonResult:枚举类型 它的枚举值为，－1、0、1
        //{NSOrderedAscending = -1L  表示后面的值要大
        //, NSOrderedSame,      0    相等
        //NSOrderedDescending    1   前面字符串大
        //compare 方法是以两个字符串的ascii玛进行比较
        NSComparisonResult ret = [str compare:@"nihaomaa"];
        if(ret == NSOrderedAscending)
        {
            NSLog(@"第二个字符串大");
        }
        else if(ret == NSOrderedSame)
        {
            NSLog(@"两个字符串相等");
        }
        else if(ret == NSOrderedDescending)
        {
            NSLog(@"第一个字符串大");
        }
        
        //字符串查找的方法
        //rangeOfString:在字符串中查找子字符串，如果找到，返回查找到的字符串位置和长度
        NSRange range = [str rangeOfString:@"hao"];
        //NSRange是一个结构体，内部有两个成员变量，location、length
        if(range.location == NSNotFound)  //NSNotFound在字符串中找不到子串的一个判断标记
        {
            NSLog(@"子字符串没有找到");
        }
        else
        {
            NSLog(@"location=%ld,lenth=%ld",range.location,range.length);
        }
        
        //练习：
        NSString *str3 = @"Hi,how are you";
        NSRange range2 = [str3 rangeOfString:@"are"];
        if(range2.location != NSNotFound)
        {
            NSLog(@"location=%ld,length=%ld",range2.location,range2.length);
        }
        
        //hasPrefix:判读字符串是否以子字符串开头，返回YES  是，返回NO  否
        BOOL bval2 = [str3 hasPrefix:@"Hi"];
        if(bval2)
        {
            NSLog(@"YES");
        }
        else{
            NSLog(@"NO");
        }
        //hasSuffix:判断字符串str3是否以子串结尾，返回YES－是，返回NO－否
        bval2 = [str3 hasSuffix:@"yiu"];
        if(bval2)
        {
            NSLog(@"YES");
        }
        else{
            NSLog(@"NO");
        }
        //数字字符串转基本数字类型
        NSString *str4 = @"222";
        
        //intValue:数字字符串类型转int类型
        int ia = [str4 intValue];
        NSLog(@"intValue -- %d",ia);
        
        //doubleValue:字符串类型转double类型
        double da = [str4 doubleValue];
        NSLog(@"doubleValue--%g",da);
        
        //integerValue:字符串类型转NSInteger类型
        NSInteger ite = [str4 integerValue];
        NSLog(@"integerValue--%ld",ite);
        
        //substringFromIndex:从第几个下标位置开始提取字符串，一直到最后，返回提取到的子串
        NSString *str5 = [str3 substringFromIndex:5];  //NSinteger 包括下标
        NSLog(@"str5=%@",str5);
        //substringToIndex:从头开始到第几个位置提取字符串，返回提取到的字串
        NSString *str6 = [str3 substringToIndex:5];    //NSinteger 不包括下标
        NSLog(@"str6=%@",str6);
        
        //练习：
        NSString *str7 = @"Hi,how old are you";
        NSString *str8 = [str7 substringFromIndex:3];
        NSLog(@"str8=%@",str8);
        
        NSString *str9 = [str7 substringToIndex:10];
        NSLog(@"str9=%@",str9);
        
        NSString *str10 = [str9 substringFromIndex:3];
        NSLog(@"str10=%@",str10);
        
        NSRange range3 = {4,5};  //传递一个NSRange结构体进去，位置为4，长度为5
        //substringWithRange,指定一个位置和长度去提取子串
        NSString *str11 = [str7 substringWithRange:range3]; //方法一传结构体
        NSLog(@"str11=%@",str11);
        //NSMakeRange是一个C函数，返回NSRange类型，通过将位置和长度传进去来提取子串
        NSString *str12 = [str7 substringWithRange:NSMakeRange(4, 5)];
        NSLog(@"str12=%@",str12);
        
        
        
        NSString *str88 = [@"点赞 (1)" substringWithRange:NSMakeRange(4, 1)];
        NSLog(@"%@", str88);
    }
    return 0;
}
