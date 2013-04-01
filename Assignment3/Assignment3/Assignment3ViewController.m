//
//  Assignment3ViewController.m
//  Assignment3
//
//  Created by Anthony DeFrancesco on 3/31/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "Assignment3ViewController.h"

@interface Assignment3ViewController ()

@end

@implementation Assignment3ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sumNumbers:(id)sender {
    double num1 = [_numberOne.text doubleValue];
    double num2 = [_numberTwo.text doubleValue];
    double result = num1 + num2;
    
    NSString *resultString = [[NSString alloc] initWithFormat: @"%.2f",result];
    _resultLabel.text = resultString;
    
}
- (IBAction)textFieldReturn:(id)sender{
    [sender resignFirstResponder];
}
@end
