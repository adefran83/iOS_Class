//
//  DatabaseViewController.m
//  Database
//
//  Created by Anthony DeFrancesco on 4/21/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "DatabaseViewController.h"


@interface DatabaseViewController ()

@end

@implementation DatabaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *docsDir;
    NSArray *dirPaths;
    
    //get docs directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docsDir = dirPaths[0];
    
    //build path
    _databasePath = [[NSString alloc] initWithString:[docsDir stringByAppendingPathComponent:@"contacts.db"]];
    
    NSFileManager * filemgr = [NSFileManager defaultManager];
    
    if([filemgr fileExistsAtPath:_databasePath] == NO)
    {
        const char *dbpath = [_databasePath UTF8String];
        
        if (sqlite3_open(dbpath, &_contactDB)== SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS CONTACTS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT, ADDRESS TEXT, PHONE TEXT)";
            
            if(sqlite3_exec(_contactDB, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                _status.text = @"Failed to creat table";
            }
            sqlite3_close(_contactDB);
        } else {
            _status.text = @"Failed to open/create database";
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveData:(id)sender
{
    sqlite3_stmt *statement;
    const char *dbpath = [_databasePath UTF8String];
    
    if(sqlite3_open(dbpath, &_contactDB) == SQLITE_OK)
    {
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO CONTACTS(name, address, phone) VALUES (\"%@\",\"%@\",\"%@\")",self.name.text,self.address.text,self.phone.text];
        
        const char *insert_stmt = [insertSQL UTF8String];
        
        sqlite3_prepare_v2(_contactDB, insert_stmt, -1, &statement, NULL);
        if(sqlite3_step(statement) == SQLITE_DONE)
        {
            self.status.text = @"Contact Added";
            self.name.text = @"";
            self.address.text = @"";
            self.phone.text = @"";
        } else {
            self.status.text = @"Failed to add contact";
        }
        sqlite3_finalize(statement);
        sqlite3_close(_contactDB);
    }
}

- (IBAction)findContact:(id)sender
{
    const char *dbpath = [_databasePath UTF8String];
    sqlite3_stmt *statement;
    
    if(sqlite3_open(dbpath, &_contactDB) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat:@"Select address, phone FROM contacts WHERE name= \"%@\"", _name.text];
        
        const char *query_stmt = [querySQL UTF8String];
        
        if(sqlite3_prepare_v2(_contactDB, query_stmt, -1, &statement, NULL)==SQLITE_OK)
        {
            if(sqlite3_step(statement) == SQLITE_ROW)
            {
                NSString *addressField = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 0)];
                _address.text = addressField;
                
                NSString *phoneField = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 1)];
                _phone.text = phoneField;
                
                _status.text = @"Match Found";
                
            } else {
                _status.text = @"Match not found";
                _address.text = @"";
                _phone.text = @"";
            }
            sqlite3_finalize(statement);
            
        }
        sqlite3_close(_contactDB);
    }
}
@end
