//
//  day4AcademyViewController.h
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/21/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"

@interface day4AcademyViewController : UIViewController

-(void)addStudentToArray:(Student*) student;

@property NSArray *students;

@property (weak, nonatomic) IBOutlet UILabel *studentsNumberTextbox;

@property (weak, nonatomic) IBOutlet UITextView *studentsList;

@end
