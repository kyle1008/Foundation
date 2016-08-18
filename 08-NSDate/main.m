//
//  main.m
//  08-NSDate
//
//  Created by Kyle.Z on 16/8/18.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *date = [NSDate date];//GMT0标准时间
        NSLog(@"%@", date);
        //+30s
        NSDate *date1 = [NSDate dateWithTimeInterval:30 sinceDate:date];
        NSLog(@"%@", date1);
        //距1970年的时间间隔(以秒计) 【返回浮点数类型】
        NSTimeInterval intervalSeconds = [date timeIntervalSince1970];
        NSLog(@"%f", intervalSeconds);

        //日期格式
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //yyyy/MM/d/HH(24小时)/hh(12小时)/mm/ss
        formatter.dateFormat = @"MM-dd-yyyy HH:mm:ss";
        //[formatter setDateFormat:@"MM-dd-yyyy HH:mm:ss"];
        //date->string
        NSString *dateStr = [formatter stringFromDate:date];
        NSLog(@"dateStr = %@", dateStr);
        
        //string->date
        NSDateFormatter *df1 = [[NSDateFormatter alloc] init];
        df1.dateFormat = @"MM-dd-yyyy HH:mm:ss";
        NSDate *date2 = [df1 dateFromString:dateStr];
        NSLog(@"date2 = %@", date2);
        
        
    }
    return 0;
}
