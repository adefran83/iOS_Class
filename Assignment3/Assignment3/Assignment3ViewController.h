//
//  Assignment3ViewController.h
//  Assignment3
//
//  Created by Anthony DeFrancesco on 3/31/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Assignment3ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *numberOne;
@property (strong, nonatomic) IBOutlet UITextField *numberTwo;
- (IBAction)sumNumbers:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)textFieldReturn:(id)sender;

@end
