//
//  TeleBook.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "TeleBook.h"

@implementation TeleBook

-(id)init
{
    self = [super init];
    if(self)
    {
        _mutDic = [NSMutableDictionary dictionary];
        _name = @"";
        _telePhone = @"";
    }
    return  self;
}
-(void)setName:(NSString *)name andTelePhone:(NSString *)telePhone
{
    _name = name;
    _telePhone = telePhone;
}
-(NSString *)name
{
    return  _name;
}
-(NSString *)telePhone
{
    return  _telePhone;
}
-(void)addTeleBook:(TeleBook *)teleBook   //添加可变字典
{
    [_mutDic setObject:teleBook forKey:[teleBook name]];
}
-(void)print   //建print方法，打印字典
{
    NSLog(@"mutDic=%@",_mutDic);
}
//重写description，可显示每个对象
- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,telephone=%@", _name,_telePhone];
}

-(TeleBook *)searchName:(NSString *)name
{
    //根据key去查找值，objectForKey，value为一个对象
    return [_mutDic objectForKey:name];  //输入一个name的key去查找对应的对象
}

-(void)deleteObj:(NSString *)name
{
    TeleBook *obj = [self searchName:name];  //判断是否查找到匹配对象
    if(obj)
    {   //如果查找到了对应对象，就进行删除
        [_mutDic removeObjectForKey:name];
        NSLog(@"删除成功!");
    }
    else{  //没有查找到，不作删除
        NSLog(@"没有查找到");
    }
}

@end
