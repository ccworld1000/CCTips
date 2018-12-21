//
//  CCTips.h
//  CCTips
//
//  Created by dengyouhua on 2018/12/21.
//  Copyright © 2018 cc | ccworld1000@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Toast/UIView+Toast.h>

typedef NS_ENUM (NSInteger, CCTipsMessageType) {
    CCTipsMessageTypeUIVIew = 0,
    CCTipsMessageTypeNSLog,
    CCTipsMessageTypeOther,
};


// tips 传入 NSString*
#define CCTipsForKeyWindow(tips) [CCTips message:tips view:[UIApplication sharedApplication].keyWindow type: CCTipsMessageTypeUIVIew]
#define CCTipsForView(tips)      [CCTips message: tips view: self.view type: CCTipsMessageTypeUIVIew]
#define CCTipsForNSLog(tips)     [CCTips message: tips view: nil type: CCTipsMessageTypeNSLog]
#define CCTipsForOther(tips)     [CCTips message: tips view: nil type: CCTipsMessageTypeOther]

@interface CCTips : NSObject

/**
 *  异常 | 错误 | 提示 等信息
 *
 *  @param msg  msg description
 *  @param view view description
 *  @param type type CCTipsMessageType CCTipsMessageTypeNSLog可以不传view | CCTipsMessageTypeUIVIew这个必须传view
 */
+ (void)message:(NSString *)msg view:(UIView *)view type:(CCTipsMessageType)type;

/**
 * message | for window
 *
 * @param msg msg description
 * @param window window description
 * @param duration duration description
 */
+ (void)message:(NSString *)msg window:(UIWindow *)window duration:(NSInteger)duration;

@end
