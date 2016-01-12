//
//  CustomTextView.h
//  CustomTextView
//
//  Created by 袁灿 on 16/1/11.
//  Copyright © 2016年 yuancan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTextView : UIView

@property (nonatomic, assign) NSInteger maxLength;      //可输入字数个数
@property (nonatomic, strong) NSString *placeholder;    //提示语

@end
