//
//  UIStoryboard+Categories.m
//  CHCloudHealth
//
//  Created by __无邪_ on 16/4/4.
//  Copyright © 2016年 fqah. All rights reserved.
//

#import "UIStoryboard+Categories.h"

@implementation UIStoryboard (Categories)
+ (instancetype)mainStoryboard{
    return [UIStoryboard storyboardWithName:@"Main" bundle:nil];
}
+ (instancetype)loginStoryboard{
    return [UIStoryboard storyboardWithName:@"Login" bundle:nil];
}

#pragma mark - Entry

- (UIViewController *)statisticsController{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"CHStatisticsController"];
}

- (UIViewController *)userInfoController{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"CHUserInfoController"];
}

- (UIViewController *)healthReportController{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"CHHealthReportController"];
}

- (UIViewController *)locationAreaController{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"CHLocationAreaController"];
}

- (UIViewController *)messageController{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"CHMessageController"];
}

- (UIViewController *)changeNameController{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"CHChangeNameController"];
}

- (UIViewController *)locationMonitorController{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"CHLocationMonitorController"];
}

- (UIViewController *)addRelationNumController{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"CHAddRelationNumController"];
}

- (UIViewController *)setTimeIntervalController{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"CHSetTimeIntervalController"];
}

- (CHBaseNavigationController *)bindController{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:@"CHNavBindController"];
}

- (UIViewController *)resetPsdStep2Controller{
    return [[UIStoryboard loginStoryboard] instantiateViewControllerWithIdentifier:@"CHResetPsdStep2Controller"];
}

- (CHBaseNavigationController *)loginController{
    return [[UIStoryboard loginStoryboard] instantiateViewControllerWithIdentifier:@"LoginNavigationController"];
}

@end
