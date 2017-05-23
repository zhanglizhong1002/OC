//
//  main.m
//  5.练习数据建模
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QFModel.h"
#import "TasModel.h"

#define FILE_URL @"/Users/qianfeng/Documents/sz1527/本地接口文件/千锋淘宝.txt"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSData *data = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:FILE_URL]];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSInteger len = [dic[@"List"] count]; //dic[@"List"]求出数组 再count求的是数组个数
        TasModel *tas = [[TasModel alloc] init];
        for(NSInteger i=0;i<len;i++)
        {
            QFModel *qfmodel = [[QFModel alloc] init];
            qfmodel.name = dic[@"List"][i][@"name"];
            qfmodel.nick = dic[@"List"][i][@"nick"];
            qfmodel.price = dic[@"List"][i][@"price"];
            [tas.mutArr addObject:qfmodel];
        }
        
        for (id obj in tas.mutArr) {
            NSLog(@"%@",obj);
        }

    }
    return 0;
}
