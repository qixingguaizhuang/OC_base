//
//  CollegeStudent.h
//  OC02_方法
//
//  Created by dllo on 15/12/1.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Student.h"

@interface CollegeStudent : Student

{
    NSString *_major;  // *_名 固定语法不能丢
    
    NSString *_academy;
}



- (void)setMajor:(NSString *)major;

- (void)setAcademy:(NSString *)academy;

-(NSString *)major;

-(NSString *)academy;


//自定义初始化方法


-(instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(NSString *)sex school:(NSString *)school number:(NSString *)number major:(NSString *)major academy:(NSString *)academy;






@end
