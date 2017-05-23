//
//  main.m
//  8.pList文件的读写
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PATH @"/Users/qianfeng/Work/sz_1527/Day08/1.家庭作业/8.pList文件的读写/Property List.plist"
#define PATH1 @"/Users/qianfeng/Desktop/test/a.plist"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
      //plist数据的读取，要么以字典读取，要么以数组读取
        //以字典方式存储，就用字典类获取；以数组方式存储，就用数组类获取
  
//plist的读取
        //dictionaryWithContentsOfFile和arrayWithContentsOfFile只能读取pist文件
        NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:PATH];
        NSLog(@"dic=%@",dic);  //如果plist是以数组存储，那么用字典获取不到数据
        
        NSArray *array = [NSArray arrayWithContentsOfFile:PATH];
        NSLog(@"array=%@",array);

//调用方法写入数据到plist
        int a = 111;
        //将普通类型可转换成NSNumber类型进行存储，数字类
        //对象方法
        NSNumber *numA = [[NSNumber alloc] initWithInt:a];
        //类方法
        //NSNumber *numA = [NSNumber numberWithInt:a];
        //NSArray *array1 = @[@"i",@"am",@"handsome",@"man"];
        NSArray *array1 = [NSArray arrayWithObjects:@"handsome",numA,@"man", nil];
        //writeToFile:将数组或字典数据写入到plist中
        BOOL bval = [array1 writeToFile:PATH1 atomically:YES];
        if(bval)
        {
            NSLog(@"数据写入成功!");
        }
        else{
            NSLog(@"数据写入失败!");
        }
        
    }
    return 0;
}
