//
//  main.m
//  02-字符串
//
//  Created by Kyle.Z on 16/8/17.
//  Copyright © 2016年 kyle.z. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str1 = @"string12345";
        NSString *str2 = @"string";
        NSString *str3 = [[NSString alloc] initWithFormat:@"age is %d", 18];
        //C字符串->OC字符串
        NSString *str4 = [[NSString alloc] initWithUTF8String:"jack"];//C字符串前无@修饰符
        //OC语言字符串->C字符串
        const char *cstr1 = [str4 UTF8String];
        //从文件读取字符串
        //含中文编码格式可以用NSUTF8StringEncoding
        NSString *str5 = [[NSString alloc] initWithContentsOfFile:@"/Users/Kyle/Desktop/.txt" encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"\n%@", str5);//\n自动换行
        /*
         从URL读取字符串
        URL:资源路径
        格式-> 协议头://路径
        file://
        http://
        ftp://
        */
        //NSURL *url = [[NSURL alloc] initWithString:@"file:///Users/Kyle/Desktop/key.txt"];
        //NSURL *url = [NSURL URLWithString:@"file:///Users/Kyle/Desktop/key.txt"];
        
        NSURL *url = [NSURL fileURLWithPath:@"/Users/Kyle/Desktop/key.txt"];
        
        NSString *str6 = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
        
        NSString *str7 = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
        
        //字符串写入到文件(抹去原文件的字符串重新写入新的字符串)
        NSString *filePath = @"/Users/Kyle/Desktop/key.txt";
        [@"-----ZHANGKAI-----" writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
        NSURL *fileUrl = [NSURL fileURLWithPath:@"/Users/Kyle/Desktop/key.txt"];
        [str1 writeToURL:fileUrl atomically:YES encoding:NSUTF8StringEncoding error:nil];
/*
        -------------------------------------------------------------------
 */
        NSMutableString *mstr1 = [NSMutableString stringWithFormat:@"age = %d\n", 18];
        NSMutableString *mstr2 = [NSMutableString stringWithUTF8String:"--------C语言字符串--------\n"];
        //添加字符串
        [mstr1 appendFormat:@"age = %d\n", 19];
        [mstr1 appendString:mstr2];
        
        NSLog(@"%@", mstr1);
        //查找字符串中某段字符的range
        NSRange range1 = [mstr1 rangeOfString:@"age"];
        //删除字符串
        [mstr1 deleteCharactersInRange:range1];
        NSLog(@"%@", mstr1);
        //替换字符串
        [mstr1 replaceCharactersInRange:range1 withString:@"Age"];
        NSLog(@"%@", mstr1);
        
        
    }
    return 0;
}
