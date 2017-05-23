//
//  Dog.m
//  3-加法器
//
//  Created by qianfeng on 15-9-21.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)setName:(char *)name
{
    _name = name;
}
- (void)setName:(char *)name andAge:(NSUInteger)age andWeigth:(CGFloat)weight
{
    _name = name;
    _age = age;
    _weight = weight;
}

- (void)show
{
    NSLog(@"name:%s, age:%ld, weight:%f", _name, _age, _weight);
}

@end
