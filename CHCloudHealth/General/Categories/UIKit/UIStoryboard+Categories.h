//
//  UIStoryboard+Categories.h
//  CHCloudHealth
//
//  Created by __无邪_ on 16/4/4.
//  Copyright © 2016年 fqah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHBaseNavigationController.h"

@interface UIStoryboard (Categories)
+ (instancetype)mainStoryboard;
+ (instancetype)loginStoryboard;


- (CHBaseNavigationController *)loginController;



@end