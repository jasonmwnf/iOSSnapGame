//
//  ViewController.m
//  SnapGame
//
//  Created by Jason Williams on 2016-01-26.
//  Copyright © 2016 Screaming Goat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    scoreInt = 0;
    timerInt = 20;
    
    self.snapOutlet.enabled = NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startGame:(id)sender {
    
    if (scoreInt == 0) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(TimerUpdate) userInfo:nil repeats:YES];
        self.snapOutlet.enabled = YES;
        self.startOutlet.enabled = NO;
    }
    
    if (timerInt == 0) {
        timerInt = 20;
        scoreInt = 0;
        
        self.timerLabel.text = [NSString stringWithFormat:@"%i", timerInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
        
        [self.startOutlet setTitle:@"Start Game" forState:UIControlStateNormal];

    }
}

-(void)TimerUpdate {
    
    timerInt -= 1;
    
    self.timerLabel.text = [NSString stringWithFormat:@"%i", timerInt];
    
    int randomOne = arc4random() % 6;
    switch (randomOne) {
        case 0:
            self.imageView1.image = [UIImage imageNamed:@"Car1.jpg"];
            break;
        case 1:
            self.imageView1.image = [UIImage imageNamed:@"Car2.jpg"];
            break;
        case 2:
            self.imageView1.image = [UIImage imageNamed:@"Car3.jpg"];
            break;
        case 3:
            self.imageView1.image = [UIImage imageNamed:@"Car4.jpg"];
            break;
        case 4:
            self.imageView1.image = [UIImage imageNamed:@"Car5.jpg"];
            break;
        case 5:
            self.imageView1.image = [UIImage imageNamed:@"Car6.jpg"];
            break;
            
        default:
            break;
    }
    
    int randomTwo = arc4random() % 6;
    switch (randomTwo) {
        case 0:
            self.imageView2.image = [UIImage imageNamed:@"Car1.jpg"];
            break;
        case 1:
            self.imageView2.image = [UIImage imageNamed:@"Car2.jpg"];
            break;
        case 2:
            self.imageView2.image = [UIImage imageNamed:@"Car3.jpg"];
            break;
        case 3:
            self.imageView2.image = [UIImage imageNamed:@"Car4.jpg"];
            break;
        case 4:
            self.imageView2.image = [UIImage imageNamed:@"Car5.jpg"];
            break;
        case 5:
            self.imageView2.image = [UIImage imageNamed:@"Car6.jpg"];
            break;
            
        default:
            break;
    }

    
    if (timerInt == 0) {
        [timer invalidate];
        
        self.snapOutlet.enabled = NO;
        self.startOutlet.enabled = YES;
        
        [self.startOutlet setTitle:@"Restart Game" forState:UIControlStateNormal];
    }
}

- (IBAction)snap:(id)sender {
    
    if ([self.imageView1.image isEqual:self.imageView2.image]) {
        scoreInt += 1;
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
    } else {
        scoreInt -= 1;
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
    }
    
}
@end
