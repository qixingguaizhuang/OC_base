//
//  Student.m
//  OC09_代理设计模式
//
//  Created by dllo on 15/12/11.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Student.h"

@implementation Student

// 实现协议方法
- (void) takecareChild{

    NSLog(@"逗小孩玩");
}

- (void) cooking{

    NSLog(@"西红柿炒鸡蛋");

}

- (void)washing{
    
    NSLog(@"洗袜子");

}


@end
