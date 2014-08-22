//
//  day4AcademyViewController.m
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/21/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import "day4AcademyViewController.h"

@interface day4AcademyViewController ()

@end

@implementation day4AcademyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Update data on form
    [self updateNumberOfStudentInformation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addStudentToArray:(Student*) student {
    self.students = [[NSArray alloc] initWithObjects:student, nil];
    [self updateNumberOfStudentInformation];
}

-(void)updateNumberOfStudentInformation {
    if(self.students != Nil) {
        self.studentsNumberTextbox.text = [[NSString alloc] initWithFormat:@"%d", (int)self.students.count];
    } else {
        self.studentsNumberTextbox.text = @"0";
    }
    [self updateListOfStudents];
}

-(void)updateListOfStudents {
    for (Student *student in self.students) {
        self.studentsList.text = [self.studentsList.text stringByAppendingString:[student getFullName]];
        self.studentsList.text = [self.studentsList.text stringByAppendingString:@"\n"];
    }
}

@end
