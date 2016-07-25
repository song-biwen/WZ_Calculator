//
//  NSObject+WZCalculator.h
//  CalculatorDemo
//
//  Created by songbiwen on 16/7/22.
//  Copyright © 2016年 songbiwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WZCalculatorMaker;
@interface NSObject (WZCalculator)

+ (double)makeCalculator:(void(^)(WZCalculatorMaker *))block;

//Add
+ (double)makeAdd:(void(^)(WZCalculatorMaker *))block;

//Subtract
+ (double)makeSubtract:(void(^)(WZCalculatorMaker *))block;
@end
