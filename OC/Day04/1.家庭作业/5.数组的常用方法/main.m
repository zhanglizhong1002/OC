//
//  main.m
//  5.数组的常用方法
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *array = @[@"songj",@"likui",@"wuyong"];
        //count  求数组元素个数
        NSInteger len = [array count];
        NSLog(@"arr count=%ld",len);
        
        //objectAtIndex,根据数组下标求对应元素对象，下标从0到len－1，越界会奔溃
        NSLog(@"求下标:%@",[array objectAtIndex:1]);
        NSLog(@"求下标2:%@",array[1]);
        
        //lastObject:取数组中的最后一个元素
        NSLog(@"取最后一个元素:%@",[array lastObject]);
        
        //indexOfObject,查找对象在数组元素中的索引
        NSInteger index = [array indexOfObject:@"likui"];
        NSLog(@"索引:%ld",index);
        //containsObject:判断在数组中是否包含对象@“wuyong”
        BOOL bval = [array containsObject:@"wuyong"];
        if(bval)
        {
            NSLog(@"包含");
        }
        else{
            NSLog(@"不包含");
        }
        
        //遍历输出数组元素---遍历法1
        for(NSInteger i=0;i<len;i++)
        {
            //NSLog(@"for循环：%@",[array objectAtIndex:i]);
            NSLog(@"for循环: %@",array[i]);
        }
        //OC中的新特性
        //for.in object循环从collection中取数据，每次取一个元素对象
        //快速枚举法－－－遍历法2
        for (NSString * obj in array) {
            NSLog(@"快速枚举法：%@",obj);
        }
        
        //枚举器法－－－遍历法3
        //数组调用objectEnumerator方法,将数组中的元素存放到枚举器中
        NSEnumerator *enumer = [array objectEnumerator];
        NSString *str1=nil;
        //循环将枚举器中的元素一个一个取出来，通过nextObject方法取，直到取出的元素为空，退出循环
        while (str1 = [enumer nextObject]) {
            NSLog(@"枚举器法：%@",str1);
        }
        
        Person *per = [[Person alloc] init];
        NSArray *array2 = @[@"11",per,@"22"];
        NSInteger len2 = [array2 count];
        for(NSInteger i = 0;i<len2;i++)
        {
            //isKindOfClass: 在遍历数组元素中判断是否有相同的类名,有，返回YES
            //class: 求类名的方法
            if([array2[i] isKindOfClass:[per class]])
            {
                NSLog(@"[per class]=%@",[per class]);
                NSLog(@"找到匹配的类,下标为%ld",i);
            }
        }
        
        
        NSArray *array3 = @[@"1111", @"222", @"3333333", @"44"];
        NSString *strMax = array3[0];
        NSInteger len3 = [array3 count];
        for (NSInteger i=1; i<len3; i++) {
            if([array3[i] length]>[strMax length])
            {
                strMax = array3[i];
            }
        }
        NSLog(@"最长的字符串为%@",strMax);
        
        NSString *strMin = array3[0];
        for (NSString *obj in array3) {
            if([strMin length]>[obj length])
            {
                strMin = obj;
            }
        }
        NSLog(@"最短的字符串为%@",strMin);
    }
    return 0;
}
