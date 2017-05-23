//
//  main.m
//  4.字典常用方法
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDictionary *dic = @{@"ss":@"songj",@"ll":@"junyi",@"ww":@"junyi"};
        NSLog(@"dic=%@",dic);
        //count:求字典键盘对个数的方法
        NSInteger len = [dic count];
        NSLog(@"len=%ld",len);
        //objectForKey:根据key求value
        id obj = [dic objectForKey:@"ll"];   //方法一
        NSLog(@"obj=%@",obj);
        NSLog(@"dic[key] =%@",dic[@"ll"]);   //方法二
        
        //allValues:找出字典中所有的value放入数组中
        NSArray *array = [dic allValues];
        NSLog(@"vulue = %@",array);
        
        //allKeys:找出字典中所有的key放入数组中
        array = [dic allKeys];
        NSLog(@"key = %@",array);
        
        //allKeysForObject:找出数组中值为junyi，对应的所有key，放入数组中
        array = [dic allKeysForObject:@"junyi"];
        NSLog(@"key = %@",array);
        
        
        NSDictionary *dic2 = @{@"1":@"one",@"2":@"two",@"3":@"three"};
        NSLog(@"dic2=%@",dic2);
        
        //枚举器法：
        //objectEnumerator: 将字典的value全部放到枚举器中
        NSEnumerator *enumer = [dic2 objectEnumerator];
        //nextObject:将容器中的元素一个一个取出，直到循环为空
        while (obj = [enumer nextObject])
        {
            NSLog(@"obj=%@",obj);
        }
        //keyEnumerator:将字典的key全部放倒枚举器中  ,该方法很常用
        NSEnumerator *keyEnu = [dic2 keyEnumerator];
        //nextObject:将容器中的元素一个一个取出，直到循环为空
        while (obj = [keyEnu nextObject]) {
            //在循环中通过key取value:[dic2 objectForKey:obj] ---  dic2[obj
            //NSLog(@"key obj = %@－value %@",obj,[dic2 objectForKey:obj]);
             NSLog(@"key obj = %@－value %@",obj,dic2[obj]);
        }
        
        //快速枚举法  在容器dic2中循环取出一个key元素放入obj中
        for (obj in dic2) {
            //NSLog(@"key=%@--value=%@",obj,dic2[obj]);
            NSLog(@"key=%@--value=%@",obj,[dic2 objectForKey:obj]);
        }
        
        
        
        
    }
    return 0;
}
