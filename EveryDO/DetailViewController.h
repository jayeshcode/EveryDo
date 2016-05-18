//
//  DetailViewController.h
//  EveryDO
//
//  Created by Jayesh Wadhwani on 2016-05-17.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *tiledetail;


@property (weak, nonatomic) IBOutlet UITextView *descripdetail;
@property (weak, nonatomic) IBOutlet UILabel *descrippriority;






@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property  ToDo *data;
@end

