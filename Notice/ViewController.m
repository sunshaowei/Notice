//
//  ViewController.m
//  Notice
//
//  Created by kuanter on 2017/4/5.
//  Copyright © 2017年 kuanter. All rights reserved.
//

#import "ViewController.h"
#import "FirstController.h"
#import "Header.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notice1Event:) name:Notice1 object:nil];
   

}
- (IBAction)toFirst:(id)sender {
    [self.navigationController pushViewController:[[FirstController alloc]init] animated:YES];
}

//通知1的方法
-(void)notice1Event:(NSNotification*)info{
    //通知中的object可以用来区分通知的类型
    if ([info.object isEqual:@1]) {
         NSLog(@"====%s=====%@=====object=%@",__func__,info,info.object);
    }else{
        //不是需要的通知类型
    NSLog(@"====%s=====%@=====",__func__,info);
    }
    
   
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:Notice1];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
