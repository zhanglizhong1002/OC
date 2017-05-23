//
//  main.m
//  Student
//
//  Created by qianfeng on 15-9-21.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    char *_name;
    NSUInteger _number;
    CGFloat _weight;
}
- (void)study;
- (void)playLoL;
- (void)setName:(char *)name;
- (void)setNumber:(NSUInteger)number;
- (void)setWeight:(CGFloat)weight;

- (void)setName:(char *)name andNumber:(NSUInteger)number andWeight:(CGFloat)weight;

- (NSUInteger)getNumber;
- (void)introduct;

@end

@implementation Student

- (void)study
{
    NSLog(@"认真学习中....");
}
- (void)playLoL
{
    NSLog(@"认真超神中....");
}
- (void)setName:(char *)name
{
    _name = name;
}
- (void)setNumber:(NSUInteger)number
{
    _number = number;
}
- (void)setWeight:(CGFloat)weight
{
    _weight = weight;
}

- (void)setName:(char *)name andNumber:(NSUInteger)number andWeight:(CGFloat)weight
{
    _name = name;
    _number = number;
    _weight = weight;
}
// 获取学号:
- (NSUInteger)getNumber
{
    return _number;
}
- (void)introduct
{
//    printf("%s", _name);
    NSLog(@"%s -- %ld -- %f", _name, _number, _weight);
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *xiaoming = nil;
        
        xiaoming = [Student alloc];
        
        [xiaoming study];
        [xiaoming playLoL];
        
        // 再一次创建一个对象:
        Student *xiaohong = [Student alloc];
        [xiaohong study];
        [xiaohong playLoL];
        
        NSLog(@"%p, %p", xiaoming, xiaohong);
        
        [xiaoming setName:"xiaoming" andNumber:11110 andWeight:56.5];
        [xiaoming introduct];
        
        [xiaohong setName:"xiaohong"];
        [xiaohong setNumber:222220];
        [xiaohong setWeight:50.5];
        [xiaohong introduct];
        
        
        
        
    }
    return 0;
}











