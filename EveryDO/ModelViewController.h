//
//  ModelViewController.h
//  EveryDO
//
//  Created by Jayesh Wadhwani on 2016-05-17.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@protocol SendDataDelegate <NSObject>

-(void)sendDataTo:(ToDo*)td;
@end

@interface ModelViewController : UIViewController
- (IBAction)actiononADD:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *titlemodel;
@property (weak, nonatomic) IBOutlet UITextField *descrptionmodel;

@property(nonatomic,weak)id<SendDataDelegate> delegate;
@end
