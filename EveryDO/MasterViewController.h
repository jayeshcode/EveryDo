//
//  MasterViewController.h
//  EveryDO
//
//  Created by Jayesh Wadhwani on 2016-05-17.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
#import "ModelViewController.h"
@class DetailViewController;




@interface MasterViewController : UITableViewController <SendDataDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;
@property NSMutableArray *arrayoftodo;




@end

