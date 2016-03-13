//
//  ScrollViewAutoLayoutViewController.m
//  TestScrollViewAutoLayout
//
//  Created by Han Chen on 2016/3/9.
//  Copyright © 2016年 Han Chen. All rights reserved.
//

#import "ScrollViewAutoLayoutViewController.h"

@interface ScrollViewAutoLayoutViewController ()

@end

@implementation ScrollViewAutoLayoutViewController

/*
 Constraint設定：
 1. ScrollView Anchor四邊
 2. ContentView Anchor四邊
 3. ContentView 寬高同ScrollView的parentView長寬
 4. ContentView 高的Priority為Low
 5. ContentView的subView Anchor四邊
 6. ContentView的subView 高度 Grater Than or Equal 固定值
 7. ContentView的subView的左label Anchor左上
 8. ContentView的subView的左label 固定寬高
 9. ContentView的subView的右label/textView Anchor四邊
10. ContentView的subView的右label/textView 高度 Grater Than or Equal 固定值
11. ContentView的最後一個subView Bottom的constant為0
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupText];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) setupText {
    NSString *str = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz0987654321";
    [self.labelValue1 setText: str];
    str = [str stringByAppendingFormat: @"\n%@", str];
    [self.labelValue3 setText: str];
    str = [str stringByAppendingFormat: @"\n%@", str];
    [self.labelValue5 setText: str];
    str = [str stringByAppendingFormat: @"\n%@", str];
    [self.labelValue7 setText: str];
    str = [str stringByAppendingFormat: @"\n%@", str];
    [self.labelValue9 setText: str];
    str = [str stringByAppendingFormat: @"\n%@", str];
    [self.labelValue11 setText: str];
    
    [self.textViewValue2 setText: self.labelValue1.text];
    [self.textViewValue4 setText: self.labelValue3.text];
    [self.textViewValue6 setText: self.labelValue5.text];
    [self.textViewValue8 setText: self.labelValue7.text];
    [self.textViewValue10 setText: self.labelValue9.text];
    [self.textViewValue12 setText: self.labelValue11.text];
}

@end
