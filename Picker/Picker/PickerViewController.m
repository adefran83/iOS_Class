//
//  PickerViewController.m
//  Picker
//
//  Created by Anthony DeFrancesco on 4/14/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _countryName = @[@"Australia (AUD)", @"China (CNY)",@"France (EUR)", @"Great Britain (GBP)",@"Japan (JPY)"];
    _exchangeRates = @[@0.9922f,@6.5938f,@0.7270f,@0.6206f,@81.57f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

#pragma mark - 
#pragma mark PickerView DataSource

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _countryName.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _countryName[row];
}

#pragma mark
#pragma mark DataPicker Delegate
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    float rate = [_exchangeRates[row] floatValue];
    float dollars = [_dollarText.text floatValue];
    float result = dollars * rate;
    
    NSString *resultString = [[NSString alloc] initWithFormat:@"%.2f USD = %.2f %@", dollars, result, _countryName[row]];
    _resultLabel.text = resultString;
    
}

@end
