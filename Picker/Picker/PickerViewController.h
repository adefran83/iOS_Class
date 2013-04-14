//
//  PickerViewController.h
//  Picker
//
//  Created by Anthony DeFrancesco on 4/14/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong,nonatomic) NSArray *countryName;
@property (strong,nonatomic) NSArray *exchangeRates;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UITextField *dollarText;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)textFieldReturn:(id)sender;

@end
