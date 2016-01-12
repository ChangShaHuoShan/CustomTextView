//
//  CustomTextView.m
//  CustomTextView
//
//  Created by 袁灿 on 16/1/11.
//  Copyright © 2016年 yuancan. All rights reserved.
//

#define kCornerRadius   5.0

#import "CustomTextView.h"

@interface CustomTextView ()<UITextViewDelegate>
{
    UILabel *labPlaceholder;
    UILabel *numWords;
}

@end

@implementation CustomTextView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIView *background = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        background.layer.cornerRadius = kCornerRadius;
        background.layer.borderWidth = 1.0f;
        background.layer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
        [self addSubview:background];
        
        UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height-20)];
        textView.delegate = self;
        [background addSubview:textView];
        
        labPlaceholder = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 200, 20)];
        labPlaceholder.textColor = [UIColor grayColor];
        labPlaceholder.font = [UIFont systemFontOfSize:15.0];
        [background addSubview:labPlaceholder];
        
        numWords = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width-75, CGRectGetMaxY(textView.frame), 70, 20)];
        numWords.textAlignment = NSTextAlignmentRight;
        numWords.font = [UIFont systemFontOfSize:15.0];
        numWords.textColor = [UIColor grayColor];
        [background addSubview:numWords];
        
    }
    return self;
}

- (void)setMaxLength:(NSInteger)maxLength {
    _maxLength = maxLength;
    numWords.text = [NSString stringWithFormat:@"0/%ld",(long)_maxLength];
}

- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    labPlaceholder.text = _placeholder;
}

- (void)textViewDidChange:(UITextView *)textView {
    numWords.text = [NSString stringWithFormat:@"%ld/%ld",(long)textView.text.length,(long)_maxLength];
    labPlaceholder.hidden = (textView.text.length >0);
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    NSInteger length = textView.text.length - range.length + text.length;
    return length <= _maxLength;
}

@end
