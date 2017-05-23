//
//  main.m
//  9.继承类的扩展
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QFAnimal+Run.h"
#import "QFPig.h"
#import "QFAnimal.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //给QFAnimal类扩展一个类别的方法run，直接调用该方法即可
        QFAnimal  *ani = [[QFAnimal alloc] init];
        [ani run];
        QFPig *jianqiang = [[QFPig alloc] init];
        [jianqiang run];  //类别扩展的方法也具备继承性，也就是说，本来是给父类扩展类别的方法，因为子类的继承关系，所以子类也可调用扩展的方法
        
    }
    return 0;
}
