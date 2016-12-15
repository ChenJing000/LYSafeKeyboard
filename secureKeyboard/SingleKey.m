//
//  SingleKey.m
//  SecureKeyboard
//  Interface for a single key
//
//  Created by Mr Li on 16/10/21.
//  Modified by Jing on 16/10/08.


#import "SingleKey.h"

@interface SingleKey ()

@property (weak, nonatomic) IBOutlet UILabel *titileLab;

@end

@implementation SingleKey

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.borderWidth = 0.5;
    self.layer.borderColor = [UIColor colorWithRed:0xe6 green:0xe6 blue:0xe6 alpha:1].CGColor;
}

- (void)setTitle:(NSString *)title{
    _title = title;
    self.titileLab.text = _title;
}

@end
