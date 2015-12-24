//
//  Phone.h
//  OC-03属性
//
//  Created by dllo on 15/12/2.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Phone : NSObject

@property (nonatomic, retain)  NSString *name;

@property (nonatomic, retain)  NSString *colour;

@property (nonatomic, retain)  NSString *size;


-(instancetype)initWithName: (NSString *)name

                     colour: (NSString *)colour

                       size: (NSString *)size;



+(instancetype)phoneWithName: (NSString *)name

                      colour: (NSString *)colour

                        size: (NSString *)size;


- (void)callPhone;























@end
