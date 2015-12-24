//
//  main.m
//  CS_08内存作业
//
//  Created by dllo on 15/11/26.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
    //1.输入一个整型数组长度 ,动态创建数组存储整数,所有元素随机生成,输出元素中的最大值。
#if 0
    int string[5]={};
    
    //int count = 0;
    
    // printf("请输入一个数组长度\n")
    
    //scanf("%d",count);
    
    int max = 0;
    
    int *str = malloc(5*sizeof(int));
    
    for(int i= 0;i<5;i++){
    
        *(str+i)= arc4random()%(20-10+1)+10;
        printf("%d ", *(str+i));
        
        max =  max > *(str+i) ? max : *(str+i);
    
    }
    
    printf ("\n");
    
    printf("max = %d\n",max);
    
#endif
    
    
    //2.已知一个数组有20个整型元素(随机1到100之间包含1和 100),求大于平均数的元素个数,并动态生成一个新数组保存大于平均数的元素.(提示:需要先计算大于平均数的元素的个数,然后动态分配空间)。
    
    
    int array[20]={};

    float sum = 0;
    
    int count = 0;//大
    
   float averrage = 0;
    
    //遍历出随机数
    
    for (int i = 0; i < 20; i++) {
       
        array[i] = arc4random()%(100 - 1 +1)+1;
        sum =(sum + array[i]);
        printf("%d ",array[i]);
    }
    
    printf ("\n");
    
    averrage = sum/20;
    
    printf("平均值 = %.2f\n",averrage);
    
    for (int i = 0; i< 20; i++) {
        
        if(array[i]>averrage){
            
            count++;
        }
    }
    
    printf("count = %d\n",count);
    
    int *p =malloc(count*sizeof(int));
    
    int j =0;
    
    for (int i = 0; i < 20; i++) {
        
        if(array[i] > averrage){
        
            *(p+j) = array[i];
            
            printf("%d ",*(p+j));
            
            j++;
        }
    }
    printf ("\n");
    
    free(p);
    
    p = NULL;
    
   
    return 0;
}
