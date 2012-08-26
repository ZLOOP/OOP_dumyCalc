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
    if (arg1 == nil) {
        if ([viewLabel.text isEqualToString:@"0"] == YES) {//0の場合上書き
            viewLabel.text = @"1";
        }else{//0でない場合，文字列の右に追加
            viewLabel.text = [viewLabel.text stringByAppendingString:@"1"];
        }
    }else{
        
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
    ope = @"+";
    if (arg1 == nil) {
        arg1 = viewLabel.text;
        NSLog(@"arg1:%@",arg1);
    }else if (arg2 == nil){
        arg2 = viewLabel.text;
        NSLog(@"arg2:%@",arg2);
    }else{
        //計算する
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
}

- (IBAction)ACButton_down:(id)sender {
    viewLabel.text = @"0";
    
    arg1 = nil;
    ope = nil;
    arg2 = nil;
}
@end
