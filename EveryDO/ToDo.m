//
//  ToDo.m
//  EveryDO
//
//  Created by Jayesh Wadhwani on 2016-05-17.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo
-(instancetype)initwithTitle:(NSString*)t andDescription:(NSString*)d andPriority:(NSString*)p andisCompleted: (BOOL)c;
{
    
    _title=t;
    _descrip=d;
    _priority=p;
    _iscompleted=c;
    
    
    return self;
}
-(NSString*)getTitle
{

    return _title;

}

-(NSString*)getDescription
{
    
    return _descrip;
    
}
-(NSString*)getPriority;
{
    
    return _priority;
    
}

-(BOOL)getisComplete
{
    
    return _iscompleted;
    
}

@end
