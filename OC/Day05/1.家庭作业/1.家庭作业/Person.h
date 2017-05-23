//
//  Person.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
}

-(void)setName:(NSString *)name;
-(NSString*)name;

@end
