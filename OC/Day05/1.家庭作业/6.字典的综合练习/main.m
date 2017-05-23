//
//  main.m
//  6.字典的综合练习
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *guanyu = [[Person alloc] init];
        Person *zhaoyun = [[Person alloc] init];
        Person *machao = [[Person alloc] init];
        Person *zhangfei = [[Person alloc] init];
        Person *huangzhong = [[Person alloc] init];
        [guanyu setName:@"yunchang" andAge:36 andSex:'M'];
        [zhaoyun setName:@"zilong" andAge:34 andSex:'M'];
        [machao setName:@"chaoge" andAge:32 andSex:'M'];
        [zhangfei setName:@"yide" andAge:30 andSex:'M'];
        [huangzhong setName:@"hansheng" andAge:60 andSex:'M'];
        
        //需创建可变字典，对对象进行增、删、改 ,创建空字典
        NSMutableDictionary *mutDic = [NSMutableDictionary dictionary];
        //调用对象的get方法[guanyu name]，获取对象名
        //可变字典的增加，重写description，去打印对象的描述
        [mutDic setObject:guanyu forKey:[guanyu name]];
        [mutDic setObject:zhaoyun forKey:[zhaoyun name]];
        [mutDic setObject:machao forKey:[machao name]];
        [mutDic setObject:zhangfei forKey:[zhangfei name]];
        [mutDic setObject:huangzhong forKey:[huangzhong name]];
        [machao setName:@"chaoge" andAge:28 andSex:'W'];
        //当字典中有相同的key，那么setObject是修改
        [mutDic setObject:machao forKey:[machao name]];
        NSLog(@"mutDic=%@",mutDic);
        //通过key取对象值  查找key
        id obj = [mutDic objectForKey:@"zilong"];
        NSLog(@"key名，查找值为:%@",obj);
        
        //通过遍历判断查找出匹配年龄的对象
        //通过枚举器求出value,使用objectEnumerator方法，将字典中的所有key放入枚举器
        NSInteger age = 36;   //假设要取36岁年龄的对象
        NSEnumerator *enumer = [mutDic keyEnumerator];
        Person *obj1 = nil;
        //循环将容器中的key取出,放入obj中
        while (obj = [enumer nextObject]) {
            obj1 = mutDic[obj];  //通过key取出value对象值赋值给obj1
            //判断匹配年龄，匹配了，就打印出来
            if([obj1 age] == age)
            {
                NSLog(@"匹配年龄的对象：%@",obj1);
                //删除相同年龄的键值对
                [mutDic removeObjectForKey:obj];
                break;
            }
        }
        NSLog(@"mutDic = %@",mutDic);
    }
    return 0;
}
