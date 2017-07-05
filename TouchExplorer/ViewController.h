//
//  ViewController.h
//  TouchExplorer
//
//  Created by Vasilii on 05.07.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapsLabel;
@property (weak, nonatomic) IBOutlet UILabel *touchesLabel;


- (void)updateLabelsFromTouches:(NSSet*) touches;


@end

