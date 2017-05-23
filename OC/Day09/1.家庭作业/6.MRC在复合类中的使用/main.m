//
//  main.m
//  6.MRC在复合类中的使用
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QFPerson.h"
#import "QFDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        QFPerson *per = [[QFPerson alloc] init];
        
        QFDog *dog = [[QFDog alloc] init];
//        QFDog *dadog = [[QFDog alloc] init];
        
//        [per setDog:dadog];
        //注意：alloc后一定对应有dealloc
        [per setDog:dog];
        [dog release];  //release后，引用计数为1，不会调用dealloc，那么内存泄漏
        [per release];  //release后，引用计数为0，会调用dealloc
//        [dadog release];
      
    }
    return 0;
}
