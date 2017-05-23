//
//  main.m
//  4.Property练习
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        Book *wuxia = [[Book alloc] init];
        //当@property的参数为readonly时，此处不能使用set
        wuxia.name = @"xiaoaojianghu";
        //wuxia.pages = 800;
        //[wuxia setAAPages:88];
        wuxia.pages = 888;
        wuxia.price = 80;
        wuxia.author = @"jinyong";
        
        NSLog(@"name=%@,pages=%ld,price=%g,author=%@",wuxia.name,wuxia.pages,wuxia.price,wuxia.author);

    }
    return 0;
}
