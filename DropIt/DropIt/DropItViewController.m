//
//  DropItViewController.m
//  DropIt
//
//  Created by 梁栋 on 14-6-12.
//  Copyright (c) 2014年 ildsea. All rights reserved.
//

#import "DropItViewController.h"
#import "DropitBehavior.h"

@interface DropItViewController ()
@property (weak, nonatomic) IBOutlet UIView *gameView;
@property (strong,nonatomic) UIDynamicAnimator *animator;
@property (strong,nonatomic) DropitBehavior *dropitBehavior;


@end

@implementation DropItViewController

static const CGSize DROP_SIZE = {40,40};

- (UIDynamicAnimator *)animator
{
    if(!_animator){
        _animator = [[UIDynamicAnimator alloc]initWithReferenceView:self.gameView];
    }
    return _animator;
}

- (DropitBehavior *)dropitBehavior
{
    if (!_dropitBehavior) {
        _dropitBehavior = [[DropitBehavior alloc]init];
        [self.animator addBehavior:_dropitBehavior];
    }
    return _dropitBehavior;
}


- (IBAction)tap:(UITapGestureRecognizer *)sender
{
    [self drop];
}

- (void)drop
{
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size = DROP_SIZE;
    
    int x = (arc4random()%(int)self.gameView.bounds.size.width)/DROP_SIZE.width;
    frame.origin.x = x * DROP_SIZE.width;
    
    UIView *dropView = [[UIView alloc]initWithFrame:frame];
    dropView.backgroundColor = [self randomColor];
    
    [self.gameView addSubview:dropView];
    [self.dropitBehavior addItem:dropView];
}

- (UIColor *)randomColor
{
    switch (arc4random()%5) {
        case 0:
            return [UIColor blueColor];
            break;
        case 1:
            return [UIColor greenColor];
            break;
        case 2:
            return [UIColor yellowColor];
        case 3:
            return [UIColor brownColor];
            break;
        case 4:
            return [UIColor redColor];
            break;
    }
    return [UIColor blackColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end;
