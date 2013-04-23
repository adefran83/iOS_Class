//
//  Assignment6ViewController.m
//  Assignment6
//
//  Created by Anthony DeFrancesco on 4/22/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "Assignment6ViewController.h"

@interface Assignment6ViewController ()

@end

@implementation Assignment6ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *docsDir;
    NSArray *dirPaths;
    
    //get docs directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docsDir = dirPaths[0];
    
    //build path
    _dbPath = [[NSString alloc] initWithString:[docsDir stringByAppendingPathComponent:@"classInfo.db"]];
    
    NSFileManager * filemgr = [NSFileManager defaultManager];
    
    if([filemgr fileExistsAtPath:_dbPath] == NO)
    {
        const char *dbpath = [_dbPath UTF8String];
        
        if (sqlite3_open(dbpath, &_classInfo)== SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS CLASS (ID INTEGER PRIMARY KEY AUTOINCREMENT, COURSECODE TEXT, CREDITHOURS TEXT, GRADE TEXT)";
            
            if(sqlite3_exec(_classInfo, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                _statusText.text = @"Failed to creat table";
            }
            sqlite3_close(_classInfo);
        } else {
            _statusText.text = @"Failed to open/create database";
        }
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)findData:(id)sender {
    const char *dbpath = [_dbPath UTF8String];
    sqlite3_stmt *statement;
    
    if(sqlite3_open(dbpath, &_classInfo) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat:@"Select credithours, grade FROM class WHERE coursecode = \"%@\"", _courseText.text];
        
        const char *query_stmt = [querySQL UTF8String];
        
        if(sqlite3_prepare_v2(_classInfo, query_stmt, -1, &statement, NULL)==SQLITE_OK)
        {
            if(sqlite3_step(statement) == SQLITE_ROW)
            {
                NSString *creditHoursField = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 0)];
                _creditText.text = creditHoursField;
                
                NSString *gradeField = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 1)];
                _gradeText.text = gradeField;
                
                _statusText.text = @"Match Found";
                
            } else {
                _statusText.text = @"Match not found";
                _gradeText.text = @"";
                _creditText.text = @"";
            }
            sqlite3_finalize(statement);
            
        }
        sqlite3_close(_classInfo);
    }

}

- (IBAction)deleteData:(id)sender {
    const char *dbpath = [_dbPath UTF8String];
    sqlite3_stmt *statement;
    
    if(sqlite3_open(dbpath, &_classInfo) == SQLITE_OK)
    {
        NSString *deleteSQL = [NSString stringWithFormat:@"delete from CLASS where coursecode = \"%@\"",self.courseText.text];
        
        const char *delete_stmt = [deleteSQL UTF8String];
        
        if(sqlite3_prepare_v2(_classInfo, delete_stmt, -1, &statement, NULL)==SQLITE_OK)
        {
            if(sqlite3_step(statement) == SQLITE_DONE)
            {
                self.statusText.text = @"Class Removed";
                self.courseText.text = @"";
                self.gradeText.text = @"";
                self.creditText.text = @"";
            } else {
                _statusText.text = @"Class not Removed";
                _courseText.text = @"";
                _gradeText.text = @"";
                _creditText.text = @"";
            }
            sqlite3_finalize(statement);
            
        }
        sqlite3_close(_classInfo);
    }

}

- (IBAction)saveData:(id)sender {
    sqlite3_stmt *statement;
    const char *dbpath = [_dbPath UTF8String];
    
    if(sqlite3_open(dbpath, & _classInfo) == SQLITE_OK)
    {
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO class(coursecode, credithours, grade) VALUES (\"%@\",\"%@\",\"%@\")",self.courseText.text,self.creditText.text,self.gradeText.text];
        
        const char *insert_stmt = [insertSQL UTF8String];
        
        sqlite3_prepare_v2(_classInfo, insert_stmt, -1, &statement, NULL);
        if(sqlite3_step(statement) == SQLITE_DONE)
        {
            self.statusText.text = @"Class Added";
            self.courseText.text = @"";
            self.gradeText.text = @"";
            self.creditText.text = @"";
        } else {
            self.statusText.text = @"Failed to add class";
        }
        sqlite3_finalize(statement);
        sqlite3_close(_classInfo);
    }
}
@end
