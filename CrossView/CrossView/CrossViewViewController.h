//
//  CrossViewViewController.h
//  CrossView
//
//  Created by Anthony DeFrancesco on 3/31/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CrossViewViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *ViewB;
@property (strong, nonatomic) IBOutlet UITextField *myTextView;
@property (strong, nonatomic) IBOutlet UIButton *myButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *centerConstraint;

@end
