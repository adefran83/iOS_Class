//
//  DatabaseViewController.h
//  Database
//
//  Created by Anthony DeFrancesco on 4/21/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sqlite3.h"

@interface DatabaseViewController : UIViewController
@property (strong, nonatomic) NSString *databasePath;
@property (nonatomic) sqlite3 *contactDB;
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *address;
@property (strong, nonatomic) IBOutlet UITextField *phone;
@property (strong, nonatomic) IBOutlet UILabel *status;
- (IBAction)saveData:(id)sender;
- (IBAction)findContact:(id)sender;

@end
