//
//  main.m
//  CS_06晚间作业
//
//  Created by dllo on 15/11/24.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>
/*某班有5个学生，三门课。分别编写3个函数实现以下要求：
 （1） 求各门课的平均分；
 （2） 找出有两门以上不及格的学生，并输出其学号和不及格课程的成绩；
 （3） 找出三门课平均成绩在85-90分的学生，并输出其学号和姓名*/

struct Student

{
    int number;
    
    int yuwen;
    
    int shuxue;
    
    int yingyu;
    
    float aerrage;
    
};

typedef struct Student Stu;

void Averrage()

{
    Stu number = {1, 2, 3, 4, 5};
    
    Stu Student1={1, 45, 67, 89};
    
    Stu Student2={2, 33, 65, 34};
    
    Stu Student3={3, 65, 23, 55};
    
    Stu Student4={4, 43, 22, 78};
    
    Stu Student5={5, 84, 56, 62};
    
    stu arraystudent[5]={Student1,Student2,Student3,Student4,Student5};
    
    int yuwensum = 0;
    
    int shuxuesum = 0;
    
    int yingyusum = 0;
    
    for (int i = 0; i < 5; i++)
    {
        yuwensum = yuwensum + arraystudent[i].yuwen;
        
        shuxuesum = shuxuesum + arraystudent[i].shuxue;
        
        yingyusum = yingyusum + arraystudent[i].yingyu;
        
    }
    
    printf("yuwen = %d,shuxue = %d,")
    
    
    
}











int main(int argc, const char * argv[]) {
  
   
    
    
    
    
    return 0;
}
