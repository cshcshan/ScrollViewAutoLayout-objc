//
//  ViewController.m
//  TestScrollViewAutoLayout
//
//  Created by Han Chen on 2016/3/9.
//  Copyright © 2016年 Han Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupLabelValue];
    [self setupTextViewValue];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setupLabelValue {
    [self.labelValue setText:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz0987654321"];
}
- (void) setupTextViewValue {
    [self.textViewValue setText:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz0987654321"];
}

@end
