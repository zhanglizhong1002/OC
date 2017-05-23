//
//  TeleBook.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TeleBook : NSObject
{
    NSMutableDictionary *_mutDic;
    NSString *_name;
    NSString *_telePhone;
}

-(id)init;
-(void)setName:(NSString *)name andTelePhone:(NSString *)telePhone;
-(NSString *)name;
-(NSString *)telePhone;
-(void)addTeleBook:(TeleBook *)teleBook;   //添加可变字典
-(void)print;   //建print方法，打印字典
-(TeleBook*)searchName:(NSString *)name;
-(void)deleteObj:(NSString *)name;

@end
