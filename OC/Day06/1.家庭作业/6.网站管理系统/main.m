//
//  main.m
//  6.网站管理系统
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Site.h"
#import "SiteSys.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Site *baidu = [[Site alloc] init];
        baidu.title = @"baidu";
        baidu.addr = @"www.baidu.com";
        //NSLog(@"%@",baidu);
        
        Site *sohu = [[Site alloc] init];
        sohu.title = @"sohu";
        sohu.addr = @"www.sohu.com";
        
        Site *sina = [[Site alloc] init];
        sina.title = @"sina";
        sina.addr = @"www.sina.com";
        
        Site *qianf = [[Site alloc] init];
        qianf.title = @"qianf";
        qianf.addr = @"www.qianfeng.com";
        
        SiteSys *sys= [[SiteSys alloc] init];
        [sys addSite:baidu];   //添加对象
        [sys addSite:sohu];
        [sys addSite:sina];
        [sys addSite:qianf];
        NSLog(@"%@",sys.mutDic);  //获取SiteSys的可变数组属性的方法
        
        [sys deleteforKey:@"sina"];
         NSLog(@"%@",sys.mutDic);  //获取SiteSys的可变数组属性的方法
        
        //调用查找的方法，找到，返回查找到的对象，没找到，返回nil
        NSLog(@"查找：%@",[sys searchForKey:@"qianf"]);
        [sys deleteforKey:@"qianf"];
        NSLog(@"%@",sys.mutDic);  //获取SiteSys的可变数组属性的方法


    }
    return 0;
}
