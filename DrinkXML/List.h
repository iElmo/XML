//
//  List.h
//  DrinkXML
//
//  Created by Dan on 17/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface List : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *beer;
@property (nonatomic, retain) NSString *cider;
@property (nonatomic, retain) NSString *guinness;
@property (nonatomic, readwrite) NSInteger drinkID;



@end
