//
//  Parser.m
//  DrinkXML
//
//  Created by Dan on 17/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Parser.h"

@implementation Parser

-(id) initParser {
    
    if (self == [super init]) {
        
        app = (AppDelegate *)[[UIApplication sharedApplication]delegate];
        
    }
    return self;
}

-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    
    if ([elementName isEqualToString:@"Prices"]) {
        
        app.listArray = [[NSMutableArray alloc] init];
    }
    else if([elementName isEqualToString:@"Price" ] ){
        
        theList = [[List alloc] init];
        
        theList.drinkID = [[attributeDict objectForKey:@"id"] integerValue];
    
    }
    
}

-(void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    
    if (!currentElementValue) {
        currentElementValue = [[NSMutableString alloc] initWithString:string];
    }
    else
        [currentElementValue appendString:string];
}

-(void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    
    if ([elementName isEqualToString:@"Prices"]) {
        return;
    }
    
    
    if ([elementName isEqualToString:@"Price"]) {
        [app.listArray addObject:theList];
        
        theList = nil;
        
    }
    else 
        [theList setValue:currentElementValue forKey:elementName];
    
    currentElementValue = nil;
    
}


@end
