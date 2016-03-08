//
//  ViewController.m
//  正则表达式验证
//
//  Created by 1 on 16/3/8.
//  Copyright © 2016年 HZQ. All rights reserved.
//
/*********************************************************/
/* Github地址：https://github.com/huzhiqin                */
/*********************************************************/

#import "ViewController.h"
#import "HZQRegexTestter.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *accountStrTFText;
@property (weak, nonatomic) IBOutlet UITextField *realNameTF;
@property (weak, nonatomic) IBOutlet UITextField *mobileTF;
@property (weak, nonatomic) IBOutlet UITextField *emailTF;
@property (weak, nonatomic) IBOutlet UITextField *IDCardTF;


@property (weak, nonatomic) IBOutlet UIButton *validateBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.validateBtn.layer.cornerRadius = 4.0f;
}

- (IBAction)allValidate:(id)sender {
    BOOL isSuccess;
    isSuccess = [HZQRegexTestter validateStrWithRange:@"{4,20}" str:_accountStrTFText.text];
    
    NSLog(@"验证账号或密码4到20位字符之间的真否：%d", isSuccess);
    
    isSuccess = [HZQRegexTestter validateRealName:_realNameTF.text];
    NSLog(@"真实姓名(汉字)真否：%d", isSuccess);
    
    isSuccess = [HZQRegexTestter validatePhone:_mobileTF.text];
    NSLog(@"手机号码真否：%d", isSuccess);
    
    isSuccess = [HZQRegexTestter validateEmail:_emailTF.text];
    NSLog(@"邮箱真否：%d", isSuccess);
    
    isSuccess = [HZQRegexTestter validateIDCardNumber:_IDCardTF.text];
    NSLog(@"身份证号真否：%d", isSuccess);
    
    NSString *msg = isSuccess ? @"信息验证成功!": @"信息验证失败!";
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
    [alert show];

}

/*********************************************************/
/* Github地址：https://github.com/huzhiqin                */
/*********************************************************/

@end
