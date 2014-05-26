//
//  CardGameViewController.m
//  Machismo
//
//  Created by 梁栋 on 14-5-24.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;

@property (nonatomic) int flipsCount;

@property (nonatomic,strong) Deck *deck;

@end

@implementation CardGameViewController

- (Deck *)deck
{
    if(!_deck) _deck = [self createDeck];
    return _deck;
}

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc]init];
}

- (void)setFlipsCount:(int)flipsCount
{
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips:%d",self.flipsCount];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipsCount++;
    }
    else{
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:[card contents] forState:UIControlStateNormal];
            self.flipsCount++;
        }

    }
    
    


}

@end
