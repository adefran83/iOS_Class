//
//  FileExampleViewController.m
//  FileExample
//
//  Created by Anthony DeFrancesco on 4/21/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "FileExampleViewController.h"

@interface FileExampleViewController ()

@end

@implementation FileExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSFileManager *filemgr;
    NSString *dataFile;
    NSString *docsDir;
    NSArray *dirPaths;
    
    filemgr = [NSFileManager defaultManager];
    
    //id documents directory
    docsDir = dirPaths[0];
    
    //build path to data file
    dataFile = [docsDir stringByAppendingPathComponent:@"datafile.dat"];
    
    //check if file exists
    if([filemgr fileExistsAtPath:dataFile])
    {
        //read contents and display in textbox
        NSData *databuffer;
        databuffer = [filemgr contentsAtPath:dataFile];
        
        NSString *datastring = [[NSString alloc] initWithData:databuffer encoding:NSASCIIStringEncoding];
        
        _textBox.text = datastring;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveText:(id)sender
{
    NSFileManager *filemgr;
    NSData *databuffer;
    NSString *dataFile;
    NSString *docsDir;
    NSArray *dirPaths;
    
    filemgr = [NSFileManager defaultManager];
    
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    
    docsDir = dirPaths[0];
    dataFile=[docsDir stringByAppendingPathComponent:@"datafile.dat"];
    databuffer = [_textBox.text dataUsingEncoding:NSASCIIStringEncoding];
    [filemgr createFileAtPath:dataFile contents:databuffer attributes:nil];
}
@end
