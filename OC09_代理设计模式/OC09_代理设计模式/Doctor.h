//
//  Doctor.h
//  OC09_代理设计模式
//
//  Created by dllo on 15/12/11.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Person.h"

#import "Mother.h"

@interface Doctor : Person<BaomuDelegate>

@end
