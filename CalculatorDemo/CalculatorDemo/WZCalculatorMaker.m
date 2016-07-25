//
//  WZCalculatorMaker.m
//  CalculatorDemo
//
//  Created by songbiwen on 16/7/22.
//  Copyright © 2016年 songbiwen. All rights reserved.
//

#import "WZCalculatorMaker.h"

@interface WZCalculatorMaker ()

@property (nonatomic, copy) void (^block)(int);

@end

@implementation WZCalculatorMaker

/** + */
- (WZCalculatorMaker *(^)(double num))add {
    
    return ^(double num) {
        _result += num;
        return self;
    };
}

/** - */
- (WZCalculatorMaker *(^)(double num))subtract {
    return ^(double number) {
        _result -= number;
        return self;
    };
}

/** * */
- (WZCalculatorMaker *(^)(double num))multiply {
    return  ^(double num) {
        _result *= num;
        return self;
    };
}


/** 
 * 当num = 0 时
 返回inf
 infinite的前三个字母，无穷大的意思。
 实际意思是当算出的结果大于某个数（这个数很大，比如10的很多次方），则MATLAB认为就是无穷大了，并返回 inf
 */
/** / */
- (WZCalculatorMaker *(^)(double num))divide {
    return ^(double num) {
        
        _result /= num;
//        if (num == 0) {
//            _result = MAXFLOAT;
//        }else {
//            _result /= num;
//        }
        return self;
    };
}

@end
