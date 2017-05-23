//
//  StationTV2.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "StationTV2.h"

@implementation StationTV2

-(void)setWord1:(NSString *)word1 andWord2:(NSString*)word2
{
    _word1 = word1;
    _word2 = word2;
}
-(NSString *)word1
{
    return _word1;
}
-(NSString *)word2
{
    return _word2;
}
-(void)replaceWord:(NSString*)oristr
{
    NSMutableString *mutStr = [NSMutableString stringWithString:oristr];
    NSLog(@"替换前:%@",mutStr);
    NSInteger len = [mutStr length];
    NSRange range = [mutStr rangeOfString:_word1];
    if(range.location != NSNotFound)
    {
        [mutStr replaceOccurrencesOfString:_word1 withString:@"XX" options:NSLiteralSearch range:NSMakeRange(0, len)];
    }
    len = [mutStr length];
    range = [mutStr rangeOfString:_word2];
    if(range.location != NSNotFound)
    {
        [mutStr replaceOccurrencesOfString:_word2 withString:@"YY" options:NSLiteralSearch range:NSMakeRange(0, len)];
    }
    NSLog(@"替换后:%@",mutStr);
    
}

@end
