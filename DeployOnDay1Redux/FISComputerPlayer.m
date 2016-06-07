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
   
    if ([self.game canPlayAtColumn:0 row:0]) {
        
        return FISTicTacToePositionMake(0, 0);
        
    } else if ([self.game canPlayAtColumn:0 row:1]) {
        
        return FISTicTacToePositionMake(0, 1);
    
    } else if ([self.game canPlayAtColumn:0 row:2]) {
        
        return FISTicTacToePositionMake(0, 2);
        
    } else if ([self.game canPlayAtColumn:1 row:0]) {
        
        return FISTicTacToePositionMake(1, 0);
        
    } else if ([self.game canPlayAtColumn:1 row:1]) {
        
        return FISTicTacToePositionMake(1, 1);
        
    } else if ([self.game canPlayAtColumn:1 row:2]) {
        
        return FISTicTacToePositionMake(1, 2);
        
    } else if ([self.game canPlayAtColumn:2 row:0]) {
        
        return FISTicTacToePositionMake(2, 0);
        
    } else if ([self.game canPlayAtColumn:2 row:1]) {
        
        return FISTicTacToePositionMake(2, 1);
        
    } else if ([self.game canPlayAtColumn:2 row:2]) {
        
        return FISTicTacToePositionMake(2, 2);
        
    }

   
}

@end
