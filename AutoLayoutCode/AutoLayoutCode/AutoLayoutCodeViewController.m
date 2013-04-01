//
//  AutoLayoutCodeViewController.m
//  AutoLayoutCode
//
//  Created by Anthony DeFrancesco on 3/31/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "AutoLayoutCodeViewController.h"

@interface AutoLayoutCodeViewController ()

@end

@implementation AutoLayoutCodeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIView *superview = self.view;
    
    UILabel *mylabel = [[UILabel alloc] init];
    [mylabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    mylabel.text= @"Hello";
    
    UIButton *mybutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [mybutton setTitle: @"My Button" forState:UIControlStateNormal];
    [mybutton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [superview addSubview:mylabel];
    [superview addSubview:mybutton];
    
    NSLayoutConstraint *myconstraint = [NSLayoutConstraint constraintWithItem:mylabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
    [superview addConstraint:myconstraint];
    myconstraint = [NSLayoutConstraint constraintWithItem:mylabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
    [superview addConstraint:myconstraint];
    myconstraint = [NSLayoutConstraint constraintWithItem:mybutton attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:mylabel attribute:NSLayoutAttributeLeading multiplier:1 constant:-10];
    [superview addConstraint:myconstraint];
    myconstraint = [NSLayoutConstraint constraintWithItem:mybutton attribute:NSLayoutAttributeBaseline relatedBy:NSLayoutRelationEqual toItem:mylabel attribute:NSLayoutAttributeBaseline multiplier:1 constant:0];
    [superview addConstraint:myconstraint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
