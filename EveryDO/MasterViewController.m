//
//  MasterViewController.m
//  EveryDO
//
//  Created by Jayesh Wadhwani on 2016-05-17.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "CustomTableViewCell.h"
#import "ToDo.h"
#import "ModelViewController.h"
@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController
@synthesize arrayoftodo;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    
    self.navigationItem.rightBarButtonItem = addButton;
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    
    
    arrayoftodo = [[NSMutableArray alloc] init];
    
    ToDo *td1 = [[ToDo alloc]initwithTitle:@"LHL Assignment" andDescription:@"Tableview" andPriority:@"High" andisCompleted:false];
    ToDo *td2 = [[ToDo alloc]initwithTitle:@"LHL 2 Assignment" andDescription:@"Tableview" andPriority:@"Moderate" andisCompleted:false];
    ToDo *td3 = [[ToDo alloc]initwithTitle:@"LHL 3 Assignment" andDescription:@"Tableview" andPriority:@"Low" andisCompleted:false];
    
    
    [self.arrayoftodo addObjectsFromArray: @[td1,td2,td3]];
    
    
    //    ViewControllerA *acontollerobject=[[ViewControllerA alloc] initWithNibName:@"ViewControllerA" bundle:nil];
    //    acontollerobject.delegate=self; // protocol listener
    //    [self.navigationController pushViewController:acontollerobject animated:YES];
    
    
    
    [self.tableView reloadData];
    
}



- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender {
    //ModelViewController *b = [[ModelViewController alloc] init];
    //  [self.navigationController pushViewController:b animated:true];
    [self performSegueWithIdentifier: @"Modal" sender: self];
    
    
    //    if (!self.objects) {
    //        self.objects = [[NSMutableArray alloc] init];
    //    }
    //    [self.objects insertObject:[NSDate date] atIndex:0];
    //    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    //    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

-(void)sendDataTo:(ToDo*)td {
    
    [arrayoftodo addObject:td];
    [self.tableView reloadData];
    
    
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        //        NSDate *object = self.objects[indexPath.row];
        
        //        [controller setDetailItem:object];
        //        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        //        controller.navigationItem.leftItemsSupplementBackButton = YES;
        
        //DetailViewController *obj = [[DetailViewController alloc]init];
        
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        controller.data= arrayoftodo[indexPath.row];
        // NSLog(@"%@",arrayoftodo[indexPath.row]);
        // [self.navigationController pushViewController:obj animated:true];
    } else if ([segue.identifier isEqualToString:@"Modal"]) {
        ModelViewController *controller = (ModelViewController *)[segue destinationViewController];
        controller.delegate=self;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //    return self.objects.count;
    
    return arrayoftodo.count;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    //
    //    NSDate *object = self.objects[indexPath.row];
    //    cell.textLabel.text = [object description];
    //    return cell;
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.titleLabel.text = [arrayoftodo[indexPath.row]getTitle];
    cell.descriptionLabel.text = [arrayoftodo[indexPath.row]getDescription];
    cell.priority.text= [arrayoftodo[indexPath.row]getPriority];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
   // [self.arrayoftodo removeObjectAtIndex:indexPath.row];
    NSLog(@"test");
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.arrayoftodo removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    
    
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//         Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

@end
