//
//  main.m
//  OC04_Nsstring
//
//  Created by dllo on 15/12/3.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
    
#pragma mark - 知识点 1 - 不可变字符串
    
    
// Class: Nsstring  类
    
#pragma mark ** 创建对象相关 API
 
#if 0
    //字面量方式,创建字符串对象,是常用方法
    
    NSString *str2 = @"iphone";
    
    // 参数 非空的字符串参数
    
    NSString *str = [[NSString alloc] initWithString:str2];
  
    NSLog(@"str2:%@",str2);
    
    NSLog(@"str:%@", str);

    // 带 format 参数方法,比较灵活(万能方法),可以将任意内容以格式化方法生成字符串对象
    
    NSString *str3 = [[NSString alloc] initWithFormat:@"新建字符串,%@", str];
    
    NSLog(@"str3:%@", str3);
    
    
    int a = 1234522;
    
    NSString *str4 = [[NSString alloc] initWithFormat:@"%d", a];
    
    NSLog(@"str4:%@",str4);
    
   //构造器
    
    
    NSString *str5 = [NSString stringWithString:str4];
    
    NSLog(@"%@", str5);
    
   //格式化
    
    NSString *str6 =[ NSString stringWithFormat:@"%@", str2];
    
    NSLog(@"str6:%@", str6);
  
#endif
    
#pragma mark ** 直接获取字符串长度 API
  
#if 0
    
    NSString *str = @"iphoe";
    
    NSLog(@"%ld", str.length);
    
    
    
    
#pragma mark** 直接获取某一个字符 API
    
    // 取出 h 字符
    
    unichar c = [str characterAtIndex:2];
    
    NSLog(@"%c", c);
    

    
#pragma mark ** 直接判断两个字符串是否相等 API
    
    NSString *str1 = @"iphone";
    
    NSString *str2 = @"iphone";
    
    
    if([str1 isEqualToString:str2]){
    
        NSLog(@"用户名正确");
    
    }else{
    
        NSLog(@"用户名错误");
    
    }
 
    
#pragma mark ** 比较两个字符串 API
    
    NSString *str1 = @"zhangsan";
    
    NSString *str2 = @"zhangxiaoming";
    
    [str1 compare:str2];
    
    NSLog(@"%ld", [str1 compare:str2]);
 
    
#pragma mark** 直接获取一个字符串中的某个部分(子字符串相关 API)
    
    
    NSString *str = @"i have an iphone6s";
   
    // 截止到下标  substr 字符串接收
    NSString *subStr = [str substringToIndex:2];
    
    
    NSLog(@"subStr:%@", subStr);
    
    // 从哪开始
    
    NSString *subStr1 = [str substringFromIndex:10];
    
     NSLog(@"subStr1:%@", subStr1);
    
    // 范围
    
    
    NSRange range = {2,4}; // 从第二个下标开始  然后数四个长度
    
    NSString *subStr2 = [str substringWithRange:range];
    
    NSLog(@"subStr2:%@", subStr2);
    
   
    // 取出 an
    
    NSRange range2 = [str rangeOfString:@"an"];// 取出某个字符串内容
    
    NSString *substr3 = [str substringWithRange:range2];//位置相当于范围,直接定位,取出
    
    NSLog(@"substr3:%@", substr3);
    
    
#pragma mark ** 直接对字符串进行拼接相关 API
    
    
    NSString *str1 = @"i have ";
    
    NSString *str2 = @"an  iphoneX";
    
    NSString *str3 = [str1 stringByAppendingString:str2];
    
    NSLog(@"str3:%@", str3);
    
    NSString *str4 =  [str1 stringByAppendingFormat:@" %@", str2];
    
    NSLog(@"str4:%@", str4);
    
   
    
#pragma mark ** 将一个字符串中的某个子字符串直接替换成其他字符串 API
    
    NSString *str = @"i have an iphone";
    
    NSString *str1 = @"xiaomi";
    
    // 需求将 iphone 换成 xiaomi
    
    NSString *str3 = [str stringByReplacingOccurrencesOfString:@"iphone" withString:@"xiaomi"];
    
    
    NSLog(@"str3:%@",str3);
    
    
    NSRange range =[ str rangeOfString:@"iphone"];
    
    NSString *oldStr = [str3 stringByReplacingCharactersInRange:range withString:@"xiaomi"];
    
    NSLog(@"oldStr:%@", oldStr);
    
    
    

    
    
    
#pragma mark ** 字符串@"23413" 直接转换为 int 类型 API
    
    
    
    NSString *str = @"123456";
    
    int a = str.intValue;
    
    NSLog(@"a = %d", a);
    
    


  
    
#pragma mark **直接对字符串字母进行大小写的相关转换 API  (case)
    
    NSString *str = @"i have an phone";
    
    // 字符全变成大写
    
    
    NSString *strUP = [str uppercaseString];
    NSLog(@"strup:%@", strUP);
    
    
    // 字符全变成小写
    
    NSString *strlow = strUP.lowercaseString;
    
    NSLog(@"strlow:@%@",strlow);
    
    
    
    //首字母大写
    
    
    NSString *newStr = str.capitalizedString;
    
    NSLog(@"newStr:%@", newStr);
    
    
    // 需求: 将姓名的首字母提取出来并且转换为大写字母
    
    NSString *name = @"zhangsan";
    
    
    NSString *firstName = [name substringFromIndex:1].uppercaseString;
    
    NSLog(@"firstName = %@", firstName);
    
   
    
    
#pragma mark ** 直接判断字符串是否以 ** 开头或结尾 API
    
    NSString *str = @"http://www.baidu.com";
    
    
    //开头
    
    if ([str hasPrefix:@"http"]) {
        NSLog(@"字符串已以 http 开头");
    }
    
    // 结尾
    
    if ([str hasSuffix:@".com"]) {
        NSLog(@"字符串以.com结尾");
    }
    
   
    
    
    /*http://www.lanou3g.com/icon.png
     判断上述字符串中是否以“png”结尾，如果是就替换成“jpg”，如果不是，就拼接”.jpg”。*/
    
    
    NSString *str = @"http://www.lanou3g.com/icon.png";
    
    if ([str hasSuffix:@"png"]) {
       
        
    str = [str stringByReplacingOccurrencesOfString:@"png" withString:@"jpg"];
        
    }else{
        str = [str stringByAppendingString:@".jpg"];
        
    }
    
    
    NSLog(@"str:%@", str);
    
    #endif
    
    
    
#pragma mark -  知识点 2 - 可变字符串
    
// 可变字符串是 NSString 的子类,继承了 NSString 所有的属性和方法
    
// 可变意味着自身内容和长度是动态的(可以变化的)
    
//
    
 
#if 0
    
#pragma mark ** 创建对象相关 API 
    

    
    NSMutableString *mStr = [[NSMutableString alloc] initWithString:@"i have an iphone"];
    
    
    
    
    //构造器
    NSMutableString *mStr2 = [NSMutableString stringWithString:@"ios"];
    
    
    
    //格式化
    
    NSMutableString *mStr3 = [NSMutableString stringWithFormat:@"%@", mStr ];
    
 
    
#pragma mark ** 拼接字符串 API
    
    
    NSMutableString *mStr = [NSMutableString stringWithString:@"iphone"];
    
    
    //需求: "iphone" 后面加 "6 Plus"  拼接
    
    
    [mStr appendString:@"6 Plus"];
    
    NSLog(@"mStr:%@", mStr);
  
    
#pragma mark ** 删除一个范围内的字符 API
    
    // 构造器 :开空间 初始化
    NSMutableString *mStri = [NSMutableString stringWithString:@"http://www.baidu.com"];
    
    
    
    // 删除 "http://"
    
    
    [mStri deleteCharactersInRange: [mStri rangeOfString:@"http://"]];
    
    
    
    
    NSLog(@"mStri : %@", mStri);
   
    
    
    
#pragma mark 字符串中插入相应的的字符串 API  修改
    
    
    NSMutableString *mStr = [NSMutableString stringWithString:@"http://www.baidu.com"];
    
    
    // 需求: 在http后面加上一个 s , 即 https:// www.baidu.com
    
    [mStr insertString:@"s" atIndex:4];
    
    NSLog(@"%@", mStr);
    

    
    
#pragma mark ** 字符串中替换 API
    
    NSMutableString *mStr = [ NSMutableString stringWithString:@"i have an iphone"];
    
    [mStr replaceCharactersInRange:[mStr rangeOfString:@"iphone"] withString:@"xiaomi"];
    
    
    
    NSLog(@"%@", mStr);
  
    
#pragma mark ** 重置字符串 API
    
    
    NSMutableString *mStr = [NSMutableString stringWithString:@"ios"];
    
    [mStr setString:@"iphone"];
    
    NSLog(@"%@", mStr);
    
    
   #endif
    
#pragma mark  - 知识点 3 NSNumber 类
    
    
    //   class : NSNumber
    
    // 主要作用 : 基本数据类型( int char float)和 OC 对象进行互相转换
    
    // 详见 API
    
    
    // 创建对象
    
    
    NSNumber *num1 = [NSNumber numberWithInt:20];
    
    
    NSLog(@"%@", num1);
    
    
    
    int a = 100;
    
    NSNumber *num2 = [NSNumber numberWithInt:a];
    
    NSLog(@"0num2:%@", num2);
    
    
    // 字面量创建对象
    
    NSNumber *num3 =@20;
    
    
    
    int b = 200;
    
    NSNumber *num4 = @(b);
    
    
    // 从 NSNumber 对象转换成基本数据类型
    
    
    int aa = num1.intValue;
    
    NSLog(@"aa:%d", aa);
    
    
   // NSNumber 对象之间的比较
    
    
    [num1 compare:num2];
    
    NSLog(@"%ld", [num1 compare:num2]);
    
    
    
#pragma mark 知识点 4 NSValue 值对象
    

    //Class : NSValue

    //作用:  完成(将) 结构体 和 对象类型的互转;
    
    NSRange range = {3 , 4};
    
    //创建对象
    
    NSValue *value1 = [NSValue valueWithRange:range];
    
    NSLog(@"%@", value1);
    
    // 转换为结构体
    NSRange newRange = value1.rangeValue;
    
    NSLog(@"%ld, %ld", newRange.location, newRange.length);
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
