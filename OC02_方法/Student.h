//
//  Student.h
//  OC02_方法
//
//  Created by dllo on 15/12/1.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Person.h"

@interface Student : Person


{
    NSString *_school; // 继承 Person 类 的 Student 类
    
    NSInteger _number;
}



- (void)setSchool:(NSString *)school;

- (NSString *)school;


- (void)setNumber:(NSInteger)number;

- (NSInteger)number;


//自定义初始化方法


-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                        sex:(NSString *)sex
                     school:(NSString *)school
                     number:(NSString *)number;










@end
