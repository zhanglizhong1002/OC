//
//  main.m
//  3.根路径解析XML
//
//  Created by qianfeng on 15/10/13.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GDataXMLNode.h"

#define PATH_XML @"/Users/qianfeng/Desktop/OC/文件资料/users.xml"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //根路径解析的步骤
        //1.用数据流或字符串获取XML文件的数据
        //2.存储到数据流或字符串中的数据放入到第三方库文档类中存储
        //3.从获取根节点出发，一层一层将数据放入第三方库存存储
        //4.在最后确定的查找值中，将解析的数据放入数组，遍历打印输出
        //5.建立数据模型，将解析出来的数据存入模型数组中
        //6.使用归档与解档方法将模型数据存入归档文件
        
        NSData *data = [NSData dataWithContentsOfFile:PATH_XML];
        GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:data options:0 error:nil];
        //rootElement: 从根路径开始取出根节点放入到GDataXMLElement类中存储
        GDataXMLElement *ele = [doc rootElement];
        
        //elementsForName: 再次取出根节点下的子元素节点，放入GDataXMLElement类中存储
        ele  = [ele elementsForName:@"user"][0];  //从根路径出发下标从0开始，与xPath解析要区分
        //如果基本元素值找出，则放入数组中存储
        NSArray *array = [ele elementsForName:@"age"];
        NSLog(@"%ld", [array count]);
        
        //遍历数组，将值转为字符串类型输出：stringValue
        for (id obj in array) {
            //NSLog(@"%@",[obj stringValue]);
            //找出age下的属性节点type的基本值
            NSLog(@"%@",[[obj attributeForName:@"type"] stringValue]);
        }
        
        
        
    }
    return 0;
}
