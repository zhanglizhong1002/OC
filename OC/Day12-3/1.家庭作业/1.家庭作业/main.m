//
//  main.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/13.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MoiveModel.h"
#import "TagsModel.h"

#define FILE_URL @"/Users/qianfeng/Desktop/OC/本地接口文件/爱限免.txt"

#define PATH @"/Users/qianfeng/Desktop/test.txt"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSData *data = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:FILE_URL]];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSInteger len = [dic[@"subjects"] count];
        TagsModel *tag = [[TagsModel alloc] init];
        for(NSInteger i=0;i<len;i++)
        {
            MoiveModel *move = [[MoiveModel alloc] init];
            
            move.title = dic[@"subjects"][i][@"subject"][@"title"];
            move.average = dic[@"subjects"][i][@"subject"][@"rating"][@"average"];
            move.name   = dic[@"subjects"][i][@"subject"][@"directors"][0][@"name"];
            [tag.mutArr addObject:move];
        }
        
        for (id obj in tag.mutArr) {
            NSLog(@"%@",obj);
        }
        
        NSLog(@"查找：%@",[tag searchTitle:@"7.1"]);
    
        BOOL bval = [NSKeyedArchiver archiveRootObject:tag.mutArr toFile:PATH];
        if(bval)
        {
            NSLog(@"归档成功");
        }
        else{
            NSLog(@"归档失败");
        }
        
        NSArray *array = [NSKeyedUnarchiver unarchiveObjectWithFile:PATH];
        for (id obj in array) {
            NSLog(@"解档后:%@",obj);
        }
        
        

    }
    return 0;
}
