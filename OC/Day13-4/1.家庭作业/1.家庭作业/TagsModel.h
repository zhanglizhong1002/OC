//
//  TagsModel.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UserModel.h"

@interface TagsModel : NSObject

@property(nonatomic,strong)NSMutableArray *mutArr;

-(id)searchNameOrAge:(NSString *)name;

@end
