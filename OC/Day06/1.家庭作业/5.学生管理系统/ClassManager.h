//
//  ClassManager.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface ClassManager : NSObject
{
    NSString *_classNum;
    NSString *_teacher;
    NSMutableArray *_mutArr;   //通过可变数组存储一个一个学生的对象
}

@property(nonatomic,copy)NSString *classNum;
@property(nonatomic,copy)NSString *teacher;
//@property(nonatomic,retain)NSMutableArray *mutArr;

-(void)addSutdent:(Student *)student;
-(void)print;
-(Student *)searchNum:(NSString *)num;
-(void)deleteNum:(NSString *)num;

-(void)sortStudent:(NSInteger)score;
-(void)sortNum;

@end
