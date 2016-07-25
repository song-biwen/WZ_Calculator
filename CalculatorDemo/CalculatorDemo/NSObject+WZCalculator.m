//
//  NSObject+WZCalculator.m
//  CalculatorDemo
//
//  Created by songbiwen on 16/7/22.
//  Copyright © 2016年 songbiwen. All rights reserved.
//

#import "NSObject+WZCalculator.h"
#import "WZCalculatorMaker.h"

@implementation NSObject (WZCalculator)

+ (double)makeCalculator:(void(^)(WZCalculatorMaker *))block {
    WZCalculatorMaker *maker = [[WZCalculatorMaker alloc] init];
    block(maker);
    return maker.result;
}

/** Add */
+ (double)makeAdd:(void(^)(WZCalculatorMaker *))block {
    WZCalculatorMaker *maker = [[WZCalculatorMaker alloc] init];
    block(maker);
    return maker.result;
}

/** Subtract */
+ (double)makeSubtract:(void(^)(WZCalculatorMaker *))block {
    WZCalculatorMaker *maker = [[WZCalculatorMaker alloc] init];
    block(maker);
    return maker.result;
}
@end
