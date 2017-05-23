//
//  Dog.h
//  3-加法器
//
//  Created by qianfeng on 15-9-21.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    char *_name;
    NSUInteger _age;
    CGFloat _weight;
}

- (void)setName:(char *)name;
- (void)setAge:(NSUInteger)age;
- (void)setWeigth:(CGFloat)weight;

- (void)setName:(char *)name andAge:(NSUInteger)age andWeigth:(CGFloat)weight;
- (void)show;

- (void)say;
- (void)salesBud;

@end







