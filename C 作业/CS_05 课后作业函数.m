//
//  CS_05 课后作业函数.m
//  CS_05 晚作业
//
//  Created by dllo on 15/11/23.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "CS_05 课后作业函数.h"


/* 1. 用函数实现 : 随机产生 20 个[ 10 , 100 ]的正整数,输出这些数以及他们中的最大数 */

void zuida ()
{
    int max = 0;
    
    int array[20] = {0};
    
    for (int i= 0; i< 20; i++)
        
    {
        
        array [i] = arc4random() % (100 - 10 +1) + 10;
        
        printf ("%d ",array[i]);
        
        if (max < array[i])
        {
            max = array[i];
        }
        
    }
    
    printf ("max = %d\n",max);
    
}


//第二题

/*
 
 用函数实现 : 编程将所有“水仙花数”打印出来,并打印 其总个数。 “水仙花数”是一个各个位立方之和等于该整数的三位数 (个位数立方 + 十位数立方 + 百位数立方 = 这个整数)。//100 - 999
 
 */

void  SumShuixianhua ()

{
    int count = 0;
    
    for (int i = 100; i < 1000; i++) {
        int a = i / 100;     //百位 123 / 100 = 1
        int b = i % 100 / 10;//十位 123 % 100 / 10 = 2
        int c = i % 10;      //个位 123 % 10 = 3
        if (a * a * a + b * b * b + c * c * c == i)
            
        {
            count++;
            printf("%d ",i);
        }
    }
    printf("水仙花数个数为:%d\n", count);
    
}


//第 三 题

/* 3. 用函数实现 : 已知 abc + cba = 1333,其中a,b,c均为一位数,编程求出满足条件的a,b,c所有组合 */

void zuhe ()

{
    
    for(int a = 1; a < 9;a++)
    {
        for (int b = 0; b < 9; b++)
            
        {
            for (int c = 1; c < 9; c++)
                
            {
                if (a*100+b*10+c*1 + c*100+b*10+a*1 == 1333) {
                    printf("%d %d %d\n", a, b, c);
                    
                }
                
            }
        }
        
        
    }
    
    
}


/* 4. 用函数实现:输入一个数,判断符号.如果大于0,输出“正数”;如果小于 0 ,输出“负数”;如果等于 0 ,输出“0”
 */


  void shuchu (int a)

{
   int a = 0;
    printf("请输入一个数:");
    
    scanf("%d",&a);
    
    if (a > 0) {
        printf("正数\n");
    }if (a<0)
        
    {
     printf("负数\n");
    
    }
    else if ( a == 0)
        
    {
        printf("0 \n");
    
    }


}

/* 5.用函数实现 : 输入一个整数,判断奇偶,并返回 判断结果(BOOL)
 */


 
 int jiou ()

{
    
    int number = 0;
    
    printf("请输入一个整数:");
    
    scanf ("%d", &number);




}


