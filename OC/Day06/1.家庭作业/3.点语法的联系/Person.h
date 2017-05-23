//
//  Person.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

//第三种用法：省略属性，那么会变成@private权限，在类外不能访问，在继承关系中也不访问，不省略属性，默认为@protected权限，在类外不能访问，在继承关系中可以访问
@interface Person : NSObject
/*{
    NSString *_name;
    NSInteger _age;
    NSString *_identical;
}*/

//@property关键字的用法：可用于简化set/get的写法
//简化的时候一定要注意规范：带的变量名为属性名去掉‘_’
@property NSString *name;
@property NSString *identical;
@property NSInteger age;

/*-(void)setName:(NSString *)name;
-(NSString *)name;
-(void)setAge:(NSInteger)age;
-(void)setIdentical:(NSString *)identical;
-(NSInteger)age;
-(NSString *)identical;*/

@end
