//
//  main.m
//  取钱协议
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BankProtocol.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        Person *xiaoming = [[Person alloc] init];
        xiaoming.name = @"xiaoming";
        
        if([xiaoming conformsToProtocol:@protocol(BankProtocol)])
        {
            if([xiaoming respondsToSelector:@selector(saveMoney:)])
            {
                [xiaoming saveMoney:10];
            }
            
            if([xiaoming respondsToSelector:@selector(money)])
            {
                NSLog(@"取了%ld万",[xiaoming money]);
            }
        }
        
        
    }
    return 0;
}
