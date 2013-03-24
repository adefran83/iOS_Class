//
//  Assignment2ViewController.h
//  Assignment2
//
//  Created by Anthony DeFrancesco on 3/24/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Assignment2ViewController : UIViewController
- (IBAction)convert:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textConversion;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)textFieldReturn:(id)sender;
- (IBAction)backgroundTouched:(id)sender;
- (IBAction)buttonTouched:(id)sender;

@end
