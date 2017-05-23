//
//  Rectangle.h
//  3-加法器
//
//  Created by qianfeng on 15-9-21.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
{
    CGFloat _length;
    CGFloat _width;
    CGFloat _area;
    CGFloat _circle;
}

- (void)setLength:(CGFloat)length andWidth:(CGFloat)width;

- (void)showArea;

- (void)showCircle;

@end
