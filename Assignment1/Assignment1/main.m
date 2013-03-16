//
//  main.m
//  Assignment1
//
//  Created by Anthony DeFrancesco on 3/16/13.
//  Copyright (c) 2013 Anthony DeFrancesco. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSArray *position = @[@"P",@"C",@"1B",@"2B",@"SS",@"3B",@"LF",@"CF",@"RF"];
        NSDictionary *players = @{
            @"P" : @"Price",
            @"C" : @"Molina",
            @"1B" : @"Zobrist",
            @"2B" : @"Roberts",
            @"SS" : @"Johnson",
            @"3B" : @"Longoria",
            @"LF" : @"Fulds",
            @"CF" : @"Jennings",
            @"RF" : @"Joyce"
            };
        for (int i = 0; i < position.count;i++) {
            NSLog(@"Playing %@, %@",position[i],players[position[i]]);
        }
    }
    return 0;
}

