//
//  UnitConverterViewController.h
//  UnitConverter
//
//  Created by Anthony DeFrancesco on 3/17/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UnitConverterViewController : UIViewController
@property (strong,nonatomic) IBOutlet UILabel *resultLabel;
@property (strong,nonatomic) IBOutlet UITextField *tempText;
-(IBAction)convertTemp:(id)sender;
@end
