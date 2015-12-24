//
//  main.m
//  C03_C语言循环结构 while,do,for
//
//  Created by dllo on 15/11/19.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])

{
    
#pragma mark  知识点 1 - for 循环
    

    
    {
        /**<#initialization#> 变量初始化 <#condition#> 条件表达式 <#increment#> 变量增量 <#statements#> 循环体语句 */
        
        /**
         
         流程:
         
         1.变量初始化;
         
         2.判断条件表达式(真/假);
         
         3.如果条件表达式为真,执行循环体语句;
         
         4.执行变量增量;
         
         5.再次判断条件表达式;
         
         6.如果此时表达式为假,退出整个循环;
         
         */
#if 0
        for (变量初始化; 条件表达式; 变量增量)
        
        {
            循环体语句
        }
        
#endif
        
    }
    
#pragma mark  知识点 练习
    
    /**
     * 练习1: 打印5次"hello, lanou!"
     */
    
    
    {
      
#if 0
        
        
        for (int i = 0; i < 5; i++)
        
        {
            printf("Hello,Lanou\n");
        }
        
#endif
        
        
#if 0
        /**
         * 练习 2 : 正序打印 1~5 的数;
         */
        
        for (int i  = 0; i < 5; i++)
        
        {
            printf("%d\n",i+1);
        }
    
        
       
#endif
        
        
        /**
         * 练习 3 : 倒叙打印 1~5 的数;
         */
#if 0
        
        for (int i = 5; i > 0; i--)
        
        {
            printf("%d\n",i);
        }
        
        
       
        
        
#endif
        /**
         * 练习 4 : for 循环打印 1 ~ 100 之间的偶数;
         */
        
        
#if 0
        
        {
            
            for (int i = 0; i < 100 ; i++)
            
            {
                if ((i + 1) % 2 == 0)
                
                {
                    printf("%d\n",i + 1);
                }
            }
        
            
            
        }
#endif
        
        //for循环打印 1- 100 之间 7 的倍数
        //用for循环打印出1~100之间个位为7的数。
        // 用for循环打印出1~100之间十位为7的数.
        // 用for循环打印出1~100之间既不是7的倍数并且也不包含7的数。
        //提示:
        //如何获取一个数a的个位?   a  % 10
        //如何获取一个数a的十位?   a   /  10
        
        
#if 0
        
        {
            for (int i = 0; i < 100 ; i++)
            
            {
                
                if (i % 7 == 0)
                
                {
                    
                    printf("%d\n",i);
                    
                }
                
            }
            
        }
#endif
        
        
        
        
    
    
    //练习 2 用 for 循环打印出 1~100 之间个位为 7 的数。
    
#if 0
    
    {
        for (int i = 0; i < 100 ; i++)
            
        {
            
            if (i % 10 == 7)
                
            {
                
                printf("%d\n",i);
                
            }
            
        }
        
    }
    
    
#endif
    
        
        
        // 练习 3 用for循环打印出 1~100 之间十位为7的数.
        
#if 0   // 为啥加 1 ? ********** 输出 1 ~ 100
        
        {
            for (int i = 0; i < 100 ; i++)
                
            {
                
                int a = (i + 1) / 10;
                
                if ( a == 7)
                    
                {
                    
                    printf("%d\n",i + 1);
                    
                }
                
            }
            
        }
        
        
#endif
        
        
        //练习 4 用for循环打印出1~100之间既不是7的倍数并且也不包含7(个位,十位都不是 7)的数。
        
#if 0
        
        {
            for (int i = 0; i < 100 ; i++)
                
            {
                
                if ( (i + 1) % 7 != 0 && (i + 1) % 10 != 7 && ( i + 1) / 10 != 7)
                    
                {
                    
                    printf("%d\n",i + 1);
                    
                }
                
            }
            
        }
        
        
#endif
        

    
}

#pragma mark  知识点 2 - break,continue
    
    
    // break 跳出本层循环
    
    // continue 跳出本次循环


#pragma mark  知识点 练习
    
    /** break
    * 练习1: 判断一个数是否是质数
    *
    * 注: 任何一个数都能被 1 和它本身整除, 就看该数能否被 2 到本身 -1 的数整除即可. 如果能够整除,说明不是质数
    */
    
    
        
#if 0
    
    {
        
    
    int number = 0;
    
    BOOL isZhi = NO;
    
    printf("请输入一个整数:");
    
    scanf("%d",&number);
    
    for (int i = 2; i < number; i++) {
        
        // 从 2 开始除,0 不能做除数,如果是1将一直执行 是质数,所有从 2 开始
        if (number % i == 0) {
            
            isZhi = NO;
            
            break;
        }else
        
        {
            
            isZhi = YES;
            
        }
        
    }
    
    
    if (isZhi == YES)
    {
        
        printf("是质数\n");
        
    }else
    
    {
        
        printf("不是质数\n");
    
    }
        
    }
    
#endif
    
    
#pragma mark  知识点 3 - 随机数
    
    // 公式:arc4Random () % ( b - a + 1) + a
    
    
#pragma mark  知识点 练习
    
    // 用 for 打印 10 个随机数范围为( 10 ~ 30 ),求最大值和最小值.
    
    
#if 0
    
    {
        // ******最大值为什么赋值最小值?如果取得随机数都是 1 ,那么最大的数不能超过1 ????
        
        int max = 0;
        
        int min = 30;
        
        int random = 0;
        
        for (int i = 0; i < 10; i++)
        
        {
            random = arc4random() % (30 - 10 + 1) + 10;
            
            printf("%4d", random);
            
            //和最大值比较
            
            //再和最小值比较
            
            
            if (random > max)
            
            {
                
                max = random;
                
            }
            
            if ( random < min )
            
            {
                
                min = random;
            }
            
            printf("\n");
        }
        
        
        //十次循环之后,输入最终的结果
        
        printf("max = %d,min = %d\n", max, min);
        
        
        
    }
#endif
    
    
    //练习 1 打印一行 1, 2, 3, 4, 5
    
    //练习 2 打印三行 1, 2, 3, 4, 5
    
    {
#if 0
    
    for (int i = 0; i < 5; i++)
    
    {
        printf("%d,",(i + 1));
    }
    
    printf("\n");
    
    
#endif
        
    }
    
    
    //先确定行数; 3 行
    
    //再确定每行的输出;
    
    
    {
#if 0
    
    for (int i = 0; i < 3; i++)
    
    {
        
    //循环体内相当于每行的输出

    for (int j = 0; j < 5; j++)
    
    {
        printf("%d,",(j + 1));
    }
    
        printf("\n");//一行循环完加个回车(换行符);
        
    }
    
#endif
        
    }
    
    /**
     * 练习3: 打印如下图形：
     1
     1 2
     1 2 3
     1 2 3 4
     1 2 3 4 5
     */
    
    {
    
#if 0
         // i = 行数  j = 列数
    
        for (int i = 0; i < 5; i++)
        
        {
        
            for (int j = 0; j < i + 1; j++)
            
            {
                printf("%d",j + 1);
            }
            
            printf("\n");
        }
    
    
    
    
#endif
        
        }
    
    
    
    /**
     * 练习4: 打印如下图形：
     1 2 3 4 5
     1 2 3 4
     1 2 3
     1 2
     1
     */
    
#if 0
    
    {
            for (int i = 0; i < 5; i++)
        
        {
            
            for (int j = 0; j < 5 - i; j++)
            
            {
                printf("%d", j + 1);
            }
            
            
             printf("\n");
            
        }
    
        
        
    }
    
#endif
    
    
    //九九乘法表 练习
    
#if 0
    
    {
    int result = 0;
    
    for (int i = 0; i < 9; i++)
    
    {
        for (int j = 0; j < i + 1; j++)
        
        {
            result = (j + 1) * ( i + 1);
            
            printf("%d*%d=%-2d ",j + 1, i + 1,result);
        }
        
        printf("\n");
        
        }
    
    }
    
#endif
    
    
    // 打印三个数字(0 ~ 9)的组合可能(组合成三位数)
    
    
    
#if 0
    
    {
        
        for (int i = 1; i < 10; i++)
        
        {
        
            for (int j = 0; j < 10; j++)
            
            {
                
                for (int k = 0; k < 10; k++)
                
                {
                    printf("%d",i*100 + j*10 + k);
                }
                
                printf("\n");
            }
            
            
        }
    
    }
    
    
#endif
    
    
    
#pragma mark  知识点 4 - 循环嵌套练习

    
#pragma mark  知识点 5 - while 循环
    
    
        
        /**
        while (条件表达式) {
            语句;
        }*/
        
        //流程:
        
        //1.判断条件表达式
        
        //2.如果表达式结果为真,执行语句;
        
        //3.再次判断条件表达式
        
        // 知道范围用 for 函数,不知道用while函数
    

    
    
#pragma mark  知识点 while 练习
    
    {
        
#if 0
        //打印 7 的倍数
        
        int i = 1;
        while (i <= 100) {
            if (i % 7 == 0)
            
            {
                printf("%d\n",i);
            }
            
            i++;
        }
        
        
        
#endif
        }
        
            
        
        // 打印 1 ~ 100 个位数是 7 的数
    {
#if 0
        int j = 0;
        
        while (j < 100) {
            if ((j+1)%10 == 7) {
                printf("%d\n",j + 1);
            }
            
            j++;
            
            }
        
    
#endif
        }
        
        
        // 十位是 7
        
    {
#if 0
        
        int k = 0;
    
        while ( k < 100) {
            if ((k + 1 ) / 10 == 7) {
                printf("%d\n",k+1);
            }
            
            k++;
        }
        
#endif
    }
    
        //始终输入一个数
    
    {
        
#if 0
        int number = 0;
        
        while (1) {
            printf("请输入一个整数:");
            scanf("%d",&number);
            printf("刚才输入的整数是:%d\n",number);
        }
#endif
    }
    
#if 0
        int number = 0;
        
        while (1) {
            printf("请输入一个整数(输入 0 退出程序):");
            scanf("%d",&number);
            
            if (0 ==number ) {
                
                //break;//跳出循环,继续执行代码
                
                return  0;//加 return  0;跳出函数
            }
            
            printf("刚才输入的整数是:%d\n",number);
            
            }
        
        
#endif
        
        
        // 输入一个整数判断是否是质数.结果打印,当输入 0 时 退出程序;
    
    
#if 0
    
        int   i = 0;
        BOOL iszhi = NO;
        while (1)
        {
            printf("输入一个数:");
            scanf("%d", &i);
            
            if (0 == i)
            {
                break;
            }
            for (int j = 2; j < i; j++)
            {
                if (i % j == 0){
                    
                    iszhi = NO;
                    break;
                    //跳出 for 循环但是不跳出 while 循环
                }else {
                    iszhi = YES;
                }
            }if(iszhi == YES){
                printf("是质数\n");
                
            }else
            {
                printf("不是质数\n");
                
            }
        }
    
            
            
            
#endif
            
      
    
    
    
#pragma mark  知识点 6 - do while 循环
    

   
    
#pragma mark  知识点 练习

//输入一个整数,求这个整数的位数
    
#if 0
    
    int count = 0, a = 0;
    printf("输入一个整数:");
    scanf("%d", &a);
    
    do {
        count++;
    }while
        ( a /= 10 );
    printf("%d\n", count);
    
#endif
    
    
    
    int array[]= {1, 2 , 5, 9, 8, 7};
    
    int temp = 0;
    
    int flag = 1;
    
    int count = sizeof (array)/ sizeof(array[0]);
    
    for (int i = 0; i < count - 1; i++)
    
    {
        flag = 0;
        
        
        for (int j = 0; j< count - 1- i; j++)
        
        {
            
            if (array[j] > array[j+1])
            
            {
                
            
            temp = array [j];
            
            array [j]= array [j+1];
            
            array [j+1] = temp;
            
            flag = 1;
                
            }
        }
    }
    
    
    for (int i = 0; i < count; i++)
    
    {
        printf("%d", array[i]);
    }
    
        printf("\n");
    
    return 0;
    
}



