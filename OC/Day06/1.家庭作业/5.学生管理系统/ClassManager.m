//
//  ClassManager.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ClassManager.h"

@implementation ClassManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mutArr = [NSMutableArray array];  //建立空数组
        _teacher = @"";
        _classNum = @"";
    }
    return self;
}

-(Student *)searchNum:(NSString *)num
{
    //遍历数组，将对象遍历取出
    for (id obj in _mutArr) {
        //在循环中，将对象调学号方法，与传入的学号比较，如果相等则返回YES
        if([[obj num] isEqualToString:num])
        {
            return obj;
        }
    }
    return nil;
}

-(void)addSutdent:(Student *)student
{
    //在添加到管理系统前，做判断，先查找可变数组中是否存在了该学号，如果存在，则提示已存在，并返回，不存在则添加
    if([self searchNum:[student num]])
    {
        NSLog(@"该学号已存在");
    }
    else{
      [_mutArr addObject:student];   //添加学生对象到管理系统中
    }
  
}
-(void)print
{
    NSLog(@"teacher=%@,classNum=%@, mutArr=%@",_teacher,_classNum,_mutArr);
}

-(void)deleteNum:(NSString *)num
{
    id obj = [self searchNum:num];  //调用查找方法，找到则返回查找到的对象，没找到则返回nil
    if(obj)  //查找到对象则删除，否则提示没找到
    {
        [_mutArr removeObject:obj];
        NSLog(@"学号%@已被删除",num);
    }else{
        NSLog(@"在管理器中没找到该学号，无法删除");
    }
}

-(void)sortStudent:(NSInteger)score
{
    NSInteger len = [_mutArr count];  //求数组个数
    for(NSInteger i=0;i<len-1;i++)  //冒泡排序
    {
        for(NSInteger j=0;j<len-i-1;j++)  //len-i-1,不要忘记－1，否则溢出
        {
            if([_mutArr[j] score] > [_mutArr[j+1] score]) //求两个对象的分数，是否左边的打印右边的，如果是，那么交换
            {
                [_mutArr exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
}

-(void)sortNum
{
    NSInteger len = [_mutArr count];
    for(NSInteger i=0;i<len-1;i++)
    {
        for(NSInteger j=0;j<len-i-1;j++)
        {
            //NSOrderedAscending = -1L, NSOrderedSame, NSOrderedDescending
            //compare:如果比较两边＝＝1，则说明左边大于右边，需要交换
            if([[_mutArr[j] num] compare:[_mutArr[j+1] num]] == 1)
            {
                [_mutArr exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }

}


@end
