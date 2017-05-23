//
//  TasModel.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TasModel : NSObject
//ARC模式存储对象，strong（强引用），weak（弱引用），MRC存储对象，retain
@property(nonatomic,strong)NSMutableArray *mutArr;

@end
