//
//  main.m
//  5.可变字典的使用
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDictionary * dic = @{@"1":@"one",@"2":@"two"};
        //可变字典继承不可变字典，所以不可变的方法皆可使用，dictionaryWithDictionary：通过一个字典初始化另一个字典
        NSMutableDictionary *mutDic = [NSMutableDictionary dictionaryWithDictionary:dic];
        NSLog(@"mutDic=%@",mutDic);
        //创建一个空的可变字典
        NSMutableDictionary *mutDic2 = [NSMutableDictionary dictionary];
        NSLog(@"mutDic2=%@",mutDic2);
        //dictionaryWithObjectsAndKeys:初始化传入多个键值对
        NSMutableDictionary *mutDic3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"1",@"one",@"2",@"two", nil];
        NSLog(@"mutDic3=%@",mutDic3);
        
        //增加一个键值对：setObject;当key在字典中以存在，则替换存储的键值对
        [mutDic3 setObject:@"3" forKey:@"three"];
        NSLog(@"set = %@",mutDic3);
        [mutDic3 setObject:@"4" forKey:@"two"];
        NSLog(@"set2 = %@",mutDic3);
        [mutDic3 setObject:@"4" forKey:@"four"];
        [mutDic3 setObject:@"5" forKey:@"five"];
        
        //removeObjectForKey:根据对应的key删除在字典中的键值对
        [mutDic3 removeObjectForKey:@"one"];
        NSLog(@"mutDic3=%@",mutDic3);
        NSArray *array = @[@"two",@"four",@"88"];
        
        //removeObjectsForKeys:删除可变字典在数组中匹配的键值对，匹配不上的忽略
        [mutDic3 removeObjectsForKeys:array];
        NSLog(@"remove array = %@",mutDic3);
        
        //removeAllObjects:删除字典中所有的键值对
        //[mutDic3 removeAllObjects];
        //NSLog(@"remove all = %@",mutDic3);
        NSDictionary *dic3 = @{@"1":@"one",@"2":@"two"};
        
        //setDictionary:通过一个字典来替换当前字典
        [mutDic3 setDictionary:dic3];
        NSLog(@"setDic = %@",mutDic3);
        
        
    }
    return 0;
}
