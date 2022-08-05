//
//  ViewController.m
//  TargetForInjectDyld
//
//  Created by Dio Brand on 2022/8/6.
//

#import "ViewController.h"
#import "Replace.h"
#import <objc/runtime.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *show;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(NSString *)func1:(NSString *)param1 {
    NSString *ret = [NSString stringWithFormat:@"%@ ---- from func1",param1];
    return ret;
}

- (IBAction)callFunc1:(UIButton *)sender {
    [self.show setText:@""];
    NSString *ret = [self func1:@"origin param"];
    [self.show setText:ret];
}

- (IBAction)exchangeFunc1:(UIButton *)sender {
//    [self.show setText:@""];
//    Method oriMethod = class_getInstanceMethod(NSClassFromString(@"ViewController"), @selector(func1:));
//    Method curMethod = class_getInstanceMethod(NSClassFromString(@"Replace"), @selector(replaceFunc1:));
//    method_exchangeImplementations(oriMethod, curMethod);
//    [self.show setText:@"交换方法执行"];
}

@end
