//
//  StationTV2.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StationTV2 : NSObject
{
    NSString *_word1;
    NSString *_word2;
}

-(void)setWord1:(NSString *)word1 andWord2:(NSString*)word2;
-(NSString *)word1;
-(NSString *)word2;
-(void)replaceWord:(NSString*)oristr;

@end
