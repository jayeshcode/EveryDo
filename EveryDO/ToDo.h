//
//  ToDo.h
//  EveryDO
//
//  Created by Jayesh Wadhwani on 2016-05-17.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject
@property (nonatomic,strong)NSString *title;
@property (nonatomic,strong)NSString *descrip;
@property(assign)NSString* priority;
@property BOOL iscompleted;

-(instancetype)initwithTitle:(NSString*)t andDescription:(NSString*)d andPriority:(NSString*)p andisCompleted: (BOOL)c;
-(NSString*)getTitle;
-(NSString*)getDescription;

-(BOOL)getisComplete;
-(NSString*)getPriority;
@end
