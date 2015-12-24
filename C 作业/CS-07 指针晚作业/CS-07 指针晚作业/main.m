//
//  main.m
//  CS-07 指针晚作业
//
//  Created by dllo on 15/11/25.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
    
   // 1. 输入10个整数，将其中最小的数与第一个数对换，把最大的数和最后一个数对换，指针实现
#if 0
    
    int array[10] = {2, 5, 34, 12, 33, 22, 56, 64, 23, 45};
    
    int *p = NULL;
    
    p = array;
    
    int *p1 = NULL;//最大值的地址
    
    int *p2 = NULL;//最小值的地址
    
    int temp = 0;
    
    int max = 0;
    
    int min = 11;
    
    for (int i = 0;i<10;i++){
        if (*(p+i) > max ) {
            max = *(p+i);
            p1 = p+i;//最大值的地址
        }
        
        if (*(p+i) < min) {
            min = *(p+i);
            
            p2 = p+i;
        }
    
    }
    
    printf("max = %d, min = %d\n", *p1,*p2 );
    
    //比较
    
    temp = *p1;
    
    *p1 = *(p+9);
    
    *(p+9) = temp;
    //
    temp = *p2;
    
    *p2 = *p;
    
    *p = temp;
    
    for (int i = 0 ; i < 10; i++) {
        printf("%d ",*(p+i));
    }
    
    
 #endif
    
    /*2. 有一字符串，包含数字与字母，编程去除数字。
    1、要求在原字符串中操作
    2、使用指针处理。*/
    
#if 0
    // puts(string4) == printf("%s\n",string4);
    
    // string1[i] < '0' && string1[i] > '9' 不是数字 不在 0 - 9 之间
    
    char string[] = "lanou3g";
    
    char *p = NULL;
    
    p = string;//数组装到指针中了
    
    int i = 0;
    
    int j = 0;
    
    while (*(p+i)!= '\0') {
        if (*(p+i)<'0' || *(p+i)>'9') {
            *(p+j) = *(p+i);
            j++;
        }
        i++;
    }
    
    *(p+j) = '\0';
    
    printf( "%s\n",string);
    
    
#endif
    
    char string[] = "iphone";
    
    char *p = string;//指针指向字符串首地址
    
    int i = 0;
    
    while (*(p+i) != '\0') {
        printf("%c",*(p+i));
        
        i++;
    }

    printf("\n");
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*3.练习使用指针和地址传递，编写函数swap交换两个浮点数，main函数中实现以下功能：
     1）由用户输入3个数x、y、z的值；  5    4    2
     2）调用函数swap交换3个数中的最大数和最小数；
     3）输出交换后3个数的值。 2 5 4*/
    
    
    
    
    
    
    return 0;
}
