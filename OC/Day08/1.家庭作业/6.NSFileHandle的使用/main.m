//
//  main.m
//  6.NSFileHandle的使用
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PATH @"/Users/qianfeng/Desktop/chengzi.rtf"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
         //NSFileHandle:获取的是打开文件的句柄，而不是目录
        //fileHandleForReadingAtPath:  以只读的方式获取文件句柄
        //fileHandleForWritingAtPath:  以只写的方式获取文件句柄
        //fileHandleForUpdatingAtPath: 以读写的方式获取文件句柄  推荐
        NSFileHandle *handle = [NSFileHandle fileHandleForUpdatingAtPath:PATH];
        if(handle)
        {
            NSLog(@"文件句柄获取成功");
       
    //文件的读取，通过句柄读取
#if  0
            //NSData: 存储二进制数据流的类 ，可存储文本数据，也可存储非文本数据
            //readDataOfLength:  读取文件长度，默认从文件开头开始读取
            //[handle seekToFileOffset:10]; //seekToFileOffset 偏移10个长度
            //NSData *data = [handle readDataOfLength:6];
            NSData *data = [handle readDataToEndOfFile];//readDataToEndOfFile  从偏移位置开始，一直读到文件末尾
            NSLog(@"data = %@",data);
            //将NSData转NSString，这样可看出文件内容
            //initWithData: NSData转NSString的方法
            
            NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"str=%@",str);
#endif
    //文件的写入，通过句柄写入
            NSString *strFile = @"zou zi ji de lu,qiao zi ji de dai ma";
            //NSString转数据流 ，然后再通过数据流调用方法存储到文件中
            //dataUsingEncoding: NSString转NSData的方法
            NSData *data = [strFile dataUsingEncoding:NSUTF8StringEncoding];
            //writeData: 通过句柄调用的方法，将数据流存储到文件中
            [handle writeData:data]; //默认从文件最开始的位置写入，
            [handle writeData:data]; //写入第二条时，接着上一条的位置继续写入
            
            //seekToEndOfFile:偏移到文件末尾的位置
            [handle seekToEndOfFile];
            strFile = @"OK,9527";
            data = [strFile dataUsingEncoding:NSUTF8StringEncoding];
            //在最末尾的位置写入数据流
            [handle writeData:data];
        }
        else{
            NSLog(@"文件句柄获取失败");
        }

    }
    return 0;
}
