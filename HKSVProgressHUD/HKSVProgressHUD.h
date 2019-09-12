//
//  HKSVProgressHUD.h
//  HK01_ObjectC
//
//  Created by wangxun on 2019/9/8.
//  Copyright © 2019 wangxun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    HKProgressHUDTitleLocationTop,
    HKProgressHUDTitleLocationCenter,
    HKProgressHUDTitleLocationBottom,
} HKProgressHUDTitleLocation;
@interface HKSVProgressHUD : NSObject

+ (void)show;
+ (void)showWithStatus:(NSString*)status;
+ (void)showSuccessWithStatus:(NSString*)string;
+ (void)showErrorWithStatus:(NSString *)string;
+ (void)showInfoWithStatus:(NSString*)status;
+ (void)showImage:(UIImage*)image status:(NSString*)status;
+ (void)showOnlyTitle:(NSString *)title;
+ (void)showOnlyTitle:(NSString *)title withLocation:(HKProgressHUDTitleLocation)location;
+ (void)dismiss;
@end

NS_ASSUME_NONNULL_END
