//
//  Fraction.m
//  OC-03属性
//
//  Created by dllo on 15/12/2.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

//- (instancetype) initWithNumberator:(int)numberator
//
//                        denominator:(int)denominator{
//
//    self = [super init];
//    
//    if (self) {
//        _numberator = numberator;
//        
//        _denominator = denominator;
//    }
//
//    return self;
//
//}




- (instancetype) initWithNumberator:(int)numberator

                        denominator:(int)denominator{


    self = [super init];
    
    if (self) {
        
        _numberator  = numberator;
        
        _denominator = denominator;
    }

    return self;

}



// 加法 便利构造器

+ (instancetype) fractionWithNumberator:(int)numberator
                            denominator:(int)denominator{

    Fraction *fra = [[Fraction alloc] initWithNumberator:3 denominator:9];
    
    return fra;


}

//加法


- (Fraction *)addOperationWithFraction:(Fraction *)fraction{

    self.numberator  = self.numberator * fraction.denominator + self.denominator * fraction.numberator;
    
    self.denominator = self.denominator * fraction.denominator;
    
    return self;

}

-(void) addof;


// 减法


- (Fraction *)subOperationWithFraction:(Fraction *)fraction{
    
    
    self.numberator  = self.numberator * fraction.denominator - self.denominator * fraction.numberator;
    
    self.denominator = self.denominator * fraction.denominator;
    
    return self;


}


// 乘法

- (Fraction *)mulOperationWithFraction:(Fraction *)fraction{
    
    
    self.numberator = self.numberator  * fraction.numberator;
    
    self.denominator =self.denominator * fraction.denominator;
    
    return self;

}


// 除法

- (Fraction *)diviOperationWithFraction:(Fraction *)fraction{
    
    
    self.numberator = self.numberator * fraction.denominator;
    
    self.denominator = self.denominator * fraction.numberator;
    
    return self;
}


// 约分

- (void) reduce {
//最大公约数
    
    long m = self.numberator;
    
    long n = self.denominator;
    
    long temp = 0;
    
    while (m % n !=0) {
        temp = m % n;
        m =n ;
        n = temp;
    }

    self.numberator /= n;
    
    self.denominator /= n;
    
    
    

}


- (NSComparisonResult)compareWithFraction:(Fraction *)frac{

    Fraction *newFraction = [self subOperationWithFraction:fraction];
    
    if (newFraction.numberator)  * newFraction.denominator > 0{
        return NSOrderedAscending;
    }else if (newFraction.numerator * newFraction.denominator < 0){
    
    
        return NSOrderedAscending;
    
    }else{
    
        return NSOrderedAscending;
    
    }



}




@end
