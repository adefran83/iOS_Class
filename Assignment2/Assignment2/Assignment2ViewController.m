//
//  Assignment2ViewController.m
//  Assignment2
//
//  Created by Anthony DeFrancesco on 3/24/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "Assignment2ViewController.h"

@interface Assignment2ViewController ()

@end

@implementation Assignment2ViewController

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

- (IBAction)convert:(id)sender {
    double metric = [_textConversion.text doubleValue];
    double imperial = metric * .393701;
    
    NSString *resultString = [[NSString alloc] initWithFormat: @"%.2f Inches",imperial];
    _resultLabel.text = resultString;
}
- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)backgroundTouched:(id)sender {
    [_textConversion resignFirstResponder];
}

- (IBAction)buttonTouched:(id)sender {
    [_textConversion resignFirstResponder];
}
@end
