//
//  main.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Person *xiaoqiang = [[Person alloc] init];
        [xiaoqiang setName:@"xiaoqiang"];
        Person *xiaobai = [[Person alloc] init];
        [xiaobai setName:@"xiaobai"];
        Person *laoli = [[Person alloc] init];
        [laoli setName:@"laoli"];
        Person *wancai = [[Person alloc] init];
        [wancai setName:@"wancai"];
        
        //数组中存储多个实例化对象
        NSArray *array = @[xiaoqiang,laoli,xiaobai,wancai];
        NSMutableArray *mutArr = [NSMutableArray arrayWithArray:array];
        NSLog(@"array = %@",array);
  //作业1
#if 1
        //[xiaoqiang name] 获取到名字
        NSString *max = [xiaoqiang name];   //假设第一个对象的名字最长
        //循环判断出最长的对象的名字
        NSEnumerator *enumer = [array objectEnumerator];
        Person *obj = nil;
        //循环从枚举器中取出每一个对象
        while (obj = [enumer nextObject]) {
            //判断对象中字符串的名字比较，求出最长的字符串
            if([max length]<[[obj name] length])
            {
                max = [obj name];  //判断完成后求出的是最长字符串名字
            }
        }
        NSLog(@"max=%@",max);
        //根据得到的字符串，遍历，找出相应的对象
        for (obj in array) {
            //字符串判断相等的比较方法 compare:
            if([max isEqualToString:[obj name]])
            {
                NSLog(@"最长字符串的对象为%@",obj);  //打印最长字符串对象
                break;
            }
        }
#endif
        //作业2： 注意：涉及数组的增、删、改，我们需要用可变数组来做
        
        Person *min = mutArr[0];   //把第一个对象赋给min，假设为最小对象
        NSInteger len = [mutArr count];    //求数组的长度
        for(NSInteger i = 1; i< len;i++)
        {
            //判断数组中对象元素的名字的长度，找出最小长度的对象
            if([[min name] length] > [[mutArr[i] name] length])
            {
                min = mutArr[i];
            }
        }
        NSLog(@"最小字符串对象为%@",min);
        [mutArr removeObject:min];   //删除找到的对象
        NSLog(@"mutArr = %@",mutArr);
        
        
    }
    return 0;
}
