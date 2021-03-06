/* Copyright (c) 2010 Sven Weidauer

 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 of the Software, and to permit persons to whom the Software is furnished to do
 so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
*/

#import <Foundation/NSDate.h>
#import <Foundation/NSLock.h>
#import <Foundation/NSPlatform.h>
#import <Foundation/NSRaise.h>

@implementation NSCondition

#pragma mark -
#pragma mark NSObject methods

+ allocWithZone: (NSZone *) zone {
    if (self == [NSCondition class])
        self = [[NSPlatform currentPlatform] conditionClass];
    return NSAllocateObject(self, 0, zone);
}

- (void) dealloc; {
    [self setName: nil];

    [super dealloc];
}

#pragma mark -
#pragma mark <NSLocking> methods

- (void) lock; {
    NSInvalidAbstractInvocation();
}

- (void) unlock; {
    NSInvalidAbstractInvocation();
}

#pragma mark -
#pragma mark NSCondition methods

- (void) broadcast; {
    NSInvalidAbstractInvocation();
}

- (void) signal; {
    NSInvalidAbstractInvocation();
}

- (void) wait; {
    [self waitUntilDate: [NSDate distantFuture]];
}

- (BOOL) waitUntilDate: (NSDate *) limit; {
    NSInvalidAbstractInvocation();
    return NO;
}

- (NSString *) name; {
    return name;
}

- (void) setName: (NSString *) newName; {
    if (name != newName) {
        [name release];
        name = [newName copy];
    }
}

@end
