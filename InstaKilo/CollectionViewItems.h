//
//  CollectionViewItems.h
//  InstaKilo
//
//  Created by Auston Salvana on 7/16/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, subject) {
    spindel,
    irregular,
    spherical,
};

@interface CollectionViewItems : NSObject

@property (nonatomic) NSArray *arrayOfSections;
@property (nonatomic) NSArray *imageSection1;
@property (nonatomic) NSArray *imageSection2;
@property (nonatomic) NSArray *imageSection3;

-(NSString*)headerSubject:(int)currentSubject;
-(NSArray*)reorderBySubject:(NSArray*)arrayOfSections;
-(NSArray*)reorderByLocation:(NSArray*)arrayOfSections;
@end
