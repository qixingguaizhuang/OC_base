//
//  Person.m
//  OC07_内存管理
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "Person.h"

@implementation Person


// 加 synth 解决报错

@synthesize name = _name;


// init 初始化方法中实例变量的写法问题;

- (instancetype)initWithName:(NSString *)name{

    self = [super init];
    
    if (self){
        
        //self.name  = name;
    
        _name = [name copy];// Apple 官方 API 的写法
    
    }
    
    return self;

}





// 构造器

+ (instancetype)Person{

    Person *person = [[Person alloc] init];
    
    return [Person autorelease];


}





// _name setter 方法的实现

- (void)setName:(NSString *)name{

    if ( _name != name) {
       [ _name release ];
       _name = [ name retain ];
    }
}











// _name getter 方法的实现


- (NSString *)name{
    
    return [[_name retain] autorelease];
    
}



// _age setter 方法的实现 直接赋值,基本数据类型

-(void)setAge:(NSInteger)age{
    
    _age = age;
    
}


// 重写 dealloc 方法

-(void)dealloc{
    
    [_name release];// 对象类型 release 掉
    
    [_sex release];
    
    [super dealloc];// 最后一条语句一定要调用父类的 dealloc 方法,即释放内存.
    
}






@end
