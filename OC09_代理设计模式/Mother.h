//
//  Mother.h
//  OC09_代理设计模式
//
//  Created by dllo on 15/12/11.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Person.h"


// 声明协议

@protocol BaomuDelegate <NSObject>

@required //必须实现的目的

// 照看小孩

- (void) takecareChild;

// 做饭

- (void) cooking;



@optional //可选择的

// 洗衣服

-(void)washing;

@end







@interface Mother : Person


// 声明 delegate 属性 id 泛指所有类型,不确定哪一个

@property (nonatomic, assign) id<BaomuDelegate>delegate;


// 声明 付钱方法

-(void) payMoney;




@end
