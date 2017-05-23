//
//  main.m
//  4.建立数据模型存储JSON数据
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BookModel.h"
#import "TagsModel.h"

#define BOOK_FILE @"/Users/qianfeng/Downloads/本地接口文件/豆瓣图书.txt"

#define PATH @"/Users/qianfeng/Desktop/a.txt"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        //json解析数据存储的步骤：
        //1.建立NSURL连接（本地或远程），获取到NSData数据流
        //2.用JSON序列化将NSData数据流取出，使用字典或数组接收
        //3.使用JSON工具查找内容，层层解析字典中的数据
        //4.建立数据模型存储数据(建立BookModel类存储某个对象，建立TagsModel类存储一组BookModel实例化的对象)
        //5.使用归档/解档方式，将模型数据存储到文件中
        NSData *data = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:BOOK_FILE]];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSInteger len = [dic[@"tags"] count];
        //NSLog(@"len=%ld",len);
        TagsModel *tags = [[TagsModel alloc] init];
        
        for(NSInteger i=0;i<len;i++)
        {
            //注意BookModel一定要放在for循环里面
            BookModel *book = [[BookModel alloc] init];
            book.counts = dic[@"tags"][i][@"count"];
            book.name = dic[@"tags"][i][@"name"];
            book.title = dic[@"tags"][i][@"title"];
            [tags.mutArr addObject:book];   //将对象存储到可变数组中
        }
        //NSLog(@"%@",tags.mutArr);
        /*for (id obj in tags.mutArr) {
            NSLog(@"%@",obj);   //循环打印每一个对象
        }*/
        
        //1.归档到文件
        //归档一个数组，数组中存储多个BookModel的对象，那么会多次进入归档与解档（数组中有多少对象就会进入多少次）
        
        BOOL bval = [NSKeyedArchiver archiveRootObject:tags.mutArr toFile:PATH];
        if(bval)
        {
            NSLog(@"归档成功");
        }
        else{
            NSLog(@"归档失败");
        }
        NSArray *array = [NSKeyedUnarchiver unarchiveObjectWithFile:PATH];
        
        for (id obj in array) {
            NSLog(@"---%@",obj);
        }
        
        
        
        
        
        //2.归档到NSData数据流中：archivedDataWithRootObject
        NSData *data2 = [NSKeyedArchiver archivedDataWithRootObject:tags.mutArr];
        //从数据流中进行解当到数组：unarchiveObjectWithData
        NSArray *array2 = [NSKeyedUnarchiver unarchiveObjectWithData:data2];
        for (id obj in array2) {
            NSLog(@"++++%@",[obj name ]);
        }
        
        

    }
    return 0;
}
