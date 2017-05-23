//
//  BarkProtocol.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

//1.制定协议  BarkProtocol为协议类   @protocol 制定协议的关键字
@protocol BarkProtocol <NSObject>

@required     //必须要实现的方法
-(void)bark;    //默认为@required

@optional     //可选实现的方法
-(void)eat;

@end
