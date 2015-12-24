//
//  main.m
//  C_03 作业 结构循环
//
//  Created by dllo on 15/11/19.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>


/*
 1.求1 X 2 X 3 X 4 X ... X 19 X 20的结果?
 2.打印1-100的数,并求1-100之和,奇数之和,偶数之和。
 3.随机产生20个[10 , 100]的正整数,输出这些数以及他们中的 最大数。
 4.编程将所有“水仙花数”打印出来,并打印其总个数。 “水仙 花数”是一个各个位立方之和等于该整数的三位数(个位数立 方 + 十位数立方 + 百位数立方 = 这个整数)。
 
 5.已知abc+cba = 1333,其中a、b、c均为一位数,编程求出 满足条件的a、b、c所有组合。
 6.输入两个数,求最大公约数和最小公倍数。(两种方法:辗 转相除法和普通方法)。
 7.找出1-99之间是7的倍数或者个位数字是7或者十位数字是7 的数字,并输出这些数字,统计有多少个?
 
 */

/**
 ＊＊＊＊）输入n，分别用*输出边长为n的实心菱形和空心菱形。
 例如：n = 3时，输出：
 *
 ***
 *****
 ***
 *
 
 *
 * *
 *   *
 * *
 *
 */

int main(int argc, const char * argv[]) {
   
#pragma  mark 1 -- 求1 X 2 X 3 X 4 X ... X 19 X 20的结果?
    
#if 0

           long int result = 1;
    
           for (int i = 1; i < 21; i++)
            
           {

             result = result * i;
               
            }
    
            printf("result = %ld\n",result);
        

    
#endif
    

#pragma  mark 2 --打印 1-100 的数,并求1-100之和,奇数之和,偶数之和。
    
    int sum = 0;
    
    int jishu = 0;
    
    int oushu = 0;

    for (int i = 1; i < 101; i++)
    
        {
            sum = sum + i ;
        }
    
    if (<#condition#>) {
        <#statements#>
    } else {
        <#statements#>
    }
         printf("%d",sum);
  
    
    
 #pragma  mark 3 --  随机产生20个[10 , 100]的正整数,输出这些数以及他们中的 最大数。
    
    
    
    
    return 0;
}
