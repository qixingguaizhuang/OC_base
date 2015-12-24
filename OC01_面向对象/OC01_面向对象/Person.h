//
//  Person.h
//  OC01_面向对象
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <Foundation/Foundation.h>// 基础框架/


/**
 *    .h  文件包含类的实例变量和方法的声明.
 *    实例的变量和方法的声明要在对应的 @interface 和 @end 之间.
 *
 *
 */

@interface Person : NSObject

//其中: Person 类名,代码规范要求,类名首字母大写! NSObject 父类名(后面的继承章节详细介绍)



//1.类的实例变量,注意,写在花括号内( {} );

{
    
    //实例变量可见度: @public   @protected  @private  一共三种
    /*
     
     * @public 公共的,类的内部和外部都可以直接访问( 注: 类的内部就是指 .m 文件中@implementation @end 之间; 类的外部指,不在上述范围的)
     
     * @protected 受保护的. 类的内部及子类可以访问;
     
     * @private 私有的. 类的内部可以访问;
     
     * 默认可见度是: @protected 受保护
     
     */

    @public // 可见度修饰词,直到遇到下一个可见度修饰词之前的实例变量
    
    NSString *_name; // OC 中的字符串儿,同样也是对象.  NSString 就是字符串对象类型. 由于对象实在堆区开辟空间,所以 NSString 类型的实例变量前面加符号  * (指针),代码规范:实例变量前面加 _ 符号(目的:是和后面讲到的属性进行区别); 
    
    
    int _age;
    
    NSInteger _number; // 注意: NSInteger 不是对象类型,它会根据系统环境确定不同的整型类型;
    
    
    float _weight;

}


//2.类的方法声明;




- (void)sayHello;//没有参数不用加括号; 相对函数的形式来说

//< 1 > 方法前面 要加上'+'或'-'符号,分别表示类方法还是对象方法;

//< 2 > 方法的返回值用 () 括号括起来 ;

//< 3 > 方法如果没有参数,后面没有括号,不用添加;




- (void)infomationOfPerson:(Person *)person; //infom : 后加参数

#if 0

-(Fraction *) addOperationWithFraction : (Fraction *) fraction;

// 有参数,有返回值的类的方法
#endif
//infomationOfPerson 函数名,参数名  (Person *) 参数类型  person 参数名

//< 1 > 对象方法

//< 2 > 如果方法带参数. : 后面加上(参数类型)参数名

- (void)infomation; //无参无返回值






@end
