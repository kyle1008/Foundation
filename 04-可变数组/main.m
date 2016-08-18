//
//  main.m
//  04-可变数组
//
//  Created by Kyle.Z on 16/8/18.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建不可变数组
        NSArray *arr = @[@1, @2 , @3];//不可变数组特有的创建方法
        //创建可变数组
        NSMutableArray *mtbArray = [NSMutableArray array];//空数组
        //ADD[可变数组的特有方法]
        [mtbArray addObject:@"JACK"];
        [mtbArray insertObject:@"12345" atIndex:1];
        [mtbArray addObjectsFromArray:arr];
        NSLog(@"%@", mtbArray);
        //REPLACE
        [mtbArray replaceObjectAtIndex:0 withObject:@"JACK AND ROSE"];
        //DEL
        [mtbArray removeObject:@"12345"];
        NSLog(@"%@", mtbArray);
        [mtbArray removeAllObjects];
        NSLog(@"%@", mtbArray);
        
    }
    return 0;
}
