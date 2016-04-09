//
//  CHResetPsdStep2Controller.m
//  CHCloudHealth
//
//  Created by __无邪_ on 16/4/4.
//  Copyright © 2016年 fqah. All rights reserved.
//

#import "CHResetPsdStep2Controller.h"
#import "CHTextField.h"

@interface CHResetPsdStep2Controller ()

@property (weak, nonatomic) IBOutlet CHTextField *captchaTextField;
@property (weak, nonatomic) IBOutlet UIButton *btnGetCaptcha;
@property (weak, nonatomic) IBOutlet CHTextField *psdTextField;
@property (weak, nonatomic) IBOutlet CHTextField *psdAgainTextField;


@property (weak, nonatomic) IBOutlet UIButton *btnConfirm;

@end

@implementation CHResetPsdStep2Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addBackButton];
    
    self.view.backgroundColor = [UIColor color_f2f2f2];
    
}


#pragma mark - Action

- (IBAction)confirmAction:(id)sender {
}
- (IBAction)getCaptchaAction:(id)sender {
    
    [[NetworkingManager sharedManager] getCaptchaWithMobile:self.mobileNum type:@"" completedHandler:^(BOOL success, NSString *errDesc, id responseData) {
        if (success) {
            
        }else{
            [HYQShowTip showTipTextOnly:errDesc dealy:2];
        }
    }];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self hidenKeyboard];
}



@end
