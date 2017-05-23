//
//  main.m
//  多态的应用
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QFDog.h"
#import "QFCat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        QFDog *dahuang=[[QFDog alloc] init];
        QFCat *dahua = [[QFCat alloc] init];
        Animal *ani = [[Animal alloc] init];
#if 1      //多态的第一种用法，父类对象直接指向子类对象
        [ani bark];
        ani = dahua;  //父类指向子类对象
        [ani bark];  //不同的对象调用相同的方法，产生不同的结果
        //[dahua bark];    //重写方法
        //[dahuang bark];
        ani = dahuang;  //父类指向子类对象
        [ani bark];
#endif
        //多态的应用第二种用法（重要）－－形参(父类对象)－－实参(子类对象)
        //也就是以函数的形式，表现出父类指向子类对象
        //类似于函数指针用法，多态应用可统一子类的多个接口
        [ani startCall:dahuang];
        [ani startCall:dahua];
        
        
        //总结：构成多态的条件：
        //1.必须是继承关系
        //2.必须有重写
        //3.父类对象指向子类对象
    }
    return 0;
}
