//
//  main.m
//  C_01 - 第二节课 作业
//
//  Created by dllo on 15/11/18.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    
#pragma mark - 第一题
    
 //输入一个整数，判断奇偶，并输出“某某是奇数”或者“某某是偶数”。
#if 0
    
    {
    int a = 0;
    
    printf("请输入一个整数:");
    
    scanf("%d",&a);
    
    if (a % 2 == 0) {
        
        printf(" 这个数是偶数\n");
        
    }
     
    else {
        
        printf(" 这个数是奇数\n");
    
    }
       
    
    
}
    
#endif
    
#pragma mark - 第 二 题
    
    //输入一个数，判断符号。如果大于0，输出“正数”；如果小于0，输出“负数”；如果等于0，输出“0”。
    
  
    
#if 0
    
    {
        
        int number = 0;
        
        printf("输入一个数:");
        
        scanf("%d",&number);
        
        if (number > 0) {
            printf("正数 \n");
        }
        
        if (number < 0){
            
            printf("负数 \n");
        }
        
        if (number == 0){
        
            printf("这个数等于 0 \n");
            
        }
        
    }
    
#endif
    
#pragma mark - 第 三 题
    
    //编程判断 3 人中谁的年龄最大，并打印最大者的年龄。三目运算
    
#if 0
    
    {
        int a = 0;
        
        int b = 0;
        
        int c = 0;
        
        int max = 0;
        
        
        printf("请输入三个人的年龄:");
        
        scanf("%d%d%d", &a, &b, &c);
        
        max = a > b? a:b;
        
        max = max > c ? max:c;
        
        printf(" max = %d\n", max);
        
    
    
    }
    
#endif
    
   
#pragma mark - 第 四 题
    
    //铁路托运行李规定：行李重不超过50公斤的，托运费按0.15元每公斤计算，如果超过50公斤，超出部分每公斤加收0.1元。编程实现上述功能。
    
#if 0
    
    {
        
        int weight = 0;
        
        int monkey = 0;
        
        printf("行李重为:");
        
        scanf("%d",&weight);
        
        
        if (weight <= 50)
        
        {
            
            monkey = weight * 0.15;
            
            printf("托运费为:%d\n",monkey);
            
        } else
        
        {
           
            monkey = 50 * 0.15 + (weight - 50) * 0.1;
            
            printf("托运费为:%d\n",monkey);
        }
        
    }
    
#endif
    
 #pragma mark - 第 五 题  
    
    //有一个函数：x<1的时候，y = x；1<=x<10的时候，y=2x-1；x>=10的时候，y=3x-11。写一段程序，输入x，输出y值。
    
    
#if 0
    
    {
        
        int x = 0;
        
        int y = 0;
        
        printf("输入一个函数:");
        
        scanf("%d",&x);
        
        if (x < 1)
        
        {
            
            y = x;
           
            printf(" y = %d\n", y);
    
        }
        
        if ( x >= 1 && x < 10)
        
        {
            
            y= 2 * x -1;
            
            printf("y = %d\n", y);
        }
        
        
        if (x >= 10)
        
        {
            
            y= 3 * x - 11;
        
            printf("y = %d\n", y);
        }
        
    }
    
#endif
    
    
#pragma mark - 第 六 题 
    
    //编写一个完成两个数四则运算的程序。如：用户输入34+56则输出结果为90.00，要求运算结果保留2位有效小数，用户输入时将2个运算数以及运算符都输入，根据运算符求结果。
    
#if 0
    
    {
        
        float a = 0;
        
        float b = 0;
        
        char c = 0;
        
        float d = 0;
        
        printf("请输入两个数和运算符: ");
        
        scanf("%f%c%f",&a,&c,&b);
        
        if (c == '+')
        
        {
            
            d = a + b ;
            
        }
        
        if (c == '-')
        
        {
            
            d = a - b ;
        }
        
        
        if (c == '*')
        
        {
            
            d = a * b ;
        }
        
        if (c == '/')
        
        {
            c = a / b ;
        }
    
        
        printf("d = %.2f\n", d);
    }
    
#endif
    
    
    
    
    //第二种方法
    
    
#if 0
    
    {
    
        char c = '+';
        
        float a = 0;
        
        float b = 0;
        
        printf("请输入两个数和运算符:");
        
        scanf("%f%c%f",&a,&c,&b);
        
        switch (c) {
          
            case '+':
                
        {
            float sum = a + b;
            
            printf("两个数得和是:%0.2f\n", sum);
            
                break;}
                
            case '-':

        {
            
                float mum = a - b;
            
                printf("两个数得差是:%0.2f\n",mum);
                
                break;
            
            }
                
                case '*':
                
            {
                float ride = a * b;
                
                printf("两个数得积是:%0.2f\n", ride);
                
                break;
            
            
            }
                
                
                case '/':
                
            {
            
                float chu = a / b;
                
                printf("两个数得商是:%0.2f\n", chu);
                
                break;
            
            
            }
                
                
                
            default:
                break;
        }
    
    }
    
#endif
    
#pragma mark - 第 七 题 
    
    //输入3个数，判断是否能构成三角形。
    
    /**
      构成三角形的条件：
     （1）两边之和大于第三边
     （2）两边之差小于第三边
     
     */
    
#if 0
    
    {
        
        int a = 0;
        
        int b = 0;
        
        int c = 0;
        
        printf("请输入三个数:");
        
        scanf("%d%d%d", &a, &b, &c);
        
        if (a + b > c && a +c > b && b + c > a)
        
        {
            
        printf("这是一个三角形\n");
            
        }
        
        else
        
        {
            printf("这不是一个三角形\n");
        }
        
        
    }
    
#endif
    
#pragma mark - 第 八 题
    
    //输入三个数，用两种方法打印出中间值（即第二大值）提示：第一种，先求最大最小；第二种，只使用比较运算符。
    
    // 方法 一
    
#if 0
    
    {
        int a = 0;
        
        int b = 0;
        
        int c = 0;
        
        int max = 0 ;
        
        int xiao = 0 ;
        
        int mid = 0 ;
        
        int sum = 0 ;
        
        printf("请输入三个数:");
        
        scanf("%d%d%d", &a, &b, &c);
        
        max = a > b ? a : b;
        
        max = max > c ? max : c;
        
        xiao = a < b ? a : b;
        
        xiao = xiao < c ? xiao : c;
        
        sum = a + b + c ;
        
        mid = sum - max - xiao;
        
        printf("mid = %d\n", mid);
        
    
    }
    
#endif
    
    
    // 方法 二
    
#if 0
    
    {
        
        int a = 0;
        
        int b = 0;
        
        int c = 0;
        
        printf("请输入三个数:");
        
        scanf("%d%d%d", &a, &b, &c);
        
        if ((a > b && a < c)|| (a > c && a < b))
        
        {
            printf("为中间值 %d\n", a);
            
        } else if (( b >a && b <c) || ( b > c && b < a))
        
        {
        
            printf("为中间值 %d\n", b);
            
        } else
        
        {
            
            printf("为中间值 %d\n", c);
        
        }
        
        
    }
    
#endif
    
#pragma mark - 第 九 题
    
    /* 综合练习: ATM机取款
     * 通过if语句实现银行取款功能
     (1).先用if判断卡号是不是有效，然后用if…else…提示用户账户有效或者无效。
     (2).引导学员完成判断输入一次密码。
     (3).引导学员用if嵌套实现三次输入密码逻辑。
     (4).引导学员用级联式if语句实现存款、取款、查询余额功能。
     */
    
#if 1
    
    int key = 123456;
    
    float RMB = 80000;
    
    printf("请输入一个密码:\n");
    
    scanf("%d",&key);
    
    if (key == 123456)
    
    {
        printf( "余额为: %0.2f\n",RMB);
        
        
        
    } else
    
    {
        printf("密码错误,请重新输入一次密码\n");
        
        scanf("%d",&key);
        
        printf("密码错误,还有2次密码输入机会\n");
        
        scanf("%d",&key);
        
        printf("密码错误,还有1次密码输入机会,输入错误账号将被冻结\n");
        
        scanf("%d",&key);
        
        printf("sorry!您的密码有误\n");
        
        scanf("%d",&key);
        
    }
    
    
    //"存款请按'+',取款请按'-',查询余额请按'5'
    
    
#endif
    
    
    
    
    return 0;
}
