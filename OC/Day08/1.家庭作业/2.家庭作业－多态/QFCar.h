//
//  QFCar.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFCar : NSObject
{
    NSString *_bland;
    CGFloat  _price;
}
@property(nonatomic,copy)NSString *bland;
@property(nonatomic,assign)CGFloat price;

-(void)start:(QFCar *)car;
-(void)loader;

@end
