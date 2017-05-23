//
//  main.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GDataXMLNode.h"

#import "UserModel.h"
#import "TagsModel.h"

#define PATH_XML @"/Users/qianfeng/Documents/sz1527/文件资料/users.xml"

#define PATH @"/Users/qianfeng/Desktop/a.txt"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSData *data = [NSData dataWithContentsOfFile:PATH_XML];
        GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:data options:0 error:nil];
        NSString *xPath = @"//user";
        NSArray *array = [doc nodesForXPath:xPath error:nil];
        NSInteger len = [array count];
        //NSLog(@"%ld",len);
        TagsModel *tags = [[TagsModel alloc] init];
        for(NSInteger i=1;i<=len;i++)
        {
            UserModel *user = [[UserModel alloc] init];
            xPath = [NSString stringWithFormat:@"/Users/user[%ld]/name",i];
            //循环遍历打印name的基本值
            array = [doc nodesForXPath:xPath error:nil];
            //NSLog(@"%ld--%@",i,[array[0] stringValue]);
            user.name = [array[0] stringValue];
            //循环遍历打印age的基本值
            xPath = [NSString stringWithFormat:@"/Users/user[%ld]/age",i];
            array = [doc nodesForXPath:xPath error:nil];
            user.age = [array[0] stringValue];
            //循环遍历打印age的基本值
            xPath = [NSString stringWithFormat:@"/Users/user[%ld]/age/@type",i];
            array = [doc nodesForXPath:xPath error:nil];
            user.type = [array[0] stringValue];
            
            [tags.mutArr addObject:user];
        }
        
        for (id obj in tags.mutArr) {
            NSLog(@"%@",obj);
        }
        
        //查找name或age
        NSLog(@"查找name返回：%@",[tags searchNameOrAge:@"王五2222"]);
        
        BOOL bval = [NSKeyedArchiver archiveRootObject:tags.mutArr toFile:PATH];
        if(bval)
        {
            NSLog(@"归档成功");
        }else{
            NSLog(@"归档失败");
        }
        
        array = [NSKeyedUnarchiver unarchiveObjectWithFile:PATH];
        
        
        
    }
    return 0;
}
