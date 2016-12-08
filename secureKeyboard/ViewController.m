//
//  ViewController.m
//  SecureKeyboard
//
//  Created by Mr Li on 16/10/20.
//  Modified by Jing on 16/12/08
//

#import "ViewController.h"
#import <sys/utsname.h>
#import "SecureKeyboardView.h"

@interface ViewController ()


@property (nonatomic, strong) UITextField        * textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.textField];
}


- (UITextField *)textField{
    
    if (!_textField) {
        
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 100)];
        _textField.backgroundColor = [UIColor cyanColor];
        _textField.inputView = SECURE_KEYBOARD;
        _textField.secureTextEntry = YES;
        SECURE_KEYBOARD.clickKeyBlock = ^(NSString * value){
            
            if ([value isEqualToString:@"DELETE"]) {
                
                if (self.textField.text.length > 0) {
                    
                    self.textField.text = [self.textField.text substringToIndex:self.textField.text.length - 1];
                    
                }else{
                    
                    return;
                }
                
            }else{
                
                self.textField.text = [NSString stringWithFormat:@"%@%@", self.textField.text, value];
            }
        };

        }
    return _textField;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITouch * tc = [touches anyObject];
    if (tc.view != self.textField) {
        
        [self.textField resignFirstResponder];
    }
}

@end
