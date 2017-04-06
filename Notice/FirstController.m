//
//  FirstController.m
//  Notice
//
//  Created by kuanter on 2017/4/5.
//  Copyright © 2017年 kuanter. All rights reserved.
//

#import "FirstController.h"
#import "Header.h"

@interface FirstController ()

@end

@implementation FirstController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)notice1:(id)sender {
    
    
    
    NSDictionary*dic=[NSDictionary dictionaryWithObjectsAndKeys:@"孙少伟",@"name",@"男",@"sex", nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:Notice1 object:@1 userInfo:dic];
}

- (IBAction)notice2:(id)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:Notice1 object:nil userInfo:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
