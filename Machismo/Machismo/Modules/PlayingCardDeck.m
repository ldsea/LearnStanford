//
//  PlayingCardDeck.m
//  Machismo
//
//  Created by 梁栋 on 14-5-24.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init
{
    /*
     Return type: "instancetype".
     It basically tells the compiler that this method returns an object which will be the same type as the object that this
     ￼￼￼￼￼message was sent to.
     We will pretty much only use it for init methods. Don’t worry about it too much for now.
     But always use this return type for your init methods.
     */
    
    self = [super init];
    if (self)
    {
        for (NSString *suit in [PlayingCard validSuits])
        {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++)
            {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
        return self;
    }
    
    return self;
}

@end
