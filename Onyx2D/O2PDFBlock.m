#import <Foundation/NSArray.h>
#import <Onyx2D/O2PDFBlock.h>

@implementation O2PDFBlock

+ pdfBlock {
    return [[[O2PDFBlock alloc] init] autorelease];
}

- init {
    _objects = [[NSMutableArray alloc] init];
    return self;
}

- (void) dealloc {
    [_objects release];
    [super dealloc];
}

- (O2PDFObjectType) objectType {
    return kO2PDFObjectTypeBlock;
}

- (NSArray *) objects {
    return _objects;
}

- (void) addObject: object {
    [_objects addObject: object];
}

- (NSString *) description {
    return [NSString
            stringWithFormat: @"<%@ %x> { %@ }", [self class], self, _objects];
}

@end
