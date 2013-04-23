//
//  Assignment6ViewController.h
//  Assignment6
//
//  Created by Anthony DeFrancesco on 4/22/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sqlite3.h"

@interface Assignment6ViewController : UIViewController
@property (nonatomic) sqlite3 *classInfo;
@property (strong,nonatomic) NSString *dbPath;
@property (strong, nonatomic) IBOutlet UITextField *courseText;
@property (strong, nonatomic) IBOutlet UITextField *gradeText;
@property (strong, nonatomic) IBOutlet UITextField *creditText;
- (IBAction)findData:(id)sender;
- (IBAction)deleteData:(id)sender;
- (IBAction)saveData:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *statusText;



@end
