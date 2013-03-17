//
//  UnitConverterViewController.m
//  UnitConverter
//
//  Created by Anthony DeFrancesco on 3/17/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "UnitConverterViewController.h"

@interface UnitConverterViewController ()

@end

@implementation UnitConverterViewController

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

-(void) convertTemp:(id)sender {
    double farenheit = [_tempText.text doubleValue];
    double celsius = (farenheit - 32) / 1.8;
    
    NSString *resultString = [[NSString alloc]initWithFormat:@"Celsius %f",celsius];
    _resultLabel.text = resultString;
}

@end
