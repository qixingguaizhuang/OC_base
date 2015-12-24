//
//  CollegeStudent.m
//  OC02_方法
//
//  Created by dllo on 15/12/1.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "CollegeStudent.h"



@implementation CollegeStudent




- (void)setMajor:(NSString *)major{
    _major = major;
}


- (void)setAcademy:(NSString *)academy{
    _academy = academy;


}

-(NSString *)major{
    return _major;        // return _major 固定不能丢

}

-(NSString *)academy{
    return _academy;
}




-(instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(NSString *)sex school:(NSString *)school number:(NSString *)number major:(NSString *)major academy:(NSString *)academy{


    self = [super initWithName:name age:age sex:sex school:school number:number]; // 体现继承
    
    if(self){
    
        _major = major;
        
        _academy = academy;
    
    }


    return self;

}
















@end
