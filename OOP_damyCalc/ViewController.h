//
//  ViewController.h
//  OOP_damyCalc
//
//  Created by 中野 麻美 on 12/08/26.
//  Copyright (c) 2012年 中野 麻美. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    __weak IBOutlet UILabel *viewLabel;
}

- (IBAction)num0Button_down:(id)sender;
- (IBAction)num1Button_down:(id)sender;
- (IBAction)num2Button_down:(id)sender;
- (IBAction)num3Button_down:(id)sender;
- (IBAction)num4Button_down:(id)sender;
- (IBAction)num5Button_down:(id)sender;
- (IBAction)num6Button_down:(id)sender;
- (IBAction)num7Button_down:(id)sender;
- (IBAction)num8Button_down:(id)sender;
- (IBAction)num9Button_down:(id)sender;

- (IBAction)addButton_down:(id)sender;
- (IBAction)subButton_down:(id)sender;
- (IBAction)mulButton_down:(id)sender;
- (IBAction)divButton_down:(id)sender;

- (IBAction)signButton_down:(id)sender;
- (IBAction)periodButton_down:(id)sender;
- (IBAction)equalButton_down:(id)sender;
- (IBAction)ACButton_down:(id)sender;

@end
