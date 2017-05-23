//
//  FindProtocol.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FindProtocol <NSObject>

-(NSInteger)searchHouse;  //所谓代理回馈，就是需要有返回值返回信息给被代理者，让其判断是否还需要继续执行协议方法

@end
