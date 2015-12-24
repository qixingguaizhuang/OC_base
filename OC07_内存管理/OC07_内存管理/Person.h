//
//  Person.h
//  OC07_内存管理
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property (nonatomic, retain) NSString *name;

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, retain) NSString *sex;



+ (instancetype)Person;

- (instancetype)initWithName:(NSString *)name;






@end
