//
//  Parser.h
//  DrinkXML
//
//  Created by Dan on 17/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "List.h"

@interface Parser : NSObject <NSXMLParserDelegate> {
    
    AppDelegate *app;
    List *theList;
    NSMutableString *currentElementValue;

}

-(id)initParser;

@end
