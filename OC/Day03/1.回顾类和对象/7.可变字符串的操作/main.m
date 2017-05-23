//
//  main.m
//  7.可变字符串的操作
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
    //可变字符串继承不可变字符串，所以不可变字符串的方法，可变字符串都可使用
    NSString *str = @"he2Blloo2Boo";
        NSInteger len = [str length];
    NSMutableString *mutstr = [NSMutableString stringWithString:str];
    NSLog(@"mutstr = %@",mutstr);
    //replaceCharactersInRange  在字符串中根据传入的范围去替换成另一个字符串
    [mutstr replaceCharactersInRange:NSMakeRange(2, 2) withString:@"XX"];
    NSLog(@"mutstr=%@",mutstr);
     //replaceOccurrencesOfString：匹配当前字符串
    //options:匹配参数，是完全匹配，还是大小写不敏感。。
    //range:匹配的指定字符串的范围
        
    [mutstr replaceOccurrencesOfString:@"2B" withString:@"XX" options:NSLiteralSearch range:NSMakeRange(0,len)];
        
        NSLog(@"mutstr=%@",mutstr);
    
    }
    return 0;
}
