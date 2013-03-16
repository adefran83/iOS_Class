//
//  BankAccount.m
//  Banking
//
//  Created by Anthony DeFrancesco on 3/16/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import "BankAccount.h"

@implementation BankAccount
-(void) setAccount: (long) y andBalance: (double) x
{
    accountBalance = x;
    accountNumber = y;
}

-(void) setAccountBalance: (double) x
{
    accountBalance = x;
}

-(double) getAccountBalance
{
    return accountBalance;
}

-(void) setAccountNumber: (long) y
{
    accountNumber = y;
}

-(long) getAccountNumber
{
    return accountNumber;
}

-(void) displayAccountInfo
{
    NSLog(@"Account Number %li has a balance of %f",accountNumber,accountBalance);
}
@end
