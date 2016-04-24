//
//  ViewController.h
//  Calculator
//
//  Created by Максим on 17.03.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"
#import "OperationProtocol.h"
#import "Operations.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *currentNumber;
@property (weak, nonatomic) IBOutlet UILabel *finalResult;

@property Calculator *calculator;

-(IBAction) clickDigit:  (id)sender;
-(IBAction) clickDot:    (id)sender;
-(IBAction) cleanNumber: (id)sender;
-(IBAction) clickOver:   (id)sender;
-(IBAction) clickAdd:    (id)sender;

@end

