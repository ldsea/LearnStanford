//
//  DropItViewController.m
//  DropIt
//
//  Created by 梁栋 on 14-6-12.
//  Copyright (c) 2014年 ildsea. All rights reserved.
//

#import "DropItViewController.h"

@interface DropItViewController ()
@property (weak, nonatomic) IBOutlet UIView *gameView;
@property (strong,nonatomic) UIDynamicAnimator *animator;
@property (strong,nonatomic) UIGravityBehavior *gravity;
@property (strong,nonatomic) UICollisionBehavior *collision;

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

- (UIGravityBehavior *)gravity
{
    if(!_gravity){
        _gravity = [[UIGravityBehavior alloc]init];
        _gravity.magnitude = 0.9;
        [self.animator addBehavior:_gravity];
    }
    
    return _gravity;
}

- (UICollisionBehavior *)collision
{
    if(!_collision){
        _collision = [[UICollisionBehavior alloc]init];
        _collision.translatesReferenceBoundsIntoBoundary = YES;
        [self.animator addBehavior:_collision];
    }
    return _collision;
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
    
    [self.gravity addItem:dropView];
    
    [self.collision addItem:dropView];
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
