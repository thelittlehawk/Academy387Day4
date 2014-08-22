//
//  day4AcademyAddStudentViewController.h
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/21/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"

@interface day4AcademyAddStudentViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNameTextBox;

@property (weak, nonatomic) IBOutlet UITextField *lastNameTextBox;

@property Student *localStudent;

@end
