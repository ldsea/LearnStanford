//
//  PlayingCard.h
//  Machismo
//
//  Created by 梁栋 on 14-5-24.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic) NSString *suit;

@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;

+ (NSUInteger)maxRank;

@end
