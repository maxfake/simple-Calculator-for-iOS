//
//  Calculate.m
//  Calculator
//
//  Created by Максим on 17.03.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

#import "Calculator.h"
#import "Operations.h"

@implementation Calculator

@synthesize firstOperand;
@synthesize secondOperand;
@synthesize result;
@synthesize operation;
@synthesize currentPrint;

bool hideResult = NO;
bool withDot = NO;
int step = 10;

-(instancetype) init {
    self = [super init];
    if (self){
        firstOperand = NAN;
        secondOperand = 0;
        result = NAN;
        operation = nil;
        currentPrint = [NSMutableString stringWithString:@"0"];
    }
    return self;
}

-(void) addNumber:(int)number {
    if (withDot == NO) {
        secondOperand *= 10;
        secondOperand += number;
    } else {
        secondOperand += (float) number / step;
        step *= 10;
    }
    
    if (!operation) {
        firstOperand = NAN;
//        result = NAN;
    }
    
    if (secondOperand != 0) {
        if ([currentPrint characterAtIndex:0] == '0' && !withDot) {
            currentPrint = [NSMutableString stringWithFormat:@""];
        }
        NSString *digit = [NSString stringWithFormat:@"%d", number];
        [currentPrint appendString:digit];
    } else {
        currentPrint = [NSMutableString stringWithFormat:@"0"];
    }
}

-(void) addPoint {
    withDot = YES;
    [currentPrint appendString:@"."];
}

-(void) clearNumber {
    secondOperand = 0;
    withDot = NO;
    step = 10;
    currentPrint = [NSMutableString stringWithString:@"0"];
}

-(void) overClick {
    firstOperand = NAN;
    secondOperand = 0;
    result = NAN;
    withDot = NO;
    operation = nil;
    currentPrint = [NSMutableString stringWithString:@"0"];
}

-(void) executeWithNewOperation:(id<OperationProtocol>) newOperation {
    [self executeOperation];
    operation = newOperation;
}

-(void) executeOperation {
    if (operation != nil) {
        result = [operation calculate:firstOperand withSecondOperand:secondOperand];
        firstOperand = result;
    } else {
        if (isnan(firstOperand)) {
            firstOperand = secondOperand;
            result = firstOperand;
        }
        if (isnan(result)) {
            result = firstOperand;
        }
    }
    withDot = NO;
    step = 10;
    secondOperand = 0;
    currentPrint = [NSMutableString stringWithString:@"0"];
}

-(void) equalOperation {
    if (operation != nil) {
        result = [operation calculate:firstOperand withSecondOperand:secondOperand];
        firstOperand = result;
        operation = nil;
    }
    operation = nil;
    withDot = NO;
    step = 10;
    secondOperand = 0;
    currentPrint = [NSMutableString stringWithString:@"0"];
}

@end
