//
//  ViewController.m
//  CalculatorDemo
//
//  Created by songbiwen on 16/7/22.
//  Copyright © 2016年 songbiwen. All rights reserved.
//

#import "ViewController.h"
#import "WZCalculatorMaker.h"
#import "NSObject+WZCalculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    double result = 0;
    
    // +
    
//    WZCalculatorMaker *maker = [[WZCalculatorMaker alloc] init];
//    result = [maker.add(10).add(20) result];
    
    result = [NSObject makeAdd:^(WZCalculatorMaker *maker) {
        maker.add(10).add(20);
        maker.add(30).add(40);
    }];
    
    result = [NSObject makeAdd:^(WZCalculatorMaker *maker) {
        maker.add(10).add(20);
        maker.add(30).add(40);
        maker.subtract(10);
    }];
    
    result = [NSObject makeCalculator:^(WZCalculatorMaker *maker) {
        maker.add(10).add(20).subtract(5).multiply(2).divide(2);
    }];
    NSLog(@"%f",result);
}


@end
