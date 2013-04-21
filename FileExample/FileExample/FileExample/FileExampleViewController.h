//
//  FileExampleViewController.h
//  FileExample
//
//  Created by Anthony DeFrancesco on 4/21/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FileExampleViewController : UIViewController
- (IBAction)saveText:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textBox;

@end
