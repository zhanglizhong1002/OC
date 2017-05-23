//
//  Rectangle.m
//  3-加法器
//
//  Created by qianfeng on 15-9-21.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (void)setLength:(CGFloat)length andWidth:(CGFloat)width
{
    _length = length;
    _width = width;
}
- (void)showArea
{
    _area = _length * _width;
    NSLog(@"面积:%f", _area);
}

- (void)showCircle
{
    _circle = (_length + _width) * 2;
    NSLog(@"周长:%f", _circle);
}

@end
