//
//  Calculate.h
//  Calculator
//
//  Created by Максим on 17.03.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperationProtocol.h"

@interface Calculator : NSObject

@property float firstOperand;
@property float secondOperand;
@property float result;
@property id<OperationProtocol> operation;
@property NSMutableString *currentPrint;

-(instancetype) init;
-(void) addNumber: (int) number;
-(void) addPoint;
-(void) clearNumber;
-(void) overClick;
-(void) executeWithNewOperation: (id<OperationProtocol>) newOperation;
-(void) equalOperation;

@end
