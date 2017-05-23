//
//  main.m
//  5.学生管理系统
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "ClassManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *wukong = [[Student alloc] init];
        wukong.name = @"sunwukong";
        wukong.num = @"001";
        wukong.score = 80;
        wukong.telePhone = @"13312343333";
        //NSLog(@"%@",wukong);
        
        Student *bajie = [[Student alloc] init];
        bajie.name = @"zhubajie";
        bajie.num = @"002";
        bajie.score = 60;
        bajie.telePhone = @"13333333388";
        //NSLog(@"%@",bajie);
    
        Student *shasen = [[Student alloc] init];
        shasen.name = @"shasen";
        shasen.num = @"003";
        shasen.score = 68;
        shasen.telePhone = @"13333333355";
        
        
        Student *xiaobai = [[Student alloc] init];
        xiaobai.name = @"bailongma";
        xiaobai.num = @"004";
        xiaobai.score = 59;
        xiaobai.telePhone = @"13333333344";

        
        ClassManager *manage = [[ClassManager alloc] init];
        [manage addSutdent:wukong];  //添加
        [manage addSutdent:xiaobai];
        [manage addSutdent:bajie];
        [manage addSutdent:shasen];
        [manage print];  //打印
        
        manage.classNum = @"ios_9527";
        manage.teacher = @"tangsen";
        
        //删除
        //[manage deleteNum:@"004"];
        //NSLog(@"查找：%@",[manage searchNum:@"003"]); //查找
        [manage print];
        [manage sortStudent:0];
        [manage print];
        [manage sortNum];
        [manage print];

    }
    return 0;
}
