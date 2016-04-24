//
//  Operations.m
//  Calculator
//
//  Created by Максим on 17.03.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

#import "Operations.h"

@implementation AddOperation
-(float) calculate: (float) a withSecondOperand: (float) b {
    return  a + b;
}
@end

@implementation SubOperation
-(float) calculate: (float) a withSecondOperand: (float) b {
    return  a - b;
}
@end

@implementation MulOperation
-(float) calculate: (float) a withSecondOperand: (float) b {
    return  a * b;
}
@end

@implementation DivOperation
-(float) calculate: (float) a withSecondOperand: (float) b {
    if (b == 0){
        return  NAN;
    }
    return  a/b;
}
@end

@implementation ModOperation
-(float) calculate: (float) a withSecondOperand: (float) b {
    if (b == 0){
        return  NAN;
    }
    return  (int)a % (int)b;
}
@end