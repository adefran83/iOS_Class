//
//  AssistantViewController.m
//  Assistant
//
//  Created by Anthony DeFrancesco on 3/17/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "AssistantViewController.h"

@interface AssistantViewController ()

@end

@implementation AssistantViewController

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

- (IBAction)buttonTouched {
    _statusLabel.text = @"Hello";
}
@end
