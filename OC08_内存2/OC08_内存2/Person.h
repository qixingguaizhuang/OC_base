//
//  Person.h
//  OC08_内存2
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying> //在 @interface 后面 <> 内签协议;


@property (nonatomic ,retain) NSString *name;

@property (nonatomic, assign) NSInteger  age;

@property (nonatomic, retain) NSString *sex;







@end
