//
//  NSString+ReserveString.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

//给NSString扩展一个方法，在接口中去声明与实现该扩展方法
@interface NSString (ReserveString)  //标示为逆序字符串的类别，名字自定义
-(NSString *)reserveString;

@end
