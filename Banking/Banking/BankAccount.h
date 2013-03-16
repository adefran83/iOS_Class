//
//  BankAccount.h
//  Banking
//
//  Created by Anthony DeFrancesco on 3/16/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccount : NSObject
{
    double accountBalance;
    long accountNumber;
}
-(void) setAccount: (long) y andBalance: (double) x;
-(void) setAccountBalance: (double) x;
-(double) getAccountBalance;
-(void) setAccountNumber: (long) y;
-(long) getAccountNumber;
-(void) displayAccountInfo;


@end
