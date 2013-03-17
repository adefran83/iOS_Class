//
//  HideKeyboardViewController.m
//  HideKeyboard
//
//  Created by Anthony DeFrancesco on 3/17/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "HideKeyboardViewController.h"

@interface HideKeyboardViewController ()

@end

@implementation HideKeyboardViewController

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

-(IBAction)backgroundTouched:(id)sender
{
    [_textField resignFirstResponder];
}

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


@end
