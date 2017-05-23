//
//  main.m
//  简单的JSon解析
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define QF_LOCAL @"http://10.0.8.8/sns/my/login.php"

#define BOOK_FILE @"/Users/qianfeng/Desktop/OC/本地接口文件/豆瓣图书.txt"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
#if 1
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:QF_LOCAL]];
        //通过json序列化解析数据流中存储的数据，返回到字典中
        //返回的数据要么存储为字典要么为数组，由json数据决定，最外层为‘｛｝’，则用字典接收，最外层为'[]'，则用数组接收
        //JSONObjectWithData:JSON解析数据流的方法
        //NSJSONReadingMutableContainers: 改参数说明可用可变字典货可变数组接收json解析的数据；
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"dic=%@",dic);
        //objectForKey:通过key取值
        //NSLog(@"message:%@",[dic objectForKey:@"message"]);
        NSLog(@"message:%@",dic[@"message"]);  //json解析习惯用该方法：dic[@"message"]
        
        NSNull *myNull = dic[@"m_auth"];  //NSNull 标示一个空类型的值，一般用于作标示
        NSLog(@"空类型：%@",myNull);
        
        NSNumber *uid = dic[@"uid"];  //NSNumber是一个数字类，可用于将普通数字类型转成该类型，在JSON中或plist中进行存储
        NSLog(@"NSNumber:%@",uid);
#endif
        //在豆瓣图书URL中找“纯爱”、average、summary
        //解析本地URL使用：fileURLWithPath
        NSData *bookData = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:BOOK_FILE]];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:bookData options:NSJSONReadingMutableContainers error:nil];
        //NSLog(@"%@",dic[@"tags"]);  //取出tags的内容，内容为数组，显示所有数组元素
        NSLog(@"%@",dic[@"tags"][6]);  //取出tags内容的第6个下标元素
        NSLog(@"%@",dic[@"tags"][6][@"name"]);  //取出tags内容的第6个下标元素,并将第6个元素的对应key的value取出
        NSLog(@"average:%@",dic[@"rating"][@"average"]);
        NSLog(@"summary:%@",dic[@"summary"]);
        
    }
    return 0;
}
