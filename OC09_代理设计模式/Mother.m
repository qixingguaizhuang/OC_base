//
//  Mother.m
//  OC09_代理设计模式
//
//  Created by dllo on 15/12/11.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Mother.h"

@implementation Mother

-(void) payMoney{

// 让代理人执行协议方法
    
    [self.delegate takecareChild];
    
    [self.delegate cooking];
    
    // 方法:判断代理人是否实现了协议方法.通常协议方法是 @optional 修饰的, 都要用此方法进行判断,
    
    if ([self.delegate respondsToSelector:@selector(washing)]) {
        
        [self.delegate washing];
        
    }

}

















@end
