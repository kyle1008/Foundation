//
//  main.m
//  05-集合
//
//  Created by Kyle.Z on 16/8/18.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //集合元素无序排列
        NSSet *s1 = [NSSet set];//空集合
        NSSet *s2 = [NSSet setWithObjects:@"ROSE", @"qq", @"JACK", nil];
        NSString *str1 = [s2 anyObject];//返回集合的一个对象[不一定是随机的]
        NSLog(@"str1 = %@", str1);
        //init
        NSMutableSet *mtbSet1 = [NSMutableSet set];
        NSMutableSet *mtbSet2 = [NSMutableSet setWithObjects:@"jack", @"and", @"rose", @12350, nil];
        //add
        [mtbSet2 addObject:@"123"];
        //remove
        [mtbSet2 removeObject:@12350];
        //遍历集合1.
        for (NSString *s in mtbSet2) {
            NSLog(@"%@", s);

        }
        
        //遍历集合2.
        [mtbSet2 enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"-%@-", obj);
        }];
    }
    return 0;
}
