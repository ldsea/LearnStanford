//
//  TextStatsViewController.m
//  Attributor
//
//  Created by 梁栋 on 14-6-5.
//  Copyright (c) 2014年 Stanford University. All rights reserved.
//

#import "TextStatsViewController.h"

@interface TextStatsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorfulCharactersLabel;
@property (weak, nonatomic) IBOutlet UILabel *outlinedCharacterLabel;

@end

@implementation TextStatsViewController



-(void)setTextToAnalyze:(NSAttributedString *)textToAnalyze
{
    _textToAnalyze = textToAnalyze;
    if(self.view.window)    [self updateUI];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self updateUI];
}

- (NSAttributedString *)characterWithAttribute:(NSString *)attributeName
{
    NSMutableAttributedString *characters = [[NSMutableAttributedString alloc]init];
    
    int index = 0;
    
    while (index < [self.textToAnalyze length]) {
        NSRange range;
        id value = [self.textToAnalyze attribute:attributeName atIndex:index effectiveRange:&range];
        if(value){
            [characters appendAttributedString:[self.textToAnalyze attributedSubstringFromRange:range]];
            index = range.location + range.length;
        }else{
            index++;
        }
    }
    
    return characters;
}

-(void)updateUI
{
    self.colorfulCharactersLabel.text = [NSString stringWithFormat:@"%d 个彩色字符",[[self characterWithAttribute:NSForegroundColorAttributeName] length]];
    self.outlinedCharacterLabel.text = [NSString stringWithFormat:@"%d 个彩色字符",[[self characterWithAttribute:NSStrokeWidthAttributeName] length]];
}

@end
