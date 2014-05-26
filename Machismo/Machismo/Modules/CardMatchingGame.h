//
//  CardMatchingGame.h
//  Machismo
//
//  Created by 梁栋 on 14-5-26.
//  Copyright (c) 2014年 ildsea. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"


@interface CardMatchingGame : NSObject

- (instancetype)initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic,readonly)NSInteger score;

@end
