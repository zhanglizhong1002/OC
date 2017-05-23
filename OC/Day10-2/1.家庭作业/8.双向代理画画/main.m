//
//  main.m
//  8.双向代理画画
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Aster.h"
#import "Spaner.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Aster *zihua = [[Aster alloc] init];
        Spaner *xiaopan = [[Spaner alloc] init];
        zihua.delegate = xiaopan;  //画家委托纺织工对象作为代理人
        [zihua start];     //纺织工织毛衣  画家让代理人启动工作
        
        xiaopan.delegate = zihua;  //纺织工的代理人为画家的对象
        [xiaopan start];   //画家画画   纺织工让代理人启动工作
    }
    return 0;
}
