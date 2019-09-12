//
//  HKSVProgressHUD.m
//  HK01_ObjectC
//
//  Created by wangxun on 2019/9/8.
//  Copyright © 2019 wangxun. All rights reserved.
//

#import "HKSVProgressHUD.h"
#import "SVProgressHUD.h"

@implementation HKSVProgressHUD

+ (void)show
{
    [HKSVProgressHUD setProgressAppearance];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
    [SVProgressHUD show];
}

+ (void)showWithStatus:(NSString*)status
{
    [HKSVProgressHUD setProgressAppearance];
    [SVProgressHUD showWithStatus:status];
}

+ (void)showSuccessWithStatus:(NSString*)string
{
    [HKSVProgressHUD setProgressAppearance];
    [SVProgressHUD showSuccessWithStatus:string];
}

+ (void)showErrorWithStatus:(NSString *)string
{
    [HKSVProgressHUD setProgressAppearance];
    [SVProgressHUD showErrorWithStatus:string];
}

+ (void)showInfoWithStatus:(NSString *)status{
    [HKSVProgressHUD setProgressAppearance];
    [SVProgressHUD showInfoWithStatus:status];
}

+ (void)showImage:(UIImage*)image status:(NSString*)status
{
    [HKSVProgressHUD setProgressAppearance];
    [SVProgressHUD showImage:image status:status];
}

+ (void)showOnlyTitle:(NSString *)title
{
    [self showOnlyTitle:title withLocation:HKProgressHUDTitleLocationBottom];
}

+ (void)showOnlyTitle:(NSString *)title withLocation:(HKProgressHUDTitleLocation)location
{
    [HKSVProgressHUD setProgressAppearance];
    if (location == HKProgressHUDTitleLocationTop) {
        [SVProgressHUD setOffsetFromCenter:UIOffsetMake(0, -[UIScreen mainScreen].bounds.size.height * 0.35)];
    } else if (location == HKProgressHUDTitleLocationBottom) {
        [SVProgressHUD setOffsetFromCenter:UIOffsetMake(0, [UIScreen mainScreen].bounds.size.height * 0.35)];
    } else if (location == HKProgressHUDTitleLocationCenter){
        [SVProgressHUD setOffsetFromCenter:UIOffsetMake(0, [UIScreen mainScreen].bounds.size.height * 0.15)];
    }
    [SVProgressHUD showImage:[UIImage imageNamed:@""] status:title];
}

+ (void)dismiss
{
    [SVProgressHUD dismiss];
}

+ (void)setProgressAppearance
{
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6]];
    [SVProgressHUD setCornerRadius:2];
    [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
    [SVProgressHUD setOffsetFromCenter:UIOffsetMake(0, 0)];
    [SVProgressHUD setMinimumDismissTimeInterval:1.5];
    
}

@end

