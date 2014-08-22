//
//  day4AcademyAddStudentViewController.m
//  Academy387Day4
//
//  Created by Faik Catibusic on 8/21/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import "day4AcademyAddStudentViewController.h"
#import "day4AcademyViewController.h"

@interface day4AcademyAddStudentViewController ()

@end

@implementation day4AcademyAddStudentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.localStudent = [Student alloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveChangesClicked:(id)sender {
    @try {
        NSString *firstName = self.firstNameTextBox.text;
        NSString *lastName = self.lastNameTextBox.text;
        self.localStudent.firstName = firstName;
        self.localStudent.lastName = lastName;
        [self performSegueWithIdentifier:@"returnToHome" sender:sender];
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception);
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"returnToHome"]) {
        day4AcademyViewController *controller = (day4AcademyViewController *)[segue destinationViewController];
        [controller addStudentToArray:self.localStudent];
    }
}


@end
