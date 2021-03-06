//
//  SecureKeyboardView.h
//  SecureKeyboard
//
//  Created by Mr Li on 16/10/20.
//  Copyright © 2016年 Mr_Li. All rights reserved.


#import <UIKit/UIKit.h>

#define SECURE_KEYBOARD [SecureKeyboardView shareKeyBoard]

typedef void (^myBlock)(NSString * value);
/**
 *  安全键盘视图
 */
@interface SecureKeyboardView : UIView

/**
 *  单例
 *
 *  @return SecureKeyboard对象
 */
+ (SecureKeyboardView *)shareKeyBoard;

/**
 *  点击按键回调block（返回键上的值）
 */
@property (nonatomic, copy) myBlock clickKeyBlock;

@end
