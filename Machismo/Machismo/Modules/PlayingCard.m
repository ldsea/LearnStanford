//
//  PlayingCard.m
//  Machismo
//
//  Created by 梁栋 on 14-5-24.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

+ (NSArray *)validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}


- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    if([otherCards count]==1){
        PlayingCard *otherCard = [otherCards firstObject];
        
        if(self.rank  == otherCard.rank){
            score = 4;
        }
        else if([otherCard.suit isEqualToString:self.suit]){
            score = 1;
        }
    }
    
    return score;
    
}


-(NSString *)contents
{
    NSArray *rankString = [PlayingCard rankStrings];
    //    return [NSString stringWithFormat:@"%@%d", self.suit, self.rank];
    return [self.suit stringByAppendingString:rankString[self.rank]];
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit])
    {
        _suit = suit;
    }
    
}

-(NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count]-1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank])
    {
        _rank = rank;
    }
}

@end
