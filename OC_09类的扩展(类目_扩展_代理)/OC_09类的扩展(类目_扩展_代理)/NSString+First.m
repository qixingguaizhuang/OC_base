//
//  NSString+First.m
//  OC_09类的扩展(类目_扩展_代理)
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "NSString+First.h"

@implementation NSString (First)

- (NSString *)firstCapChar{


    return [self substringToIndex:1].uppercaseString;


}



@end
