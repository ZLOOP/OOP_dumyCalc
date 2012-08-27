//
//  ViewController.m
//  OOP_damyCalc
//
//  Created by 中野 麻美 on 12/08/26.
//  Copyright (c) 2012年 中野 麻美. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //初期化
    viewLabel.text = @"0";
    arg1 = nil;
    ope = nil;
    arg2 = nil;
    arg2Flag = NO;
}

- (void)viewDidUnload
{
    viewLabel = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)num0Button_down:(id)sender {
    if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合何もしない
    }else{//0でない場合，文字列の右に追加
        viewLabel.text = [viewLabel.text stringByAppendingString:@"0"];
    }
}

- (IBAction)num1Button_down:(id)sender {
    if (arg1 == nil) {//arg1用
        if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合上書き
            viewLabel.text = @"1";
        }else{//0でない場合，文字列の右に追加
            viewLabel.text = [viewLabel.text stringByAppendingString:@"1"];
        }
    }else{//arg2用
        if (arg2Flag == NO) {//初めての入力の場合上書き
            viewLabel.text = @"1";
            arg2Flag = YES;
        }else{//文字列の右に追加
            viewLabel.text = [viewLabel.text stringByAppendingString:@"1"];
        }
    }
}

- (IBAction)num2Button_down:(id)sender {
    if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合上書き
        viewLabel.text = @"2";
    }else{//0でない場合，文字列の右に追加
        viewLabel.text = [viewLabel.text stringByAppendingString:@"2"];
    }
}

- (IBAction)num3Button_down:(id)sender {
    if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合上書き
        viewLabel.text = @"3";
    }else{//0でない場合，文字列の右に追加
        viewLabel.text = [viewLabel.text stringByAppendingString:@"3"];
    }
}

- (IBAction)num4Button_down:(id)sender {
    if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合上書き
        viewLabel.text = @"4";
    }else{//0でない場合，文字列の右に追加
        viewLabel.text = [viewLabel.text stringByAppendingString:@"4"];
    }
}

- (IBAction)num5Button_down:(id)sender {
    if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合上書き
        viewLabel.text = @"5";
    }else{//0でない場合，文字列の右に追加
        viewLabel.text = [viewLabel.text stringByAppendingString:@"5"];
    }
}

- (IBAction)num6Button_down:(id)sender {
    if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合上書き
        viewLabel.text = @"6";
    }else{//0でない場合，文字列の右に追加
        viewLabel.text = [viewLabel.text stringByAppendingString:@"6"];
    }
}

- (IBAction)num7Button_down:(id)sender {
    if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合上書き
        viewLabel.text = @"7";
    }else{//0でない場合，文字列の右に追加
        viewLabel.text = [viewLabel.text stringByAppendingString:@"7"];
    }
}

- (IBAction)num8Button_down:(id)sender {
    if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合上書き
        viewLabel.text = @"8";
    }else{//0でない場合，文字列の右に追加
        viewLabel.text = [viewLabel.text stringByAppendingString:@"8"];
    }
}

- (IBAction)num9Button_down:(id)sender {
    if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合上書き
        viewLabel.text = @"9";
    }else{//0でない場合，文字列の右に追加
        viewLabel.text = [viewLabel.text stringByAppendingString:@"9"];
    }
}

- (IBAction)addButton_down:(id)sender {
    if (arg2Flag == NO) {
        arg1 = viewLabel.text;
        ope = @"+";
    }else{
        arg2 = viewLabel.text;
        double ans;
        //計算する
        if ([ope isEqualToString:@"+"] == YES) ans = [arg1 doubleValue] + [arg2 doubleValue];
        if ([ope isEqualToString:@"-"] == YES) ans = [arg1 doubleValue] - [arg2 doubleValue];
        if ([ope isEqualToString:@"*"] == YES) ans = [arg1 doubleValue] * [arg2 doubleValue];
        if ([ope isEqualToString:@"/"] == YES) ans = [arg1 doubleValue] / [arg2 doubleValue];
        
        arg1 = [NSString stringWithFormat:@"%f",ans];
        viewLabel.text = arg1;
        arg2 = nil;
        ope = @"+";
        arg2Flag = NO;
        
    }
}

- (IBAction)subButton_down:(id)sender {
}

- (IBAction)divButton_down:(id)sender {
}

- (IBAction)signButton_down:(id)sender {
}

- (IBAction)periodButton_down:(id)sender {
}

- (IBAction)mulButton_down:(id)sender {
}

- (IBAction)equalButton_down:(id)sender {
    if (arg2Flag == YES) {
        //計算
        arg2 = viewLabel.text;
        double ans;
        if ([ope isEqualToString:@"+"] == YES) ans = [arg1 doubleValue] + [arg2 doubleValue];
        if ([ope isEqualToString:@"-"] == YES) ans = [arg1 doubleValue] - [arg2 doubleValue];
        if ([ope isEqualToString:@"*"] == YES) ans = [arg1 doubleValue] * [arg2 doubleValue];
        if ([ope isEqualToString:@"/"] == YES) ans = [arg1 doubleValue] / [arg2 doubleValue];
        
        arg1 = [NSString stringWithFormat:@"%f",ans];
        viewLabel.text = arg1;
        arg2 = nil;
        ope = nil;
        arg2Flag = NO;
    }
}

- (IBAction)ACButton_down:(id)sender {
    viewLabel.text = @"0";
    
    arg1 = nil;
    ope = nil;
    arg2 = nil;
    arg2Flag = NO;
}
@end
