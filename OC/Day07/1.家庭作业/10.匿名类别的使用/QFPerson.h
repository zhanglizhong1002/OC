//
//  QFPerson.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFPerson : NSObject
{
    NSString *_name;
}
@property(nonatomic,copy)NSString *name;
-(void)print;
@end
