//
//  Truck.h
//  1.回顾类和对象
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Truck : NSObject
{
    char *_bland;
    NSInteger _speed;
}
//不带参数的构造方法
-(id)init;
//带参数的构造方法  注意：带参数构造方法一定是以initWith开头
-(id)initWithBland:(char*)bland andSpeed:(NSInteger)speed;
-(void)setBland:(char*)bland andSpeed:(NSInteger)speed;
-(char *)bland;
-(NSInteger)speed;

@end
