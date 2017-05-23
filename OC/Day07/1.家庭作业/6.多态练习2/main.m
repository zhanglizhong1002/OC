//
//  main.m
//  6.多态练习2
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Animal.h"
#import "Person.h"
#import "QFCat.h"
#import "QFDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *xiaoxin = [[Person alloc] init];
        Animal *ani = [[Animal alloc] init];
        QFDog *xiaobai = [[QFDog alloc] init];
        QFCat *xiaohei = [[QFCat alloc] init];
        [xiaoxin hit:ani];
        [xiaoxin hit:xiaobai];
        [xiaoxin hit:xiaohei];
        
    }
    return 0;
}
