//
//  main.m
//  数组的内存管理
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *xiaohong = [[Person alloc] init];
        Person *xiaoming = [[Person alloc] init];
        Person *xiaobai = [[Person alloc] init];
        
        NSMutableArray *mutArr = [[NSMutableArray alloc] initWithObjects:xiaobai,xiaohong,xiaoming, nil];
        NSLog(@"%ld",[xiaohong retainCount]);  //2 数组中存储对象，将会给每一个对象引用计数＋1
        NSLog(@"%ld",[xiaoming retainCount]);  //2
        NSLog(@"%ld",[xiaobai retainCount]);   //2
        
        [mutArr addObject:xiaobai]; //给可变数组增加一个对象，那么该对象引用计数＋1
        NSLog(@"%ld",[xiaohong retainCount]);  //2
        NSLog(@"%ld",[xiaoming retainCount]);  //2
        NSLog(@"%ld",[xiaobai retainCount]);   //3
        
        NSLog(@"-----------------------------");
        [mutArr removeObject:xiaohong]; //给可变数组删除一个对象，那么该对象引用计数－1
        NSLog(@"xiaohong＝%ld",[xiaohong retainCount]);  //1
        NSLog(@"xiaoming=%ld",[xiaoming retainCount]);  //2
        NSLog(@"xiaobai=%ld",[xiaobai retainCount]);   //3
        
        NSLog(@"--------删除所有----------------");
        [mutArr removeAllObjects];  //删除所有可变数组元素，会给每个元素对象引用计数－1
        NSLog(@"xiaohong＝%ld",[xiaohong retainCount]);  //1
        NSLog(@"xiaoming=%ld",[xiaoming retainCount]);  //1
        NSLog(@"xiaobai=%ld",[xiaobai retainCount]);   //1
    }
    return 0;
}
