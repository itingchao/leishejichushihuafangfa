//
//  Person.m
//  Demo6_初始化方法
//
//  Created by MS on 15-9-21.
//  Copyright (c) 2015年 QF. All rights reserved.
//

#import "Person.h"

@implementation Person

- (Person *)init{
    //先调用父类的初始化方法，初始化父类的成员变量
    //self指向开辟的空间
    self = [super init];
    //如果[super init]成功
    if (self != nil) {
        //给Person类的对象的成员变量赋值
        _age = 10;
        _height = 100;
    }
    //返回self指向的空间的地址
    return self;
    
    //另一种写法
//    if (self = [super init]) {
//        _age = 10;
//        _height = 100;
//    }
//    return self;
}

- (Person *)initWithAge:(NSInteger)newAge andHeight:(NSInteger)newHeight{
    
    //super是一个编译器符号/关键字，通过super可以调用父类的方法
    //self指向当前对象的指针变量
    if (self = [super init]) {
        _age = newAge;
        _height =  newHeight;
//        NSLog(@"%p", super);报错
        NSLog(@"%p", self);
    }
    return self;

}

- (void)printInfo{

    NSLog(@"%ld, %ld", _age, _height);
}

- (void)test{
    //通过self可以调用类内的方法
    //谁调用test方法，self就指向谁
    [self printInfo];
}

@end
