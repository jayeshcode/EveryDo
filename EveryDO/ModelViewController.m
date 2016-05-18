//
//  ModelViewController.m
//  EveryDO
//
//  Created by Jayesh Wadhwani on 2016-05-17.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//
#import "ToDo.h"
#import "ModelViewController.h"



@interface ModelViewController ()

@end

@implementation ModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)actiononADD:(id)sender {

    
    ToDo *new = [[ToDo alloc]initwithTitle:[NSString stringWithFormat:@"%@",self.titlemodel.text] andDescription:[NSString stringWithFormat:@"%@",self.descrptionmodel.text]  andPriority:@"high" andisCompleted:false];
    
    [self.delegate sendDataTo:new];
    
    
    [self.navigationController popViewControllerAnimated:true];

    //[self.delegate passDataBackward:@"Hey I am data from view Controller B"];
}
@end
