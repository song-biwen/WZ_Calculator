//
//  WZCalculatorMaker.h
//  CalculatorDemo
//
//  Created by songbiwen on 16/7/22.
//  Copyright © 2016年 songbiwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WZCalculatorMaker : NSObject

@property (nonatomic, assign) double result;

// +
- (WZCalculatorMaker *(^)(double num))add;

// -
- (WZCalculatorMaker *(^)(double num))subtract;

// *
- (WZCalculatorMaker *(^)(double num))multiply;

// /
- (WZCalculatorMaker *(^)(double num))divide;
@end
