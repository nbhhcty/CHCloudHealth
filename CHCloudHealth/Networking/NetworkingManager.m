//
//  HYQNetworkingManager.m
//  HotYQ
//
//  Created by __无邪_ on 15/10/10.
//  Copyright © 2015年 hotyq. All rights reserved.
//

#import "NetworkingManager.h"
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * API URL 调用参数
 */

NSString *const kAPI_Login = HOTYQ_JAVA_API @"user/login";
NSString *const kAPI_Register = HOTYQ_JAVA_API @"user/register";
NSString *const kAPI_GetCaptcha = HOTYQ_JAVA_API @"sendSMS";


NSString *const kAPI_PAGE = @"page";
NSString *const kAPI_SIZE = @"size";


////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////


@implementation NetworkingManager


#pragma mark - public interface



#pragma mark - 登录注册

- (void)loginWithMobile:(NSString *)mobile password:(NSString *)password completedHandler:(GGRequestCallbackBlock)completed{
    NSDictionary *params = @{@"mobile":mobile,@"password":password};
    
    [self POST:kAPI_Login params:params memoryCache:NO diskCache:NO completed:completed];
}

- (void)registerWithMobile:(NSString *)mobile password:(NSString *)password captcha:(NSString *)captcha completedHandler:(GGRequestCallbackBlock)completed{
    NSDictionary *params = @{@"mobile":mobile,@"password":password,@"captcha":captcha};
    
    [self POST:kAPI_Register params:params memoryCache:NO diskCache:NO completed:completed];
}

- (void)getCaptchaWithMobile:(NSString *)mobile type:(NSString *)type completedHandler:(GGRequestCallbackBlock)completed{
    NSDictionary *params = @{@"mobile":mobile,@"type":type};
    [self POST:kAPI_GetCaptcha params:params memoryCache:NO diskCache:NO completed:completed];
}








////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////


#pragma mark - life
+ (instancetype)sharedManager{
    static dispatch_once_t onceToken;
    static NetworkingManager *manager;
    dispatch_once(&onceToken, ^{
        manager = [[NetworkingManager alloc] init];
    });
    return manager;
}


////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////




@end
