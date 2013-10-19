//
//  textInputSelectableTestsTests.m
//  textInputSelectableTestsTests
//
//  Created by Jonathan Nolen on 10/19/13.
//  Copyright (c) 2013 test. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface CodeInitiatedUITextViewTests : XCTestCase{
    UITextView *textView;
}
@end

@implementation CodeInitiatedUITextViewTests

- (void)setUp
{
    [super setUp];
    textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    textView.attributedText = [[NSAttributedString alloc] initWithString:@"Hello World"];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBeginingOfDocumentPositionShouldNotBeNil
{
    XCTAssertNotNil(textView.beginningOfDocument, @"");
}

- (void)testGetPositionofTextReturnsNotNil{
    XCTAssertNotNil([textView closestPositionToPoint:CGPointMake(48, 12)], @"");
}

- (void)testGetOffsetNot0{
    UITextPosition *pos = [textView closestPositionToPoint:CGPointMake(48, 12)];
    NSInteger offset = [textView offsetFromPosition:textView.beginningOfDocument toPosition:pos];
    XCTAssertTrue(offset > 0, @"");
}

@end

@interface NibCreatedUITextViewSelectableTrueTests : XCTestCase{
    UITextView *textView;
}
@end

@implementation NibCreatedUITextViewSelectableTrueTests

- (void)setUp
{
    [super setUp];
    textView = [[UINib nibWithNibName:@"TestUITextView" bundle:[NSBundle bundleForClass:self.class]] instantiateWithOwner:nil options:nil][0];
    textView.attributedText = [[NSAttributedString alloc] initWithString:@"Hello World"];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBeginingOfDocumentPositionShouldNotBeNil
{
    XCTAssertNotNil(textView.beginningOfDocument, @"");
}

- (void)testGetPositionofTextReturnsNotNil{
    XCTAssertNotNil([textView closestPositionToPoint:CGPointMake(48, 12)], @"");
}

- (void)testGetOffsetNot0{
    UITextPosition *pos = [textView closestPositionToPoint:CGPointMake(48, 12)];
    NSInteger offset = [textView offsetFromPosition:textView.beginningOfDocument toPosition:pos];
    XCTAssertTrue(offset > 0, @"");
}

@end

@interface NibCreatedUITextViewSelectableFalseTests : XCTestCase{
    UITextView *textView;
}
@end

@implementation NibCreatedUITextViewSelectableFalseTests

- (void)setUp
{
    [super setUp];
    textView = [[UINib nibWithNibName:@"TestUITextView" bundle:[NSBundle bundleForClass:self.class]] instantiateWithOwner:nil options:nil][1];
    textView.attributedText = [[NSAttributedString alloc] initWithString:@"Hello World"];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBeginingOfDocumentPositionShouldNotBeNil
{
    XCTAssertNotNil(textView.beginningOfDocument, @"");
}

- (void)testGetPositionofTextReturnsNotNil{
    XCTAssertNotNil([textView closestPositionToPoint:CGPointMake(48, 12)], @"");
}

- (void)testGetOffsetNot0{
    UITextPosition *pos = [textView closestPositionToPoint:CGPointMake(48, 12)];
    NSInteger offset = [textView offsetFromPosition:textView.beginningOfDocument toPosition:pos];
    XCTAssertTrue(offset > 0, @"");
}

@end

