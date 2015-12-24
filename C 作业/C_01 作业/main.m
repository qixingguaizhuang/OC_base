//
//  main.m
//  C_01 作业 12.17 日
//
//  Created by dllo on 15/11/17.
//  Copyright © 2015年 doll-61. All rights reserved.
//



#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
 
#pragma mark -  作业 1
    
/**  1. 计算十进制42转换为二进制、十六进制分别对应的值。
    
    答案:    
             转换成二进制为 " 101010 " ;
 
             转换成十六进制为 "2A";
 
 
 */
    
#pragma mark -  作业 2
    
/**
 
     2.计算二进制 11010110 对应的十进制值。
 
 
    答案:
 
          2^7 + 2^6 + 2^4 + 2^2 +2 = 214;
 
 */
    
#pragma mark -  作业 3
    
/**
      
      3. 计算十六进制 0x75 对应的十进制值。
 
    答案:
 
          7 * 16^1 + 5 * 16^0 = 117;
 
      */
    
#pragma mark -  作业 4
    
    
    
       
      //4.打印图形
       
#if 0
    printf("  *\n");
    
    printf(" * *\n");
    
    printf("* * *\n");
    
#endif
    
    
    
#pragma mark -  作业 5
    
        
        /**
         编写一个程序，要求用户输入一个美元数量，然后显示出增加%5税率后的相应金额。格式如下所示：
         Enter an amount:100.00
         With tax added:$105.00
        */
    
    
    
#if 0
    
    float dolar = 0;
    
    printf("Enter an amount:\n");
    
    scanf("%f", &dolar);
    
    printf("With tax added:$%.2f\n", dolar + dolar * 0.05);
    
    
#endif
    

#pragma mark -  作业 6
    
    /**
     
     6. 从键盘输入两个实数a和b，输出a占b的百分之几。小数点后保留2位。
     例如：输入1和4，输出：25.00%。
     
     */
    
    
#if 0
    
    float a = 0;
    
    float b = 0;
    
    float c = 0;
    
    printf("请输入两个数:");
    
    scanf("%f %f", &a, &b);
    
    c = a / b;
    
    c = c * 100;
    
    printf("输出为:%.2f%%", c);

#endif
    
    
#pragma mark -  作业 7
    
    /**
     
     7. 编写一个程序，要求用户输入一个美金数量，然后显示出如何用最少的20美元、10美元、5美元和1美元来付款：
     Enter a dollar amout:93
     $20  bills: 4
     $10  bills: 1
     $5   bills:0
     $1    bills:3
     
     */
    
#if 0
    
    /**
    
    int a = 0;
    
    int b = 0;
    
    int c = 0;
    
    int d = 0;
    
    int e = 0;*/
    
    
    
    int a, b, c, d, e;
    
    printf("Enter a dollar amout:");
    
    scanf("%d", &a);
    
    b = a / 20;
    
    printf("$20 bills: %d\n", b);
    
    c = a % 20 / 10;
    
    printf("$10 bills: %d\n", c);
    
    d = a % 10 / 5;
    
    printf("$5 bills: %d\n", d);
    
    e = a % 5;
    
    printf("$1 bills: %d\n", e);
    
    
    
#endif
    
    
    //8.输入两个整数，打印这两个数的和，差，积，余数。
    
#if 0
    
    int a =0;
    
    int b =0;
    
    printf("请输入两个整数\n", a);
    
    scanf("%d %d", &a, &b);
    
    printf("这两个数的和为:%d\n", a + b );
    
    printf("这两个数的差为:%d\n", a - b );
    
    printf("这两个数的积为:%d\n", a * b );
    
    printf("这两个数的余数为:%d\n", a % b );
    
    
#endif
    
    
    /**
     
     9.查找ASCII码表，分别用%d输出字符，用%c输出整数。
     比如：输入字符A，%d输出整数为65。 输入数字97，%c输出字符为a。
     
     */

#if 0
    
    char c = 0;
    
    int a = 0;
    
    printf("请输入一个字符:\n");
    
    scanf("%c", &c);
    
    printf("%d\n",c);
    
    printf("请输入一个整数:\n");
    
    scanf("%d",&a);
    
    printf("%c\n",a);
    
    
    
#endif
    
  #if 0
    
    int a = 1;
    
    int b = 2;
    
    a = b - a;
    
    b = b - a;
    
    a = b + a;
    
    printf("int a = %d, int b = %d\n",a , b);
    
    #endif
    
#if 0
    
    int a = 1;
    
    int b = 2;
    
    a = b - a;
    
    b = b - a;
    
    a = b + a;
    
    printf("int a = %d, int b = %d\n",a , b);
    
#endif
    
#if 0
    
    int a = 1;
    
    int b = 2;
    
    a = b - a;
    
    b = b - a;
    
    a = b + a;
    
    printf("int a = %d, int b = %d\n",a , b);
    
#endif
    
#if 0
    
    int a = 1;
    
    int b = 2;
    
    a = b - a;
    
    b = b - a;
    
    a = b + a;
    
    printf("int a = %d, int b = %d\n",a , b);
    
#endif
    
    
#if 0
    
    int a = 1;
    
    int b = 2;
    
    a = b - a;
    
    b = b - a;
    
    a = b + a;
    
    printf("int a = %d, int b = %d\n",a , b);
    
#endif
    
#if 0
    
    int a = 1;
    
    int b = 2;
    
    a = b - a;
    
    b = b - a;
    
    a = b + a;
    
    printf("int a = %d, int b = %d\n",a , b);
    
#endif

    
    
   
    return 0;
}





