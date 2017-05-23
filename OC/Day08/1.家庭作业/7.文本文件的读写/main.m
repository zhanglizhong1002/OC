//
//  main.m
//  7.文本文件的读写
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PATH @"/Users/qianfeng/test/d.txt"
#define PATH2 @"/Users/qianfeng/Desktop/test"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *strFile = @"guo qing kuai le !";
        //writeToFile:文本文件的数据写入方法，会将文件内容清空，再写入数据
        BOOL bval = [strFile writeToFile:PATH atomically:YES encoding:NSUTF8StringEncoding error:nil];
        if(bval)
        {
            NSLog(@"文件写入成功!");
        }
        else{
            NSLog(@"文件写入失败");
        }
        
        //stringWithContentsOfFile:文本文件的数据读取方法，
        NSString *strRead = [NSString stringWithContentsOfFile:PATH encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"strRead=%@",strRead);
        
        //总结：对于文本文件的读写方法，只能针对文本文件，不能读写非文本文件（例如图片、视频）
        
        //练习
        //1. 初始化文件管理器
        NSFileManager *file = [NSFileManager defaultManager];
        //2. 创建一个目录
        if([file fileExistsAtPath:PATH2])
        {
            NSLog(@"目录已存在!");
        }else{
            BOOL bval =  [file createDirectoryAtPath:PATH2 withIntermediateDirectories:YES attributes:nil error:nil];
            if(bval)
            {
                NSLog(@"目录创建成功!");
            }
            else{
                NSLog(@"目录创建失败!");
            }
        }
        
        NSString *strFile1 = @"/a.txt";
        strFile1 = [PATH2 stringByAppendingString:strFile1];
        if([file fileExistsAtPath:strFile1])
        {
            NSLog(@"文件已存在!");
        }else{
            bval = [file createFileAtPath:strFile1 contents:nil attributes:nil];
            if(bval)
            {
                NSLog(@"文件创建成功");
            }
            else{
                NSLog(@"文件创建失败");
            }
        }
 
#if 0     //方法1: 通过NSFileHandle方式读写数据
        NSString *strWrite = @"I am a handsome man";
        NSFileHandle *handle = [NSFileHandle fileHandleForUpdatingAtPath:strFile1];
        if(handle)
        {
            NSLog(@"句柄打开成功!");
            //字符串转数据流 dataUsingEncoding
            NSData *data = [strWrite dataUsingEncoding:NSUTF8StringEncoding];
            [handle writeData:data];
            
            [handle seekToFileOffset:7];
            NSData *dataFile = [handle readDataToEndOfFile];
            //数据流转字符串 initWithData;
            NSString *strRead = [[NSString alloc] initWithData:dataFile encoding:NSUTF8StringEncoding];
            NSLog(@"获取数据：%@",strRead);
        }
        else{
            NSLog(@"句柄打开失败!");
        }
#endif
        
//方法二：使用字符串直接读取或写入数据
        NSString *str = @"I AM A HANDSOME MAN";
        //writeToFile: 将字符串数据写入到文件中
        bval = [str writeToFile:strFile1 atomically:YES encoding:NSUTF8StringEncoding error:nil];
        if(bval)
        {
            NSLog(@"文件写入成功!");
        }
        else{
            NSLog(@"文件写入失败!");
        }
        //stringWithContentsOfFile:把文件数据读取到str字符串中
        str = [NSString stringWithContentsOfFile:strFile1 encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"获取数据:%@",str);
        NSString *subStr = [str substringFromIndex:7];
        NSLog(@"str=%@",subStr);
    }
    return 0;
}
