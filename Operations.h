//
//  Operations.h
//  Calculator
//
//  Created by Максим on 17.03.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperationProtocol.h"

@interface AddOperation: NSObject <OperationProtocol>
-(float) calculate: (float) a withSecondOperand: (float) b;
@end

@interface SubOperation: NSObject <OperationProtocol>
-(float) calculate: (float) a withSecondOperand: (float) b;
@end

@interface MulOperation: NSObject <OperationProtocol>
-(float) calculate: (float) a withSecondOperand: (float) b;
@end

@interface DivOperation: NSObject <OperationProtocol>
-(float) calculate: (float) a withSecondOperand: (float) b;
@end

@interface ModOperation: NSObject <OperationProtocol>
-(float) calculate: (float) a withSecondOperand: (float) b;
@end