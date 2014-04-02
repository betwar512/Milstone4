//
//  DetailViewController.h
//  Milstone4
//
//  Created by Abbi H Safaie on 27/03/2014.
//  Copyright (c) 2014 Abbas H Safaie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DirectoryEntry.h"
#import "ViewController.h"

@class DetailViewController;

@protocol DetailViewControllerDelegate <NSObject>

//-(void) goBackToLastPage;

-(void) detailViewControllerWillDisppear:(DetailViewController*) detailViewController;

@end

@class ViewController;
@interface DetailViewController : UIViewController<UITextFieldDelegate>

@property id <DetailViewControllerDelegate> delegate;


// textFields

@property (weak, nonatomic) IBOutlet UITextField *FirstName;
@property (weak, nonatomic) IBOutlet UITextField *LastName;
@property (weak, nonatomic) IBOutlet UITextField *PhoneNumber;
@property (weak, nonatomic) IBOutlet UITextField *Address;
@property id receieved;
@property ViewController *mvc;

@property DirectoryEntry* entry;
@property NSMutableArray*elements;
@end
