//
//  PlayingCardGameViewController.m
//  Machismo
//
//  Created by 梁栋 on 14-6-5.
//  Copyright (c) 2014年 ildsea. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc]init];
}

@end
