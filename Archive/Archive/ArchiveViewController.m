//
//  ArchiveViewController.m
//  Archive
//
//  Created by Anthony DeFrancesco on 4/21/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "ArchiveViewController.h"

@interface ArchiveViewController ()

@end

@implementation ArchiveViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSFileManager *filemgr;
    NSString *docsDir;
    NSArray *dirPaths;
    
    filemgr = [NSFileManager defaultManager];
    
    //get docs directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    
    docsDir = dirPaths[0];
    
    //build path of data file
    _dataFilePath = [[NSString alloc] initWithString:[docsDir stringByAppendingPathComponent:@"data.archive"]];
    
    //check if file exists
    if ([filemgr fileExistsAtPath:_dataFilePath])
    {
        NSMutableArray *dataArray;
        
        dataArray = [NSKeyedUnarchiver unarchiveObjectWithFile:_dataFilePath];
        
        _name.text = dataArray[0];
        _address.text = dataArray[1];
        _phone.text = dataArray[2];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveData:(id)sender
{
    NSMutableArray *contactArray;
    
    contactArray = [[NSMutableArray alloc] init];
    [contactArray addObject:self.name.text];
    [contactArray addObject:self.address.text];
    [contactArray addObject:self.phone.text];
    [NSKeyedArchiver archiveRootObject:contactArray toFile:_dataFilePath];
}
@end
