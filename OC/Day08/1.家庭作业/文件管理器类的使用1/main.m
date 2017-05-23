//
//  main.m
//  文件管理器类的使用1
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PATH @"/Users/qianfeng/test"
#define PATH1 @"/Users/qianfeng/test/a.png"   //文件路径
#define PATH2 @"/Users/qianfeng/test/abc"     //目录路径


int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        //NSFileManager是一个单例类
        NSFileManager * file1 = [NSFileManager defaultManager];
        NSFileManager *file2 = [NSFileManager defaultManager];
        //单例类只初始化一次
        NSLog(@"file1=%p",file1);
        NSLog(@"file2=%p",file2);
        
        //遍历指定的当前目录的方法
        NSFileManager *file = [NSFileManager defaultManager];
        //contentsOfDirectoryAtPath: 浅度遍历 只找当前目录，不显示子目录
        //参数1:路径   参数2: 错误提示
        NSError *error=nil;   //NSError 保存错误信息的类
        NSArray *array = nil;
#if 1
        array = [file contentsOfDirectoryAtPath:PATH error:&error];
        if(error)
        {
            NSLog(@"err=%@",error);
        }
        else{
            NSLog(@"success array=%@",array);
        }
#endif
        //subpathsOfDirectoryAtPath:深度遍历，一层一层往下找，并显示当前指定路径下的所有文件或目录
        //参数1:路径   参数2: 错误提示
#if 1
        array = [file subpathsOfDirectoryAtPath:PATH error:&error];
        if(error)
        {
            NSLog(@"err=%@",error);
        }
        else{
            NSLog(@"success2 array=%@",array);
        }
#endif
        
        //创建文件或目录
         //fileExistsAtPath:判断文件或目录是否存在的方法
        BOOL bval = [file fileExistsAtPath:PATH1];
        if(bval)
        {
            NSLog(@"该文件或目录存在");
        }
        else{
            NSLog(@"该文件不存在!");
            //createFileAtPath:创建文件的方法
            //参数1：文件路径 ，参数2:NSData是存储二进制数据流的类，也就是创建文件时是否需给定数据
            //参数3：创建文件时设置相关属性
            bval = [file createFileAtPath:PATH1 contents:nil attributes:nil];
            if(bval)
            {
                NSLog(@"创建文件成功!");
            }
            else{
                NSLog(@"创建文件失败!");
            }
        }
        
        bval = [file fileExistsAtPath:PATH2];
        if(bval)
        {
            NSLog(@"目录存在！");
        }
        else{
            NSLog(@"目录不存在!");
            //createDirectoryAtPath:创建目录的方法
            //参数1:路径
            //参数2:创建目录时是否需要中间路径，YES表示需要，NO表示不需要，一般写为YES
            bval = [file createDirectoryAtPath:PATH2 withIntermediateDirectories:YES attributes:nil error:&error];
            if(bval)
            {
                NSLog(@"目录创建成功!");
            }
            else{
                NSLog(@"失败！err=%@",error);
            }
        }

    }
    return 0;
}
