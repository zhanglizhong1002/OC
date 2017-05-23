//
//  main.m
//  2.字符串的分割与拼接
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
#if 0
        //字符串的分割方法：
        NSString * str = @"+hello++good--bye+OK-";
        //componentsSeparatedByString:将字符串str通过分割符字符串进行分割成多段,使用数组来接收
        NSArray *array = [str componentsSeparatedByString:@"+"];
        NSLog(@"array=%@",array);
        
        //NSCharacterSet:字符集的一个类型，实例化字符集对象
        //使用字符集进行切割，只要在字符串中包含字符集的字符，那么就会根据这个字符进行切割
        NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"+-"];
        array = [str componentsSeparatedByCharactersInSet:set];
        NSLog(@"字符集:%@",array);
        NSMutableArray *mutArr = [NSMutableArray arrayWithArray:array];
        //在分割字符串中如果出现连续的分割符，或分割符出现在开头或结尾都会出现空串
        [mutArr removeObject:@""];  //删除可变数组中的空串
        NSLog(@"mutArr=%@",mutArr);
#endif
        //字符串的拼接
        NSArray *arr = @[@"liubei",@"guanyu",@"zhangfei"];
        NSLog(@"arr=%@",arr);
        //componentsJoinedByString,数组调用拼接方法，通过一个拼接符字符串进行拼接，拼接后，返回一个字符串
        NSString *comStr = [arr componentsJoinedByString:@"--"];
        NSLog(@"拼接后:%@",comStr);
    
        NSString * str = @"hello good bye";
        //componentsSeparatedByString:将字符串str通过分割符字符串进行分割成多段,使用数组来接收
        NSArray *array = [str componentsSeparatedByString:@" "];
        NSLog(@"array=%@",array);
    }
    return 0;
}
