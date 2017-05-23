//
//  main.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PATH @"/Users/qianfeng/test"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //创建文件管理器
        NSFileManager *file = [NSFileManager defaultManager];
       //浅度遍历指定文件，并将文件存储到数组中
        NSArray *array = [file contentsOfDirectoryAtPath:PATH error:nil];
       // NSLog(@"%@",array);
        NSMutableDictionary *mutDic = [NSMutableDictionary dictionary];
        //1.将扩展名作为key，文件名作为值，遍历存储到可变字典中
        /*for (id obj in array) {
            [mutDic setObject:[obj stringByDeletingPathExtension] forKey:[obj pathExtension]];
        }
        NSLog(@"%@",mutDic);*/
        //2.将判断有相同的扩展名，作为key，值为可变数组；根据题意，先给定初始化空的可变数组
        for (id obj in array) {
            //将创建空的可变数组放入循环中
            NSMutableArray *mutArr = [NSMutableArray array];
            //值为空的可变数组，目的就是为了保证key唯一
            [mutDic setObject:mutArr forKey:[obj pathExtension]];
        }
        NSLog(@"%@",mutDic);
        
        for (id obj in array) {
            
            //把key对应的可变数组取出，可变数组为空，目的为了存值
            NSMutableArray *mutArr = [mutDic objectForKey:[obj pathExtension]];
            //给可辨数组存值
                [mutArr addObject:[obj stringByDeletingPathExtension]];
            //c指针的作用：操作可变数组添加值，实际是给可变字典的内容添加值
            
        }
        NSLog(@"%@",mutDic);

    }
    return 0;
}
