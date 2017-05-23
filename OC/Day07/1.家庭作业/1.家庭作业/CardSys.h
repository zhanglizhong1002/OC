//
//  CardSys.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface CardSys : NSObject
{
    NSMutableArray *_mutArr;
}

@property(nonatomic,retain)NSMutableArray *mutArr;

-(void)addCard:(Card *)card;
-(Card *)search:(NSString *)name;

-(void)print;

@end
