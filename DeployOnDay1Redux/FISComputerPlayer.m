//
//  FISComputerPlayer.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISComputerPlayer.h"


@implementation FISComputerPlayer

+(BOOL)isEnabled
{
    return YES;
}

-(FISTicTacToePosition)nextPlay
{
    NSUInteger column;
    NSUInteger row;
    
    do {
        
        column = arc4random_uniform(3);
        row = arc4random_uniform(3);
        
    } while (![self.game canPlayAtColumn:column row:row]);
    
    return FISTicTacToePositionMake(column, row);
    
    /*   for (NSUInteger c = 0; c < [self.game.board count]; c++) {
     for (NSUInteger r = 0; r < [self.game.board count]; r++) {
     
     if ([self.game canPlayAtColumn:c row:r]) {
     
     
     
     return FISTicTacToePositionMake(c, r);
     
     }
     
     }
     
     }
     */
    
    //Going to
}

@end
