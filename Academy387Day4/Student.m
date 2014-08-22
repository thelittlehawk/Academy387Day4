//
//  Student.m
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/21/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName {
    self = [super init];
    
    self.firstName = firstName;
    self.lastName = lastName;
    
    return self;
}

-(NSString*)getFullName {
    NSString *fullName = [[NSString alloc] initWithFormat:@"%@, %@", self.firstName, self.lastName];
    return fullName;
}

+ (NSString*)whoAmI {
    return @"Student class";
}

- (void)changeFirstName:(NSString*)firstName {
    self.firstName = firstName;
}

- (void)changeLastName:(NSString*)lastName {
    self.lastName = lastName;
}

-(void)changeFirstAndLastName:(NSString*)firstName lastName:(NSString*)lastName {
    self.firstName = firstName;
    self.lastName = lastName;
}

@end
