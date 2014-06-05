//
//  CardGameViewController.h
//  Machismo
//
//  Created by 梁栋 on 14-5-24.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface CardGameViewController : UIViewController

-(Deck *)createDeck; //abstract

@end
