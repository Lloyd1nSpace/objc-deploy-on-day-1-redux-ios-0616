//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()

@property (nonatomic, strong) NSMutableArray *board;

@end


@implementation FISTicTacToeGame

-(instancetype)init {

    self = [super init];
    if(self) {
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)
        
        [self resetBoard];
        
    }

    return self;
    
}

-(void)resetBoard {

    // Draw out board. Nest 3 arrays to create 3 x 3 board
    
    NSArray *ticTacRow1 = @[@"", @"", @""];
    NSArray *ticTacRow2 = @[@"", @"", @""];
    NSArray *ticTacRow3 = @[@"", @"", @""];
    
    self.board = [@[[ticTacRow1 mutableCopy],
                   [ticTacRow2 mutableCopy],
                   [ticTacRow3 mutableCopy]]mutableCopy];
    
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row {
    
  //  NSLog(@"\n\n\n\n\n%lu\n\n\n\n %lu\n\n\n\n\n", column, row);
    
    return _board[column][row];
    
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row {
    
    if ([_board[column][row] isEqualToString:@""]) {
        
        return YES;
        
    } else {
        
        return NO;
        
    }

}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row {

    BOOL canPlay = [self canPlayAtColumn:column row:row];
    
 //   NSUInteger location = [_board[column][row] unsignedIntegerValue];
    
    if (canPlay == YES) {

        _board[column][row] = @"X";
        
    }
    
}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row {

    BOOL canPlay = [self canPlayAtColumn:column row:row];
    
    if (canPlay == YES) {
        
        _board[column][row] = @"O";
        
    }
    
}

-(NSString *)winningPlayer {
    
    // Horizontal Wins
    if ([_board[0][0] isEqualToString:_board[0][1]] && [_board[0][0] isEqualToString:_board[0][2]]  ) {
        
        return _board[0][0];
        
    } else if ([_board[1][0] isEqualToString:_board[1][1]] && [_board[1][0] isEqualToString:_board[1][2]] ) {
        
        return _board[1][0];
        
    } else if ([_board[2][0] isEqualToString:_board[2][1]] && [_board[2][0] isEqualToString:_board[2][2]]) {
        
        return _board[2][0];
        
    
    } //Vertical Wins
    else if ([_board[0][0] isEqualToString:_board[1][0]] && [_board[0][0] isEqualToString:_board[2][0]]) {
        
        return _board[0][0];
        
    } else if ([_board[0][1] isEqualToString:_board[1][1]] && [_board[0][1] isEqualToString:_board[2][1]]) {
        
        return _board[0][1];
        
    } else if ([_board[0][2] isEqualToString:_board[1][2]] && [_board[0][2] isEqualToString:_board[2][2]]) {
        
        return _board[0][2];
        
    } // Diagonal wins
    else if ([_board[0][0] isEqualToString:_board[1][1]] && [_board[0][0] isEqualToString:_board[2][2]]) {
        
        return _board[0][0];
        
    } else if ([_board[2][0] isEqualToString:_board[1][1]] && [_board[2][0] isEqualToString:_board[0][2]]) {
        
        return _board[2][0];
        
    } else {
    
    return @"";
        
    }

}

-(BOOL)isADraw {

    for (NSUInteger c = 0; c < [_board count]; c++) {
        for (NSUInteger r = 0; r < [_board count]; r++) {
            
            if ([_board[c][r] isEqualToString:@""]) {
                
                return NO;
            }
            
        }
    
    }
    
    return YES;
    
}

@end
