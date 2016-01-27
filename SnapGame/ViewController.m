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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startGame:(id)sender {
    
    if (scoreInt == 0) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(TimerUpdate) userInfo:nil repeats:YES];
    }
}

-(void)TimerUpdate {
    
    timerInt -= 1;
    
    self.timerLabel.text = [NSString stringWithFormat:@"%i", timerInt];
    
    if (timerInt == 0) {
        [timer invalidate];
    }
}

- (IBAction)snap:(id)sender {
}
@end
