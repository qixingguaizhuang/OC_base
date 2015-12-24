//
//  Fraction.h
//  字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject


@property (nonatomic,assign) NSInteger num; // 分子

@property (nonatomic, assign) NSInteger deno;//分母

- (instancetype)initWithNum: (NSInteger)num deno:(NSInteger)deno;


// + 法,参数的功能


- (Fraction *)addFraction:(Fraction *)fraction;



















@end
