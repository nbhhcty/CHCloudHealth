//
//  CHMonitorCell.h
//  CHCloudHealth
//
//  Created by __无邪_ on 16/4/7.
//  Copyright © 2016年 fqah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHMonitorCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labLeftTitle;
@property (weak, nonatomic) IBOutlet UILabel *labLeftDetail;
@property (weak, nonatomic) IBOutlet UILabel *labTitle;
@property (weak, nonatomic) IBOutlet UILabel *labRightTitle;
@property (weak, nonatomic) IBOutlet UILabel *labRightDetail;
@property (weak, nonatomic) IBOutlet UITextField *tfLeftDetail;
@property (weak, nonatomic) IBOutlet UITextField *tfRightDetail;


- (void)setLeftTitle:(NSString *)leftTitle leftDetail:(NSString *)leftDetail title:(NSString *)title rightTitle:(NSString *)rightTitle rightDetail:(NSString *)rightDetail;

@end
