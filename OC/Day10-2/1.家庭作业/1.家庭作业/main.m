//
//  main.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Car.h"
#import "Engine.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Engine *eng = [[Engine alloc] init];
        Car *car = [[Car alloc] initWithEngine:eng];
        
        [car setEngine:eng];
//        car.engine = eng;
        [car release];
        [eng release];

    }
    return 0;
}
