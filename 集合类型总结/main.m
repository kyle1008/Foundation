//
//  main.m
//  集合类型总结
//
//  Created by Kyle.Z on 16/8/18.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *persons = @[
      @{@"name": @"jack", @"qq": @"123456324", @"age": @"35", @"book": @[@"三国演义", @"战国七雄", @"iOS Language"]},
      @{@"name": @"pony", @"qq": @"12345", @"age": @"24"},
      @{@"name": @"musk", @"qq": @"22353462", @"age": @"27"}];
        
        NSArray *str = persons[0][@"book"][0];
        NSLog(@"%@", str);
    }
    return 0;
}
