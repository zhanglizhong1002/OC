//
//  QFPerson.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "QFPerson.h"

@implementation QFPerson

- (void)dealloc
{
    [_dog release];   //在QFPerson析构之前，先把QFDog析构掉
    
    NSLog(@"QFPerson delloc");
    [super dealloc];
}

-(id)init
{
    self = [super init];
    if(self)
    {
        _dog = [[QFDog alloc] init];   //开辟空间对应的一定要调dealloc，否则内存泄漏
    }
    return self;
}

-(void)setDog:(QFDog *)dog
{
    //_dog = dog;   //MRC模式下不能直接赋值
    if(_dog != dog)
    {
        NSLog(@"-----retainCount=%ld",[_dog retainCount]);  //1
        [_dog release];  //如果传入的dog地址不相等，先把初始化的alloc给release掉   引用计数为0
        _dog = [dog retain];
        NSLog(@"......retainCount=%ld",[_dog retainCount]);  //_dog先进行release，然后将_dog与dog同指向main函数传递进来的实参地址，引用计数为2
    }
    
    //[_dog release];   //不能在此处进行release
}


@end
