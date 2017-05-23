//
//  main.m
//  2.NSURL初步认识
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define LOCAL_URL @"/Users/qianfeng/test/d.txt"

#define BAIDU_URL @"https://www.baidu.com"

#define IMAGE_URL @"http://pic.nipic.com/2007-11-09/200711912230489_2.jpg"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
     //fileURLWithPath: 创建本地的NSURL
        
        NSURL *localURL = [NSURL fileURLWithPath:LOCAL_URL];
     //stringWithContentsOfURL: 通过字符串方式取出NSURL路径中的文件内容
        NSString *strFIle = [NSString stringWithContentsOfURL:localURL encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"本地URL数据：%@",strFIle);
        
        
        //URLWithString:创建远程的NSURL
        NSURL *RemoteURL = [NSURL URLWithString:BAIDU_URL];
        //通过字符串读取远程URL数据
        NSString *strRemo = [NSString stringWithContentsOfURL:RemoteURL encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"远程URL数据：%@",strRemo);
        //显示协议号的方法：scheme
        NSLog(@"协议：%@",[RemoteURL scheme]);
        //显示NSURL的主机名：host
        NSLog(@"host:%@",[RemoteURL host]);
        
        //通过NSData方式取出URL数据
        NSData *data = [NSData dataWithContentsOfURL:RemoteURL];
        //NSLog(@"%@",data);
        //数据流转字符串: initWithData
        NSString *strData = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"strData = %@",strData);
        
        //writetofile
        //练习1:下载一张图片保存到本地桌面
        //1.创建原创URL：URLWithString
        NSURL *imageURL = [NSURL URLWithString:IMAGE_URL];
        //2.使用数据流的方式，读取url；
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
        //3.将数据流保存到本地存储
        [imageData writeToFile:@"/Users/qianfeng/Desktop/a.jpg" atomically:YES];
        
    }
    return 0;
}
