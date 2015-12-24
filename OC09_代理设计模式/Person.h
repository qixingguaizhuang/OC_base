//
//  Person.h
//  OC09_代理设计模式
//
//  Created by dllo on 15/12/11.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, retain) NSString *name;


- (instancetype)initWithName:(NSString *)name;

@end
