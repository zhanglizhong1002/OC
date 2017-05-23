//
//  main.m
//  2.xPath路径解析实例
//
//  Created by qianfeng on 15/10/13.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GDataXMLNode.h"
#define PATH_XML @"/Users/qianfeng/Documents/sz1527/文件资料/test.xml"

#define PATH_XML2 @"/Users/qianfeng/Documents/sz1527/文件资料/users.xml"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //XPath解析路径的步骤
        //1.用数据流或字符串获取XML文件的数据
        //2.存储到数据流或字符串中的数据放入到第三方库文档类中存储
        //3.根据设置的路径进行解析
        //4.建立数据模型，将解析出来的数据存入模型数组中
        //5.使用归档与解档方法将模型数据存入归档文件

    
#if 0
        //1.使用字符串获取xml文件数据
        //stringWithContentsOfFile:从文件中获取数据存入字符串
        NSString *strFile = [NSString stringWithContentsOfFile:PATH_XML encoding:NSUTF8StringEncoding error:nil];
    
        //NSLog(@"%@",strFile);
        //实例化GDataXMLDocument对象,将字符串数据存储doc中
        GDataXMLDocument * doc = [[GDataXMLDocument alloc] initWithXMLString:strFile options:0 error:nil];

        //2.使用NSData获取XML文件数据
        NSData *data = [NSData dataWithContentsOfFile:PATH_XML];
        GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:data options:0 error:nil];
        //根据xpath路径解析存入GDataXMLDocument的数据
        //NSString *xPath = @"/bookstore/book";
        //NSString *xPath = @"/bookstore/book[1]";  //xPath中下标从1开始
        //NSString *xPath = @"/bookstore/book[last()]";
        //NSString *xPath = @"//title[@lang]";
        //NSString *xPath = @"//title[@lang='eng']";
        //NSString *xPath = @"/bookstore/book[2]/price";
        //NSString *xPath = @"//book[2]/price";
        NSString *xPath = @"//price";
        
        //nodesForXPath:传入xPath路径进行解析
        NSArray *array = [doc nodesForXPath:xPath error:nil];
        //NSLog(@"%@",array);
        //在数组中取出基本值
        for (id obj in array) {
            //stringValue:将其它类型转成NSString类型，得出元素基本值
            NSLog(@"%@",[obj stringValue]);
        }
#endif
      
        //练习：
        NSData *data = [NSData dataWithContentsOfFile:PATH_XML2];
        GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:data options:0 error:nil];
        //1. 从根节点出发找出基本值“李四5555555”
        //NSString *xPath = @"/Users/user[2]/name";
        
        //2. 如何在第二个user元素中找出age元素的type属性值
        //NSString *xPath = @"//user[2]/age/@type";
        
        //3. 解析所有属性节点名为type的节点，不用考虑节点位置
        //NSString *xPath = @"//@type";
        
        //解析属性节点type＝'实岁’,把‘实岁'打印出来
        //NSString *xPath = @"//*[@type='实岁']/@type";
        
        //4. 找出元素为age的属性名 type＝’实岁’ 的基本值
        //NSString *xPath = @"//age[@type='实岁']";
        
        //5. 解析任何name节点的基本值为 ”田七44444” 的同胞age节点下的type属性节点的基本值
        NSString *xPath = @"//*[name='田七44444']/age/@type";
        
        NSArray *array = [doc nodesForXPath:xPath error:nil];
        for (id obj in array) {
            NSLog(@"%@",[obj stringValue]);
        }
        
    }
    return 0;
}
