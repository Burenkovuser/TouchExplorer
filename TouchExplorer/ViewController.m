//
//  ViewController.m
//  TouchExplorer
//
//  Created by Vasilii on 05.07.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateLabelsFromTouches:(NSSet *)touches
{
    NSUInteger numTaps = [[touches anyObject] tapCount];
    NSString *tapsMessage = [[NSString alloc] initWithFormat:@"%lu taps detected", (unsigned long)numTaps];
    self.tapsLabel.text = tapsMessage;
    
    NSUInteger numTouches = [touches count];
    NSString *touchMsg = [[NSString alloc] initWithFormat: @"%lu touches detected", (unsigned long)numTouches];
    self.touchesLabel.text = touchMsg;
}

#pragma mark - Touch Event Methods

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.messageLabel.text = @"Touches Began";
    [self updateLabelsFromTouches:touches];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.messageLabel.text = @"Touches Cancelled";
    [self updateLabelsFromTouches:touches];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.messageLabel.text = @"Touches Ended.";
    [self updateLabelsFromTouches:touches];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.messageLabel.text = @"Drag Detected";
    [self updateLabelsFromTouches:touches];
}

@end
