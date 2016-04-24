//
//  ViewController.m
//  Calculator
//
//  Created by Максим on 17.03.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize currentNumber;
@synthesize finalResult;
@synthesize calculator;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    calculator = [Calculator new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)clickDigit:(UIButton *)sender {
    long digit = sender.tag;
    [calculator addNumber:(int)digit];
    currentNumber.text = calculator.currentPrint;
}

-(IBAction)clickDot:(id)sender {
    [calculator addPoint];
    currentNumber.text = calculator.currentPrint;
}

-(IBAction)cleanNumber:(id)sender {
    [calculator clearNumber];
    currentNumber.text = calculator.currentPrint;
}


-(IBAction)clickOver:(id)sender {
    [calculator overClick];
    currentNumber.text = calculator.currentPrint;
    finalResult.text = @"";
}

-(IBAction)clickAdd:(id)sender {
    [calculator executeWithNewOperation:[AddOperation new]];
    [self fillLabels];
}

-(IBAction)clickSub:(id)sender {
    [calculator executeWithNewOperation:[SubOperation new]];
    [self fillLabels];
}


-(IBAction)clickMul:(id)sender {
    [calculator executeWithNewOperation:[MulOperation new]];
    [self fillLabels];
}

-(IBAction)clickDiv:(id)sender {
    [calculator executeWithNewOperation:[DivOperation new]];
    [self fillLabels];
}

-(IBAction)clickMod:(id)sender {
    [calculator executeWithNewOperation:[ModOperation new]];
    [self fillLabels];
}

-(IBAction)clickEqual:(id)sender {
    [calculator equalOperation];
    [self fillLabels];
}

-(void)fillLabels {
    currentNumber.text = calculator.currentPrint;
    finalResult.text = [NSString stringWithFormat:@"%.4f", calculator.result];
}

@end
