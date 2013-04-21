//
//  Assignment5ViewController.h
//  Assigment5
//
//  Created by Anthony DeFrancesco on 4/14/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Assignment5ViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
@property (strong,nonatomic) NSArray *geeks;
@property (strong,nonatomic) NSArray *geekImages;
@property (strong,nonatomic) NSArray *geekText;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UIImageView *geekImage;
@property (strong, nonatomic) IBOutlet UILabel *geekLabel;


@end
