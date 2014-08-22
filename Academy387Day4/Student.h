//
//  Student.h
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/21/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property NSString *firstName;

@property NSString *lastName;

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;

-(NSString*)getFullName;

-(void)changeFirstAndLastName:(NSString*)firstName lastName:(NSString*)lastName;

+ (NSString*)whoAmI;

@end
