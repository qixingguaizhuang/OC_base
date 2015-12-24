//
//  main.m
//  C04_排序,数组
//
//  Created by dllo on 15/11/20.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

// 定义宏

#define PI 3.1415


//带参数的宏

#define MUL(A, B)((A) * B) // 计算两个数的积的宏 () 有必要加


int main(int argc, const char * argv[])

{
  
    
#pragma mark 知识点 1   一维数组
  #if 0
    {
        
    
        /** 定义一个数组 */
        
        int array [5] = {3, 4, 2, 5, 1};
        
        // array : 数组名
        
        // int [] : 数组类型
        
        // int : 数组中的元素类型
        
        // [5]: 元素的个数
        
        // 1,整型数组(数组元素都是整型)
        
        int   array2 [5] = {3,4};
        
        // 2,浮点型数组(数组元素都是浮点型)
        
        float array3 [5] = {4.4, 3.14};
        
        // 3,字符型数组 (数组元素都是字符型)
        
        char array4 [5] = {'a', 'b'};
        
        // 4,指针数组 (数组元素都是指针)
        
        
        
        //*********
        
        
        /*数组元素的访问*/
        
        // 1. 通过下标的形式 : array [下标]
        
        // 2. 下标是从 0 开始的;
        
        
        int array6[5] = {3, 4, 2, 5, 1};
        
        printf(" %d \n", array6[0]);
        
        printf(" %d \n", array6[1]);
        
        printf(" %d \n", array6[2]);
        
        
        
        
        //数组元素赋值
        
        array6[0] = 100;
        
        printf(" %d \n", array6[0]);
        
        //使用 for 循环遍历数组(打印每个元素)
        
        int array6[5] = {3, 4, 2, 5, 1};
        
        for (int i = 0; i < 5; i++) { //i 限制元素数目
            printf("%d\n", array6[i]);
        }
    
    }
    
#endif
    
   
    
#pragma mark  --- 练习
    
    /**
     * 1. 输入5个数, 计算找出最大值和所有元素的和
     */
    

    
    // ________________________________
    {

#if 0
        
        printf("请输入 5 个整数 : ");
        
        int array [5] = {0};
        
        int max = 0;
        
        int sum = 0;
        
        // 遍历数组,输入
        
        for ( int i = 0; i < 5; i++)
        
        {
            
            scanf("%d", &array[i]);
            
        }
        
        // 遍历数组,找出最大值和计算所有元素的和
        
        for ( int i = 0; i < 5; i++)
            
        {
            
            if (max < array[i])
                
            {
                max = array[i];//如果发现比 max 大的, array [i] 将数值结果赋值给 max;
            }
            
            //所有元素的和
            
            //sum += array[i];
            sum = sum + array[i];
        }
        
    
        // 输出结果
        
        printf("sum = %d, max = %d\n", sum, max);
        
        
        
#endif
 
        }
    
        /**
         * 2. 定义一个具有 20个元素 的 整型数组，每个元素的取值范围是30-70之间，求 数组元素的和
         */ // 同时求出随机数组的信息

#if 0 // 求出随机数组的数,并且求数组的和
    
    int array [20] = {0};
    
    int sum = 0;
    
    int random = 0;
    
    for (int i = 0; i < 20 ; i++)
        
    {
        array[i] = arc4random()%( 70 - 30 + 1)+30;
        
        random = arc4random()%( 70 - 30 + 1)+30;
        
        printf("%3d", random); // %3d 3后面空出两个格;
        
        sum += array[i];//sum = sum + array[i];
    }
        printf("\n");
        printf("sum = %d\n", sum);
    
#endif
    
  /// 求出数组的和
    
    {
#if 0
        
        int array [20] = {0};
        
        int sum = 0;
        
        for (int i = 0; i < 20 ; i++)
        
        {
            array[i] = arc4random()%( 70 - 30 + 1)+30;
            
            sum += array[i];//sum = sum + array[i];
            
        }
        
        
        printf("sum = %d\n", sum);
        
        
    
        
        
#endif
    
    }
    
        /**
         * 3.复制一个数组，即两个数组 容量一样，把其中一个数组中的元素 复制 到另外一个数组中
         
         */
    
#if 0
    
    int a [5] = {5 , 1, 89, 25, 35};
    
    int b [5] = {0};
    
    for(int i = 0; i< 5;i++)
        
    {
        b [i] = a[i];
        
        printf("%d,", b[i]);
    
    }
        printf("\n");
    
#endif
    
    //___
    {
        
#if 0
        
        
        int array1 [5] = {3, 2, 45, 5, 3};
        
        int array2 [5] = {0};
        
        for (int i = 0; i < 5; i++) // 元素个数限制条件
        
        {
            array2 [i] = array1[i];// array1[i]  赋值 给 array2[i] ;array [下标] i 是下标,i == 0 时,对应着元素中的 3
            printf("%d ,", array2[i]); // 打印出 array2 值

        }
        
        
        
       
        
#endif
    
    }
    
    
    
    
    /**
     * 5.整形数组的长度20,随机数范围35 - 90, 找到数组中最大的元素的值和它所对应的下标
     */
    
    
#if 0
    
    int a[20] = {0};
    
    int max = 0;
    
    int idex = 0;
    
    int random = 0;
    
    for (int i = 0; i< 20; i++)
        
    {
    
        //a[i] = arc4random()% (90 - 35 +1)+35;
        
        random = arc4random()% (90 - 35 +1)+35;
        
        a[i] = random;
        
        printf("%4d",a[i]);
        
        if (max < a[i])
            
        {
            max = a[i];
            
            idex = i;
        }
    
    }
    
        printf("\n");
    
        printf("max = %d, idex = %d\n",max,idex);
    
#endif
    
#if 0
    
    
    int array [20] = {0};
    
    int max = 0;
    
    int random = 0; //随机数
    
    int index = 0;//下标
    
    
    //遍历数组,找最大值以及他的下标
    
     for (int i = 0; i < 20; i++)
         
     {
         
         random =arc4random()%( 90 - 35 + 1) + 35;
         
         array [i] = random;
         
         printf("%d ", array[i]);


         if (max < array [i])
         
         {
             
          max = array [i];
        
          index = i ;
             
          }
         
         
     }
    
    
    printf("max = %d, index = %d\n", max , index);

#endif
    
    
    
    

    
    
    
#pragma mark 知识点 2 数组排序 (冒泡排序)
    
    
    // 数组中找到最大的值,放到数组的最后面;
    
    // 找出第二大的值,放到倒数第二位;
    
    //
    
#pragma mark --- 练习
    
    /**
     
     
     *（3）、定义一个6个整型的数组，通过俩俩比较把最大值放在后面，实现最大值放在最后。
     *（4）、在上题的基础上把倒数第二大的数字放在倒数第二位。（别在原来的for循环上操作，新创建一个for循环）
     *（5）、把第三大的数字放在倒数第三位上。
     *（6）、把第四大的数字放在倒数第三位上。
     *（7）、把第五大的数字放在倒数第三位上。
     *（8）、观察上面的规律，用双层for循环把数组排序。
     */
    
    
    
    
    
    //第一题:定义一个6个整型的数组，让奇偶位元素的值交换。
    
    ////////
    
  
    
    
    
    
    {
        
#if 0
        
    int array[6] = {3, 2, 4, 5, 6, 1};
    
    int temp = 0;
                        // i = i + 2 ???????????
    for (int i = 0; i < 6; i += 2)
    
    {
        
        temp = array[i];// i = 0 时等于 3
        
        array[i] = array [i + 1];// i = 0 时,等于 2
        
        array[i +1] = temp;// i= 0 时,将 3 赋值给了 2
    }
        
    //打印
        
    for (int j = 0; j < 6;j++) {
        printf("%d ",array[j]);
        
    }
    
        printf("\n");
#endif
    }
    
    //第二题:定义一个6个整型的数组，如果奇位比偶位元素的值大，则交换两个数的值。
    
#if 0
    
    int array [6] = {3, 5, 7, 3, 1, 8};
    
    int temp = 0;
    
    for (int i = 0 ; i < 6; i += 2)
    
    {
        if (array[i] > array [i+1])
        
        {
            temp = array [i];
            
            array [i] = array [i+1];
            
            array [i + 1] = temp ;
        }
    }
    
    for( int i = 0; i < 6; i++)
        
    {
        printf("%d ",array[i]);
    }
        printf("\n");
    
        
    
#endif
    
    //第一次 定义一个 6 个整型的数组，通过俩俩比较把最大值放在后面;
    
    
    //冒泡练习
    
    
    
    //
   
    
    {
    
#if 0
    
    int array[6] = {3, 2, 6, 4, 5,1};
    
    int temp = 0;
        
        //第一次,比较五次
    
    for ( int i = 0; i < 6 - 1; i++)
    
    {
        
        if (array[i] > array [i + 1])
        
        {
            
            temp = array[i];
            
            array [i]= array [i + 1];
            
            array [i + 1] = temp;
        }
    }
        
        
     for (int i= 0; i < 6; i++)
     
     {
            printf("%d ",array[i]);
     }
            
        
    //第二次:两两比较,找出第二大的数,放在数组倒数第二位置
        
        for ( int i = 0; i < 6 - 2; i++)
        
        {
            if (array[i] > array[i + 1])
                
            {
                temp = array [i];
                
                array[i] = array [ i + 1]
                
                array [ i + 1] = temp
            }
        }
        
        //第三次,比较 3 次
        
        for ( int i = 0; i < 6 -3; i++)
        
        {
            if (array[i])> array[ i + 1]
            
            {
                temp = array[i];
                array [i] =  array [i + 1];
                array [ i + 1] = temp;
            }
        }
        
        // 第四次,比较两次
        
        
        
        // 第五次,比较 1 次,此时数组排序完毕;
#endif
    
    }
    
    //3.
    
#pragma mark  知识点 3
    
    
#if 0
    
    // Bubblesort 冒泡排序
    
    int array [6] = {3, 4, 6, 5, 1, 2};
    
    int temp = 0;
    
    // 外层的 for 循环控制比较的次数
    
    for (int i = 0; i < 6- 1; i++)
    
    {
        //内层的 for 循环控制每次的比较
        
        for ( int j = 0; j < 6 -1-i; j++)
        
        {
            if (array[j]> array[ j+1])
            
            {
                temp = array[j];
                
                array [j] =  array [j + 1];
                
                array [ j + 1] = temp;
            }
        }
        
    }
    
        for (int i = 0; i < 6; i++)
    
        {
            printf("%d",array [i]);
        }
    
            printf("\n");
    
#endif
    
    
    
#if 0
    
    int array[6]={3, 2, 1, 6, 4, 5};
    
    int temp = 0;
    
    for (int i = 0; i < 6 - 1; i++)
    
        {
            
        for (int j = 0; j < 6-1-i;j++)
        
        {
            if (array[j] > array [j + 1])
            
            {
                
                temp = array [j];
                
                array[j] = array [j + 1];
                
                
            }
                
         }
    

    
    
#endif
        
      
#if 0
      // 计算数组元素个数
        
        int array [] = {3, 4, 2, 1};
        
       // l 长符号 lu 无符号
        
        // 计算数组的字节数
        
        printf("%lu\n", sizeof(array));
        
        
        int count = sizeof(array) / sizeof(int);
        
        printf(" count = %d\n", count);
        
        // 数组的总字节数除以第一个元素所占得字节数,就可以得出有几个元素
        
        int count2 = sizeof(array) / sizeof(array [0]);
        
        printf("count2 =  %d\n", count2);
        
#endif
        
        
        
#if 0
        //冒泡排序(优化版本)
        
        int array [6] = {3, 5, 2, 6, 1, 4};
        
        int count = sizeof(array) / sizeof(array[0]);
        
        int temp = 0;
        
        int flag = 1; // 1 表示数组无序;
        
        for ( int i = 0; i <  count - 1 && 1 == flag;  i++)
        
        {
            
            flag = 0; // 0 假设是有序的
            
            for (int j = 0 ; j < count - 1 - i ; j++ )
            
            {
                
                if (array [j] > array [j + 1])
                
                {
                    temp = array[j];
                    array[j] = array[j+1];
                    array [ j + 1] = temp;
                    flag = 1;// 发生交换,说明是无序,将 flag 赋值为1
                }
            }
            
        }
        
        for (int i = 0; i< count; i++)
        
        {
            printf("%d",array[i]);
        }
      
        printf("\n");
            
            
        
        
#endif
            
//练习
         
            
#if 0
           
            int array[]= {4, 6, 8, 2, 1};
            
            int temp = 0;
            
            int flag = 1;
        
            int count = sizeof(array) / sizeof (array[0]);
            
            for (int i = 0; i < count - 1; i++)
            
            {
                flag = 0;
                
                for ( int j = 0; j < count - 1 -i ; j++)
                    
                {
                
                if( array [j] > array[j+1])
                    
                {
                    temp = array[j];
                    
                    array[j] = array [j+1];
                    
                    array[j+1] = temp;
                    
                    flag = 1;
                    
                }
                
                }
                
            }
            
            for ( int i = 0; i < count ; i++)
            
            {
                printf("%d ", array [i]);
            }
            
                printf("\n");
            
            
#endif
            
            
            
#pragma mark - 字符数组(字符 串)
        
#if 0
        // 字符数组是一维数组,数组元素是字符类型(char)
        
        // 定义字符数组
        
        char string [5] = {'a', 'b', 'c', 'd', 'e'};
        
        //字符数组所占的字节数
        
        printf("%lu\n", sizeof(string));
        
        char string2 [] = {'i', 'o', 's'};
        
        printf("%lu\n", sizeof(string2));
        
        
        //双引号 "" 定义的字符数组,在数组的最后一位,系统会自动添加一个 \0 ,所以这个字符数组占得字节数会多一个字节
        
        char string3 [] = "iphone";
        
        printf("%lu\n", sizeof(string3));
        
        
        // 字符串常用函数
        
        
        char  string4[] = "iphone6splus";
        
        // 函数 1/ strlen (),计算字符串长度
        
        printf("长度:%lu\n",strlen(string4));
        
        printf("字节数:%lu\n", sizeof (string4));
        
#endif
        
        
    //查找字符串中的空格数: 例如:"I love ios, i want an iphone6s"
        
#if 0
        
        char str[] = "I love ios, i want an iphone6s";
        
        int count = 0;
        
        char i = 0;
        
        while (str[i] != '\0')
        {
            if (str[i] == ' ')
                
            {
                count++;
            }
            
            i++;
        }
        
        printf("空格数: %d\n", count);
    
        
        
#endif
        
#if 0
        
        // 函数 2/ strcpy(),字符串拷贝 strcpy strcpy strcpy strcpy 将 string 的 iphone 复制给了 string 2
        
        char string[] = "iphone";
        
        char string2 [100] = "ios";
        
        strcpy(string2, string);
        
        // %s 输出字符串,直到遇到 \0 ,停止输出;
        
        printf("string:%s\n", string);
        
        printf("string2:%s\n", string2);// string2 == "iphone";
        
        printf("over\n");
        
        
        
#endif
        
        // 函数 3/ 拼接 strcat
        
#if 0
      
        
        char string [] = "iphone";
        
        char string2 [20] = "ios";
        
        strcat(string2, string);
        
        //string 拼接在 string2 的后面;
        
        printf("string2: %s\n", string2);
        
       // printf("string:%s\n", string);
        
        
#endif
       
       // 函数 4/ 字符串比较 strcmp
        
#if 0
        
        
        char string [] = "abc";
        
        char string2 [] = "acc";
        
        
        //strcmp 函数有一个返回值,通过返回值判断比较结果
        
        //strcmp 是两个字符串从第一个字节开始比较,比较的值为两个字符的 ASCII 码值之差.当比较值不为 0 的之后, 停止比较,根据值的正负判断大小;
            
            /*
             
             strcmp()函数是通过两个字符串一个一个字符比较的（最多比较次数为第二个参数的长度+1）
             例如strcmp("hello","here");
             首先比较第一个字符'h'= 'h'相等
             接着比较第二个字符'e'= 'e'相等
             .接着比较第三个字符 'l'>'e',返回一个正值
             如果字符串完全相等会回0

             
             */
        
        strcmp(string, string2);
        
        int result = strcmp(string2, string);
        
        printf("result:%d\n", result);
        
        
            
            //这几种函数 谁在后就覆盖谁,后往前.
        
        
#endif
        
        
        
    
#pragma mark - 知识点 - 宏定义
        
#if  0
        
// PI 代表宏名
        
// 宏 定义通常是在函数的外面定义
        
// 详见 main 函数的上面宏部分
        
        printf("%f\n", PI);
        

        MUL(3, 5);
        
        printf("%d\n", MUL(3, 5));
        
        
       
#endif
        
       
     
        
        
        
        
        
        
        
    
    return 0;
}


    
    
    
    
    
    
    
    
