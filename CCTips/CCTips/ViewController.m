//
//  ViewController.m
//  CCTips
//
//  Created by dengyouhua on 2018/12/18.
//  Copyright © 2018 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "ViewController.h"
#import <CCTips.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)logHandle:(UIButton *)button {
    CCTipsForNSLog(button.titleLabel.text);
}

- (IBAction)viewHandle:(UIButton *)button {
    CCTipsForView(button.titleLabel.text);
}

- (IBAction)windowHandle:(UIButton *)button {
    CCTipsForKeyWindow(button.titleLabel.text);
}




@end
