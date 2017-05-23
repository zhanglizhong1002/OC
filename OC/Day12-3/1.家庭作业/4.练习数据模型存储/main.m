//
//  main.m
//  4.练习数据模型存储
//
//  Created by qianfeng on 15/10/13.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GDataXMLNode.h"
#import "UserModel.h"
#import "TagsModel.h"

#define PATH_XML @"/Users/qianfeng/Desktop/OC/文件资料/XML.text"

#define PATH @"/Users/qianfeng/Desktop/a.txt"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

#if 0
        NSData *data =[NSData dataWithContentsOfFile:PATH_XML];
        GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:data options:0 error:nil];
        //1. 找yearpay
        GDataXMLElement *ele = [doc rootElement];
        ele = [ele elementsForName:@"dict"][0];
        ele = [ele elementsForName:@"array"][0];
        ele = [ele elementsForName:@"dict"][0];
        NSArray *array = [ele elementsForName:@"yearpay"];
        for (id obj in array) {
            NSLog(@"%@",[obj stringValue]);
        }
        
        //2.找nickName
        GDataXMLElement *ele1 = [doc rootElement];
        ele1 = [ele1 elementsForName:@"dict"][0];
        array = [ele1 elementsForName:@"nickName"];
        for (id obj in array) {
            NSLog(@"%@",[obj stringValue]);
        }
        
        //3.找貂蝉的age
        GDataXMLElement *ele2 = [doc rootElement];
        ele2 = [ele2 elementsForName:@"dict"][0];
        ele2 = [ele2 elementsForName:@"friend"][1];
        array = [ele2 elementsForName:@"age"];
        for (id obj in array) {
            NSLog(@"%@",[obj stringValue]);
        }
#endif
        
        //扩展：将friend中的数组元素用模型存储，并将数据归档到文件中；

        NSData *data = [NSData dataWithContentsOfFile:PATH_XML];
        GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:data options:0 error:nil];
        GDataXMLElement *ele = [doc rootElement];
        ele = [ele elementsForName:@"dict"][0];
        NSArray *array = [ele elementsForName:@"friend"];
        NSInteger len = [array count];  //求friend节点元素个数
        NSLog(@"len=%ld",len);
        TagsModel *tags = [[TagsModel alloc] init];
        for(NSInteger i=0;i<len;i++)
        {
            UserModel *user = [[UserModel alloc] init];
            
            GDataXMLElement *ele = [doc rootElement];  //在循环中，每次都从根出发
            ele = [ele elementsForName:@"dict"][0];
            ele = [ele elementsForName:@"friend"][i];
            array = [ele elementsForName:@"name"];
            for (id obj in array) {
                user.name = [obj stringValue];
            }
            array = [ele elementsForName:@"age"];
            for (id obj in array) {
                user.age = [obj stringValue];
            }
            array = [ele elementsForName:@"sex"];
            for (id obj in array) {
                user.sex = [obj stringValue];
            }
            [tags.mutArr addObject:user];
        }
        
        //NSLog(@"%@",tags.mutArr);
        
        //调用归档文件的协议方法
        BOOL bval = [NSKeyedArchiver archiveRootObject:tags.mutArr toFile:PATH];
        if(bval)
        {
            NSLog(@"归档成功");
        }
        else{
            NSLog(@"归档失败");
        }
        NSArray *array2 = [NSKeyedUnarchiver unarchiveObjectWithFile:PATH];
        for (id obj in array2) {
            NSLog(@"%@",obj);
        }
        

    }
    return 0;
}
