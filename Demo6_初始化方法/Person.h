//
//  Person.h
//  Demo6_初始化方法
//
//  Created by MS on 15-9-21.
//  Copyright (c) 2015年 QF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    NSInteger _age;
    NSInteger _height;
}
//无参的初始化方法，方法名init,不能修改
- (Person*)init;

//带参的初始化方法
- (Person*)initWithAge:(NSInteger)newAge andHeight:(NSInteger)newHeight;

- (void)printInfo;

- (void)test;

@end
