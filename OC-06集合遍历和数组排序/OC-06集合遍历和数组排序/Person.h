//
//  Person.h
//  OC-06集合遍历和数组排序
//
//  Created by dllo on 15/12/8.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property (nonatomic, retain) NSString *name;

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, retain) NSString *sex;


-(instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(NSString *)sex;



/** 声明一个按照姓名升序排序的方法. */

- (NSComparisonResult)compareWithNameUP:(Person *)anotherPerson;



/** 声明一个按照姓名 #降序# 排序的方法. */

- (NSComparisonResult)compareWithNameDown:(Person *)anotherPerson;


/**根据年龄进行 #升序#  排序方法大   */


- (NSComparisonResult)compareWithAgeUP:(Person *)anotherPerson;











@end
