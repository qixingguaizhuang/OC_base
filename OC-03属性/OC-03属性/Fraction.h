//
//  Fraction.h
//  OC-03属性
//
//  Created by dllo on 15/12/2.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject



/*
 
 创建一个Fraction类(分数)实现分数的加减乘除,⽐较⼤小、约分等方法。
 提示：1.声明属性 numerator(分子)、denominator(分母)。
 2.声明自定义初始化方法、遍历构造器，用于给分子分母赋值。
 3.声明功能方法。
 
 */


@property (nonatomic, assign) int numberator;

@property (nonatomic, assign) int denominator;



- (instancetype) initWithNumberator:(int)numberator

                        denominator:(int)denominator;


+ (instancetype) fractionWithNumberator:(int)numberator
                           denominator:(int)denominator;

//加法


- (Fraction *)addOperationWithFraction:(Fraction *)fraction; // 传入一个 self 返回一个 self



// 减法


- (Fraction *)subOperationWithFraction:(Fraction *)fraction;


// 乘法

- (Fraction *)mulOperationWithFraction:(Fraction *)fraction;


// 除法

- (Fraction *)diviOperationWithFraction:(Fraction *)fraction;


// 约分


- (Fraction *)reduOperationWithFraction:(Fraction *)fraction;


// 比较两个分数的大小

- (NSComparisonResult) compareWithFraction: (Fraction *)frac;


    (Fraction *)frac{
        
        Fraction *newFraction = [self ]



}


@end
