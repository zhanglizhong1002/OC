//
//  main.m
//  拷贝&移动&删除
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define  PATH1 @"/Users/qianfeng/test/abc"
#define  PATH2 @"/Users/qianfeng/Work/abc"   //目录路径

#define PATH3 @"/Users/qianfeng/test/a.txt"
#define PATH4 @"/Users/qianfeng/Work/b.txt"

#define PATH @"/Users/qianfeng/test"
#define PATH5 @"/Users/qianfeng/test/d.txt"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSFileManager *file = [NSFileManager defaultManager];
        
        NSError *error = nil;
        //文件管理器的拷贝应用
        //copyItemAtPath:文件或路径的拷贝，注意，拷贝、移动时最终目录不存在，如果存在会报错
        BOOL bval;
#if 1
        bval = [file copyItemAtPath:PATH1 toPath:PATH2 error:&error];
        if(bval)
        {
            NSLog(@"拷贝成功");
        }
        else{
            NSLog(@"err %@",error);
        }
        
        bval = [file copyItemAtPath:PATH3 toPath:PATH4 error:&error];
        if(bval)
        {
            NSLog(@"文件拷贝成功!");
        }else{
            NSLog(@"失败 %@",error);
        }
#endif
        
#if 1
        //moveItemAtPath:移动文件或目录的方法
        bval = [file moveItemAtPath:PATH1 toPath:PATH2 error:nil];
        if(bval)
        {
            NSLog(@"目录移动成功");
        }
        else{
            NSLog(@"失败");
        }
        
        bval = [file moveItemAtPath:PATH3 toPath:PATH4 error:nil];
        if(bval)
        {
            NSLog(@"文件移动成功");
        }
        else{
            NSLog(@"文件移动失败");
        }
#endif
#if 1
        //removeItemAtPath:删除文件或目录
        bval = [file removeItemAtPath:PATH2 error:nil];
        if (bval) {
            NSLog(@"删除目录成功");
        }
        else{
            NSLog(@"删除目录失败");
        }
        bval = [file removeItemAtPath:PATH3 error:nil];
        if (bval) {
            NSLog(@"删除文件成功");
        }
        else{
            NSLog(@"删除文件失败");
        }
#endif
        
#if 1
        //练习：删除任意一个文件夹中所有后缀名为png的文件
        //初始化单例类的对象
        NSFileManager * file1 = [NSFileManager defaultManager];
        //浅度遍历指定目录下的文件夹
        NSArray *array = [file1 contentsOfDirectoryAtPath:PATH error:nil];
        NSLog(@"%@",array);
        
        NSString *allPath = nil;
        for (NSString *obj in array) {
            //if([obj hasSuffix:@"png"]) //求字符串后缀方法hasSuffix
            if([[obj pathExtension] isEqualToString:@"png"]) //pathExtension 求文件的扩展名
            {
                //NSLog(@"%@",[obj pathExtension]);
                NSLog(@"%@",obj);  //打印png结尾的文件
                //stringByAppendingPathComponent:字符串的连接
                allPath = [PATH stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@",obj]];
                NSLog(@"allPath=%@",allPath);
                
                //removeItemAtPath:删除文件路径
                bval = [file1 removeItemAtPath:allPath error:nil];
                if(bval)
                {
                    NSLog(@"删除%@成功",allPath);
                }
                else{
                    NSLog(@"删除%@失败",allPath);

                }
            }
        }
#endif
        //attributesOfItemAtPath:文件的属性信息
        NSDictionary *dic = [file attributesOfItemAtPath:PATH5 error:nil];
        NSLog(@"dic=%@",dic);
        NSLog(@"filesize=%@",dic[NSFileSize]);  //根据key求value
        NSLog(@"filesize=%@",[dic objectForKey:NSFileSize]);
        
    }
    return 0;
}
