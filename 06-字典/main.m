//
//  main.m
//  06-字典
//
//  Created by Kyle.Z on 16/8/18.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 Array:
 @[obj1, obj2, ...];
 arr[0];
 
 Dictionary:
 @{key1: value1, key2: value2, ...};
 dic[key1]
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         字典：存储键值对，无序性
         key(唯一)---->value(可相同)
         索引------->内容
         */
        //1.
        NSDictionary *dic = [NSDictionary dictionaryWithObject:@"jack" forKey:@"name"];//单键值对不可变字典
        //2.
        NSArray *keys = @[@"name", @"address",@"age"];
        NSArray *values = @[@"Jack", @"Beijing", @"18"];
        NSDictionary *dic1 = [NSDictionary dictionaryWithObjects:values forKeys:keys];
        //3.
        NSDictionary *dic2 = @{@"name": @"jack", @"address": @"Beijing", @"age": @"18"};//Common
        //取值
        id obj1 = [dic2 objectForKey:@"name"];
        id obj2 = dic2[@"age"];
        
        NSLog(@"name = %@, age = %@", obj1, obj2);
        NSLog(@"dic2 = %@\ncount = %ld", dic2, dic2.count);
        
        //遍历字典1.
        NSString *keys1 = [dic2 allKeys];
        for (NSString *key in keys1) {
            NSLog(@"%@ - %@", key, dic2[key]);
        }
        //遍历字典2.
        [dic2 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"%@ -- %@", key, obj);
        }];

        //可变字典
        NSMutableDictionary *mdic1 = [NSMutableDictionary dictionary];
        [mdic1 setObject:@"moon" forKey:@"name"];
        //再次给key赋值会途欢key的值moon->sun
        [mdic1 setObject:@"sun" forKey:@"name"];
        
        NSLog(@"name = %@", mdic1[@"name"]);
   
    }
    return 0;
}
