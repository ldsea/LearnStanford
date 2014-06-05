//
//  CardMatchingGame.m
//  Machismo
//
//  Created by 梁栋 on 14-5-26.
//  Copyright (c) 2014年 ildsea. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()

@property (nonatomic,readwrite)NSInteger score;
@property (nonatomic,strong)NSMutableArray *cards;

@end

@implementation CardMatchingGame

- (NSMutableArray *)cards
{
    if(!_cards) _cards = [[NSMutableArray alloc]init];
    
    return _cards;
}

- (instancetype)initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck
{
    self = [super init];
    
    if (self) {
        for (int i=0; i<count; i++) {
            Card *card = [deck drawRandomCard];
            if(card){
                [self.cards addObject:card];
            }else{
                self = nil;
                break;
            }
        }
    }
    
    return self;
}

static const int MISMATCH_PENLTY = 2;

static const int MACTH_BONUS = 4;

static const int COST_TO_CHOOSE = 1;

- (void)chooseCardAtIndex:(NSUInteger)index
{
    Card *card = [self cardAtIndex:index];
    
    
    if(!card.matched)
    {
        if (card.isChosen) {
            card.chosen = NO;
        }
        else{
            for (Card *otherCard in self.cards) {
                if (otherCard.isChosen && !otherCard.isMatched) {
                    int matchScore = [card match:@[otherCard]];
                    if (matchScore) {
                        self.score += matchScore * MACTH_BONUS;
                        card.matched = YES;
                        otherCard.matched = YES;
                    }
                    else{
                        self.score -= MISMATCH_PENLTY;
                        otherCard.chosen = NO;
                    }
                    break;
                }
            }
        }
        self.score -= COST_TO_CHOOSE;
        card.chosen = YES;
    }
    
    
    
    
    
    
    
    
    
    
    
}

- (Card *)cardAtIndex:(NSUInteger)index
{
    return (index<[self.cards count])?self.cards[index]:nil;
}

- (instancetype)init
{
    return nil;
}


@end
