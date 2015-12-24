//
//  Phone.m
//  OC-03属性
//
//  Created by dllo on 15/12/2.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Phone.h"

@implementation Phone



-(instancetype)initWithName: (NSString *)name

                     colour: (NSString *)colour

                       size:(NSString *)size{

    self = [super init];
    
    if (self) {
        
        _name = name;
        
        _colour = colour;
        
        _size = size;
        
    }


    return self;


}



+(instancetype)phoneWithName: (NSString *)name

                      colour:(NSString *)colour

                        size:(NSString *)size{

    Phone *p = [[Phone alloc] initWithName:name colour:colour size:size];
    
    return p;


}




- (void)callPhone{

    NSLog(@"Calling~~~~ ");

}

@end
