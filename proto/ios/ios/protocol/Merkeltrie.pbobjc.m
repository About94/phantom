// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: merkeltrie.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "Merkeltrie.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - MerkeltrieRoot

@implementation MerkeltrieRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - MerkeltrieRoot_FileDescriptor

static GPBFileDescriptor *MerkeltrieRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"protocol"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum CHILDTYPE

GPBEnumDescriptor *CHILDTYPE_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "None\000Inner\000Leaf\000";
    static const int32_t values[] = {
        CHILDTYPE_None,
        CHILDTYPE_Inner,
        CHILDTYPE_Leaf,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(CHILDTYPE)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:CHILDTYPE_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL CHILDTYPE_IsValidValue(int32_t value__) {
  switch (value__) {
    case CHILDTYPE_None:
    case CHILDTYPE_Inner:
    case CHILDTYPE_Leaf:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Child

@implementation Child

@dynamic sublocation;
@dynamic hash_p;
@dynamic childtype;

typedef struct Child__storage_ {
  uint32_t _has_storage_[1];
  CHILDTYPE childtype;
  NSData *sublocation;
  NSData *hash_p;
} Child__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "sublocation",
        .dataTypeSpecific.className = NULL,
        .number = Child_FieldNumber_Sublocation,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Child__storage_, sublocation),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "hash_p",
        .dataTypeSpecific.className = NULL,
        .number = Child_FieldNumber_Hash_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Child__storage_, hash_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "childtype",
        .dataTypeSpecific.enumDescFunc = CHILDTYPE_EnumDescriptor,
        .number = Child_FieldNumber_Childtype,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Child__storage_, childtype),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Child class]
                                     rootClass:[MerkeltrieRoot class]
                                          file:MerkeltrieRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Child__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Child_Childtype_RawValue(Child *message) {
  GPBDescriptor *descriptor = [Child descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Child_FieldNumber_Childtype];
  return GPBGetMessageInt32Field(message, field);
}

void SetChild_Childtype_RawValue(Child *message, int32_t value) {
  GPBDescriptor *descriptor = [Child descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Child_FieldNumber_Childtype];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Node

@implementation Node

@dynamic childrenArray, childrenArray_Count;

typedef struct Node__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *childrenArray;
} Node__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "childrenArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Child),
        .number = Node_FieldNumber_ChildrenArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Node__storage_, childrenArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Node class]
                                     rootClass:[MerkeltrieRoot class]
                                          file:MerkeltrieRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Node__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
