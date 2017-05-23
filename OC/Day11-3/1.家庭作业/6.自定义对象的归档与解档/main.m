//
//  main.m
//  6.自定义对象的归档与解档
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.

#import <Foundation/Foundation.h>

#import "Person.h"

#define PATH @"/Users/qianfeng/Desktop/a.txt"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *xiaohong = [[Person alloc] init];
        xiaohong.name = @"xiaohong";
        xiaohong.age = 20;
        //archiveRootObject: 将数据归档到一个文件中，（推荐）
        //archivedDataWithRootObject: 将对象归档到NSData
        
        //NSKeyedArchiver类调用archiveRootObject方法，在内部会去执行当前类的归档实现方法：encodeWithCoder，进行归档到指定文件中
        BOOL bval = [NSKeyedArchiver archiveRootObject:xiaohong toFile:PATH];
        if(bval)
        {
            NSLog(@"归档成功");
        }
        else{
            NSLog(@"归档失败");
        }
        
        //NSKeyedUnarchiver为解档类，解档类调用的方法一定要匹配上归档的方法，也就是归档到文件，那么从文件中解档，归档到数据流，从数据流中解档；
        //unarchiveObjectWithFile:从文件中解档，调用该方法，会执行协议中实现的解档方法：initWithCoder
        id obj = [NSKeyedUnarchiver unarchiveObjectWithFile:PATH];
        NSLog(@"%@",obj);
        
        
    }
    return 0;
}
