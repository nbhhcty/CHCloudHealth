//
//  CHSetTimeIntervalController.h
//  CHCloudHealth
//
//  Created by __无邪_ on 16/4/9.
//  Copyright © 2016年 fqah. All rights reserved.
//

#import "CHRootViewController.h"

@interface CHSetTimeIntervalController : CHRootViewController

@property (nonatomic, copy) void(^didSelectedTimeBlock)(NSString *timeStr);

@end
