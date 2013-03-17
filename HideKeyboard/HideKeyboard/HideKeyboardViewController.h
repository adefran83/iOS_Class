//
//  HideKeyboardViewController.h
//  HideKeyboard
//
//  Created by Anthony DeFrancesco on 3/17/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HideKeyboardViewController : UIViewController
@property (strong,nonatomic) IBOutlet UITextField *textField;
-(IBAction)textFieldReturn:(id)sender;
-(IBAction)backgroundTouched:(id)sender;
@end
