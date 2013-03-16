//
//  main.m
//  Banking
//
//  Created by Anthony DeFrancesco on 3/16/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BankAccount.h"

int main(int argc, const char * argv[])
{
    //creation of variable
    BankAccount *account1;
    //memory allocation
    account1 = [BankAccount alloc];
    //initial interface
    account1 = [account1 init];
    //set account balance
    [account1 setAccountBalance: 1500.54];
    //set account number
    [account1 setAccountNumber: 3454321];
    //call method to display the values
    [account1 displayAccountInfo];
    //set both account # and balance
    [account1 setAccount: 4543455 andBalance: 3010.10];
    //output values using getter methods
    NSLog(@"Number = %li, Balance = %f",
          [account1 getAccountNumber],
          [account1 getAccountBalance]);
    return 0;
}

