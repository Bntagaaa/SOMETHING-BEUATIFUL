package com.google.appinventor.components.runtime.imagebot;

import _COROUTINE.a;
import com.google.appinventor.components.runtime.Component;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class ImageBotToken {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_request_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_request_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_response_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_response_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_token_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_token_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_unsigned_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_unsigned_fieldAccessorTable;

    public interface requestOrBuilder extends MessageOrBuilder {
        String getApikey();

        ByteString getApikeyBytes();

        ByteString getMask();

        request.OperationType getOperation();

        String getPrompt();

        ByteString getPromptBytes();

        String getSize();

        ByteString getSizeBytes();

        ByteString getSource();

        token getToken();

        tokenOrBuilder getTokenOrBuilder();

        long getVersion();

        boolean hasApikey();

        boolean hasMask();

        boolean hasOperation();

        boolean hasPrompt();

        boolean hasSize();

        boolean hasSource();

        boolean hasToken();

        boolean hasVersion();
    }

    public interface responseOrBuilder extends MessageOrBuilder {
        ByteString getImage();

        long getStatus();

        long getVersion();

        boolean hasImage();

        boolean hasStatus();

        boolean hasVersion();
    }

    public interface tokenOrBuilder extends MessageOrBuilder {
        long getGeneration();

        long getKeyid();

        ByteString getSignature();

        ByteString getUnsigned();

        long getVersion();

        boolean hasGeneration();

        boolean hasKeyid();

        boolean hasSignature();

        boolean hasUnsigned();

        boolean hasVersion();
    }

    public interface unsignedOrBuilder extends MessageOrBuilder {
        long getGeneration();

        String getHuuid();

        ByteString getHuuidBytes();

        long getVersion();

        boolean hasGeneration();

        boolean hasHuuid();

        boolean hasVersion();
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    private ImageBotToken() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static final class unsigned extends GeneratedMessageV3 implements unsignedOrBuilder {
        public static final int GENERATION_FIELD_NUMBER = 3;
        public static final int HUUID_FIELD_NUMBER = 1;
        public static final int VERSION_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long generation_;
        private volatile Object huuid_;
        private byte memoizedIsInitialized;
        private long version_;
        private static final unsigned DEFAULT_INSTANCE = new unsigned();

        @Deprecated
        public static final Parser<unsigned> PARSER = new AbstractParser<unsigned>() { // from class: com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsigned.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public unsigned m339parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new unsigned(codedInputStream, extensionRegistryLite, 0);
            }
        };

        public /* synthetic */ unsigned(Builder builder) {
            this((GeneratedMessageV3.Builder<?>) builder);
        }

        public /* synthetic */ unsigned(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, int i) {
            this(codedInputStream, extensionRegistryLite);
        }

        private unsigned(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private unsigned() {
            this.memoizedIsInitialized = (byte) -1;
            this.huuid_ = "";
            this.version_ = 0L;
            this.generation_ = 0L;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private unsigned(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                ByteString bytes = codedInputStream.readBytes();
                                this.bitField0_ = 1 | this.bitField0_;
                                this.huuid_ = bytes;
                            } else if (tag == 16) {
                                this.bitField0_ |= 2;
                                this.version_ = codedInputStream.readUInt64();
                            } else if (tag != 24) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.bitField0_ |= 4;
                                this.generation_ = codedInputStream.readUInt64();
                            }
                        }
                        z = true;
                    } catch (IOException e) {
                        throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ImageBotToken.internal_static_unsigned_descriptor;
        }

        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ImageBotToken.internal_static_unsigned_fieldAccessorTable.ensureFieldAccessorsInitialized(unsigned.class, Builder.class);
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
        public boolean hasHuuid() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
        public String getHuuid() {
            Object obj = this.huuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.huuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
        public ByteString getHuuidBytes() {
            Object obj = this.huuid_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.huuid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
        public long getVersion() {
            return this.version_;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
        public boolean hasGeneration() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
        public long getGeneration() {
            return this.generation_;
        }

        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) == 1) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.huuid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(2, this.version_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.generation_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeStringSize = (this.bitField0_ & 1) == 1 ? GeneratedMessageV3.computeStringSize(1, this.huuid_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeStringSize += CodedOutputStream.computeUInt64Size(2, this.version_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeStringSize += CodedOutputStream.computeUInt64Size(3, this.generation_);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof unsigned)) {
                return super.equals(obj);
            }
            unsigned unsignedVar = (unsigned) obj;
            boolean z = hasHuuid() == unsignedVar.hasHuuid();
            if (hasHuuid()) {
                z = z && getHuuid().equals(unsignedVar.getHuuid());
            }
            boolean z2 = z && hasVersion() == unsignedVar.hasVersion();
            if (hasVersion()) {
                z2 = z2 && getVersion() == unsignedVar.getVersion();
            }
            boolean z3 = z2 && hasGeneration() == unsignedVar.hasGeneration();
            if (hasGeneration()) {
                z3 = z3 && getGeneration() == unsignedVar.getGeneration();
            }
            return z3 && this.unknownFields.equals(unsignedVar.unknownFields);
        }

        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int iHashCode = getDescriptorForType().hashCode() + 779;
            if (hasHuuid()) {
                iHashCode = a.b(iHashCode, 37, 1, 53) + getHuuid().hashCode();
            }
            if (hasVersion()) {
                iHashCode = a.b(iHashCode, 37, 2, 53) + Internal.hashLong(getVersion());
            }
            if (hasGeneration()) {
                iHashCode = a.b(iHashCode, 37, 3, 53) + Internal.hashLong(getGeneration());
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static unsigned parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (unsigned) PARSER.parseFrom(byteString);
        }

        public static unsigned parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (unsigned) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static unsigned parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (unsigned) PARSER.parseFrom(bArr);
        }

        public static unsigned parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (unsigned) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static unsigned parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static unsigned parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static unsigned parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static unsigned parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static unsigned parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static unsigned parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m336newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.m338toBuilder();
        }

        public static Builder newBuilder(unsigned unsignedVar) {
            return DEFAULT_INSTANCE.m338toBuilder().mergeFrom(unsignedVar);
        }

        /* renamed from: toBuilder, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m338toBuilder() {
            int i = 0;
            return this == DEFAULT_INSTANCE ? new Builder(i) : new Builder(i).mergeFrom(this);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] */
        public Builder m335newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, 0);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements unsignedOrBuilder {
            private int bitField0_;
            private long generation_;
            private Object huuid_;
            private long version_;

            public /* synthetic */ Builder(int i) {
                this();
            }

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, int i) {
                this(builderParent);
            }

            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ImageBotToken.internal_static_unsigned_descriptor;
            }

            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ImageBotToken.internal_static_unsigned_fieldAccessorTable.ensureFieldAccessorsInitialized(unsigned.class, Builder.class);
            }

            private Builder() {
                this.huuid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.huuid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = unsigned.alwaysUseFieldBuilders;
            }

            /* renamed from: clear, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m349clear() {
                super.clear();
                this.huuid_ = "";
                int i = this.bitField0_;
                this.version_ = 0L;
                this.generation_ = 0L;
                this.bitField0_ = i & (-8);
                return this;
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return ImageBotToken.internal_static_unsigned_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public unsigned m362getDefaultInstanceForType() {
                return unsigned.getDefaultInstance();
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: com.google.protobuf.UninitializedMessageException */
            /* renamed from: build, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public unsigned m343build() throws UninitializedMessageException {
                unsigned unsignedVarM345buildPartial = m345buildPartial();
                if (unsignedVarM345buildPartial.isInitialized()) {
                    return unsignedVarM345buildPartial;
                }
                throw newUninitializedMessageException(unsignedVarM345buildPartial);
            }

            /* renamed from: buildPartial, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public unsigned m345buildPartial() {
                unsigned unsignedVar = new unsigned(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                unsignedVar.huuid_ = this.huuid_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                unsignedVar.version_ = this.version_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                unsignedVar.generation_ = this.generation_;
                unsignedVar.bitField0_ = i2;
                onBuilt();
                return unsignedVar;
            }

            /* renamed from: clone, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m360clone() {
                return (Builder) super.clone();
            }

            /* renamed from: setField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m373setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            /* renamed from: clearField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m351clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            /* renamed from: clearOneof, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m354clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            /* renamed from: setRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m375setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            /* renamed from: addRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m341addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m367mergeFrom(Message message) {
                if (message instanceof unsigned) {
                    return mergeFrom((unsigned) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(unsigned unsignedVar) {
                if (unsignedVar == unsigned.getDefaultInstance()) {
                    return this;
                }
                if (unsignedVar.hasHuuid()) {
                    this.bitField0_ |= 1;
                    this.huuid_ = unsignedVar.huuid_;
                    onChanged();
                }
                if (unsignedVar.hasVersion()) {
                    setVersion(unsignedVar.getVersion());
                }
                if (unsignedVar.hasGeneration()) {
                    setGeneration(unsignedVar.getGeneration());
                }
                m371mergeUnknownFields(unsignedVar.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsigned.Builder m368mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.google.appinventor.components.runtime.imagebot.ImageBotToken$unsigned> r1 = com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsigned.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.appinventor.components.runtime.imagebot.ImageBotToken$unsigned r3 = (com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsigned) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.google.appinventor.components.runtime.imagebot.ImageBotToken$unsigned r4 = (com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsigned) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.mergeFrom(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsigned.Builder.m368mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.google.appinventor.components.runtime.imagebot.ImageBotToken$unsigned$Builder");
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
            public boolean hasHuuid() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
            public String getHuuid() {
                Object obj = this.huuid_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.huuid_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
            public ByteString getHuuidBytes() {
                Object obj = this.huuid_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.huuid_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setHuuid(String str) {
                str.getClass();
                this.bitField0_ |= 1;
                this.huuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearHuuid() {
                this.bitField0_ &= -2;
                this.huuid_ = unsigned.getDefaultInstance().getHuuid();
                onChanged();
                return this;
            }

            public Builder setHuuidBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 1;
                this.huuid_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
            public long getVersion() {
                return this.version_;
            }

            public Builder setVersion(long j) {
                this.bitField0_ |= 2;
                this.version_ = j;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -3;
                this.version_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
            public boolean hasGeneration() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.unsignedOrBuilder
            public long getGeneration() {
                return this.generation_;
            }

            public Builder setGeneration(long j) {
                this.bitField0_ |= 4;
                this.generation_ = j;
                onChanged();
                return this;
            }

            public Builder clearGeneration() {
                this.bitField0_ &= -5;
                this.generation_ = 0L;
                onChanged();
                return this;
            }

            /* renamed from: setUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m377setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            /* renamed from: mergeUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m371mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }
        }

        public static unsigned getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<unsigned> parser() {
            return PARSER;
        }

        public Parser<unsigned> getParserForType() {
            return PARSER;
        }

        /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public unsigned m333getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class token extends GeneratedMessageV3 implements tokenOrBuilder {
        public static final int GENERATION_FIELD_NUMBER = 3;
        public static final int KEYID_FIELD_NUMBER = 2;
        public static final int SIGNATURE_FIELD_NUMBER = 5;
        public static final int UNSIGNED_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private long generation_;
        private long keyid_;
        private byte memoizedIsInitialized;
        private ByteString signature_;
        private ByteString unsigned_;
        private long version_;
        private static final token DEFAULT_INSTANCE = new token();

        @Deprecated
        public static final Parser<token> PARSER = new AbstractParser<token>() { // from class: com.google.appinventor.components.runtime.imagebot.ImageBotToken.token.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public token m293parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new token(codedInputStream, extensionRegistryLite, 0);
            }
        };

        public /* synthetic */ token(Builder builder) {
            this((GeneratedMessageV3.Builder<?>) builder);
        }

        public /* synthetic */ token(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, int i) {
            this(codedInputStream, extensionRegistryLite);
        }

        private token(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private token() {
            this.memoizedIsInitialized = (byte) -1;
            this.version_ = 1L;
            this.keyid_ = 1L;
            this.generation_ = 0L;
            this.unsigned_ = ByteString.EMPTY;
            this.signature_ = ByteString.EMPTY;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private token(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.bitField0_ |= 1;
                                this.version_ = codedInputStream.readUInt64();
                            } else if (tag == 16) {
                                this.bitField0_ |= 2;
                                this.keyid_ = codedInputStream.readUInt64();
                            } else if (tag == 24) {
                                this.bitField0_ |= 4;
                                this.generation_ = codedInputStream.readUInt64();
                            } else if (tag == 34) {
                                this.bitField0_ |= 8;
                                this.unsigned_ = codedInputStream.readBytes();
                            } else if (tag != 42) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.bitField0_ |= 16;
                                this.signature_ = codedInputStream.readBytes();
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ImageBotToken.internal_static_token_descriptor;
        }

        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ImageBotToken.internal_static_token_fieldAccessorTable.ensureFieldAccessorsInitialized(token.class, Builder.class);
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
        public long getVersion() {
            return this.version_;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
        public boolean hasKeyid() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
        public long getKeyid() {
            return this.keyid_;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
        public boolean hasGeneration() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
        public long getGeneration() {
            return this.generation_;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
        public boolean hasUnsigned() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
        public ByteString getUnsigned() {
            return this.unsigned_;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
        public boolean hasSignature() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
        public ByteString getSignature() {
            return this.signature_;
        }

        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt64(1, this.version_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(2, this.keyid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.generation_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, this.unsigned_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, this.signature_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeUInt64Size(1, this.version_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(2, this.keyid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(3, this.generation_);
            }
            if ((this.bitField0_ & 8) == 8) {
                iComputeUInt64Size += CodedOutputStream.computeBytesSize(4, this.unsigned_);
            }
            if ((this.bitField0_ & 16) == 16) {
                iComputeUInt64Size += CodedOutputStream.computeBytesSize(5, this.signature_);
            }
            int serializedSize = iComputeUInt64Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof token)) {
                return super.equals(obj);
            }
            token tokenVar = (token) obj;
            boolean z = hasVersion() == tokenVar.hasVersion();
            if (hasVersion()) {
                z = z && getVersion() == tokenVar.getVersion();
            }
            boolean z2 = z && hasKeyid() == tokenVar.hasKeyid();
            if (hasKeyid()) {
                z2 = z2 && getKeyid() == tokenVar.getKeyid();
            }
            boolean z3 = z2 && hasGeneration() == tokenVar.hasGeneration();
            if (hasGeneration()) {
                z3 = z3 && getGeneration() == tokenVar.getGeneration();
            }
            boolean z4 = z3 && hasUnsigned() == tokenVar.hasUnsigned();
            if (hasUnsigned()) {
                z4 = z4 && getUnsigned().equals(tokenVar.getUnsigned());
            }
            boolean z5 = z4 && hasSignature() == tokenVar.hasSignature();
            if (hasSignature()) {
                z5 = z5 && getSignature().equals(tokenVar.getSignature());
            }
            return z5 && this.unknownFields.equals(tokenVar.unknownFields);
        }

        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int iHashCode = getDescriptorForType().hashCode() + 779;
            if (hasVersion()) {
                iHashCode = a.b(iHashCode, 37, 1, 53) + Internal.hashLong(getVersion());
            }
            if (hasKeyid()) {
                iHashCode = a.b(iHashCode, 37, 2, 53) + Internal.hashLong(getKeyid());
            }
            if (hasGeneration()) {
                iHashCode = a.b(iHashCode, 37, 3, 53) + Internal.hashLong(getGeneration());
            }
            if (hasUnsigned()) {
                iHashCode = a.b(iHashCode, 37, 4, 53) + getUnsigned().hashCode();
            }
            if (hasSignature()) {
                iHashCode = a.b(iHashCode, 37, 5, 53) + getSignature().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static token parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (token) PARSER.parseFrom(byteString);
        }

        public static token parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (token) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static token parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (token) PARSER.parseFrom(bArr);
        }

        public static token parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (token) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static token parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static token parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static token parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static token parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static token parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static token parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m290newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.m292toBuilder();
        }

        public static Builder newBuilder(token tokenVar) {
            return DEFAULT_INSTANCE.m292toBuilder().mergeFrom(tokenVar);
        }

        /* renamed from: toBuilder, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m292toBuilder() {
            int i = 0;
            return this == DEFAULT_INSTANCE ? new Builder(i) : new Builder(i).mergeFrom(this);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] */
        public Builder m289newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, 0);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements tokenOrBuilder {
            private int bitField0_;
            private long generation_;
            private long keyid_;
            private ByteString signature_;
            private ByteString unsigned_;
            private long version_;

            public /* synthetic */ Builder(int i) {
                this();
            }

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, int i) {
                this(builderParent);
            }

            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ImageBotToken.internal_static_token_descriptor;
            }

            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ImageBotToken.internal_static_token_fieldAccessorTable.ensureFieldAccessorsInitialized(token.class, Builder.class);
            }

            private Builder() {
                this.version_ = 1L;
                this.keyid_ = 1L;
                this.unsigned_ = ByteString.EMPTY;
                this.signature_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.version_ = 1L;
                this.keyid_ = 1L;
                this.unsigned_ = ByteString.EMPTY;
                this.signature_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = token.alwaysUseFieldBuilders;
            }

            /* renamed from: clear, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m303clear() {
                super.clear();
                this.version_ = 1L;
                int i = this.bitField0_;
                this.keyid_ = 1L;
                this.generation_ = 0L;
                this.bitField0_ = i & (-8);
                this.unsigned_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                this.signature_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                return this;
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return ImageBotToken.internal_static_token_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public token m316getDefaultInstanceForType() {
                return token.getDefaultInstance();
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: com.google.protobuf.UninitializedMessageException */
            /* renamed from: build, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public token m297build() throws UninitializedMessageException {
                token tokenVarM299buildPartial = m299buildPartial();
                if (tokenVarM299buildPartial.isInitialized()) {
                    return tokenVarM299buildPartial;
                }
                throw newUninitializedMessageException(tokenVarM299buildPartial);
            }

            /* renamed from: buildPartial, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public token m299buildPartial() {
                token tokenVar = new token(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                tokenVar.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                tokenVar.keyid_ = this.keyid_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                tokenVar.generation_ = this.generation_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                tokenVar.unsigned_ = this.unsigned_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                tokenVar.signature_ = this.signature_;
                tokenVar.bitField0_ = i2;
                onBuilt();
                return tokenVar;
            }

            /* renamed from: clone, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m314clone() {
                return (Builder) super.clone();
            }

            /* renamed from: setField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m327setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            /* renamed from: clearField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m305clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            /* renamed from: clearOneof, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m308clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            /* renamed from: setRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m329setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            /* renamed from: addRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m295addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m321mergeFrom(Message message) {
                if (message instanceof token) {
                    return mergeFrom((token) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(token tokenVar) {
                if (tokenVar == token.getDefaultInstance()) {
                    return this;
                }
                if (tokenVar.hasVersion()) {
                    setVersion(tokenVar.getVersion());
                }
                if (tokenVar.hasKeyid()) {
                    setKeyid(tokenVar.getKeyid());
                }
                if (tokenVar.hasGeneration()) {
                    setGeneration(tokenVar.getGeneration());
                }
                if (tokenVar.hasUnsigned()) {
                    setUnsigned(tokenVar.getUnsigned());
                }
                if (tokenVar.hasSignature()) {
                    setSignature(tokenVar.getSignature());
                }
                m325mergeUnknownFields(tokenVar.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.appinventor.components.runtime.imagebot.ImageBotToken.token.Builder m322mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.google.appinventor.components.runtime.imagebot.ImageBotToken$token> r1 = com.google.appinventor.components.runtime.imagebot.ImageBotToken.token.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.appinventor.components.runtime.imagebot.ImageBotToken$token r3 = (com.google.appinventor.components.runtime.imagebot.ImageBotToken.token) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.google.appinventor.components.runtime.imagebot.ImageBotToken$token r4 = (com.google.appinventor.components.runtime.imagebot.ImageBotToken.token) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.mergeFrom(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.imagebot.ImageBotToken.token.Builder.m322mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.google.appinventor.components.runtime.imagebot.ImageBotToken$token$Builder");
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
            public long getVersion() {
                return this.version_;
            }

            public Builder setVersion(long j) {
                this.bitField0_ |= 1;
                this.version_ = j;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 1L;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
            public boolean hasKeyid() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
            public long getKeyid() {
                return this.keyid_;
            }

            public Builder setKeyid(long j) {
                this.bitField0_ |= 2;
                this.keyid_ = j;
                onChanged();
                return this;
            }

            public Builder clearKeyid() {
                this.bitField0_ &= -3;
                this.keyid_ = 1L;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
            public boolean hasGeneration() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
            public long getGeneration() {
                return this.generation_;
            }

            public Builder setGeneration(long j) {
                this.bitField0_ |= 4;
                this.generation_ = j;
                onChanged();
                return this;
            }

            public Builder clearGeneration() {
                this.bitField0_ &= -5;
                this.generation_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
            public boolean hasUnsigned() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
            public ByteString getUnsigned() {
                return this.unsigned_;
            }

            public Builder setUnsigned(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 8;
                this.unsigned_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearUnsigned() {
                this.bitField0_ &= -9;
                this.unsigned_ = token.getDefaultInstance().getUnsigned();
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
            public boolean hasSignature() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.tokenOrBuilder
            public ByteString getSignature() {
                return this.signature_;
            }

            public Builder setSignature(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 16;
                this.signature_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearSignature() {
                this.bitField0_ &= -17;
                this.signature_ = token.getDefaultInstance().getSignature();
                onChanged();
                return this;
            }

            /* renamed from: setUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m331setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            /* renamed from: mergeUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m325mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }
        }

        public static token getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<token> parser() {
            return PARSER;
        }

        public Parser<token> getParserForType() {
            return PARSER;
        }

        /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public token m287getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class request extends GeneratedMessageV3 implements requestOrBuilder {
        public static final int APIKEY_FIELD_NUMBER = 7;
        public static final int MASK_FIELD_NUMBER = 6;
        public static final int OPERATION_FIELD_NUMBER = 2;
        public static final int PROMPT_FIELD_NUMBER = 4;
        public static final int SIZE_FIELD_NUMBER = 8;
        public static final int SOURCE_FIELD_NUMBER = 5;
        public static final int TOKEN_FIELD_NUMBER = 3;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object apikey_;
        private int bitField0_;
        private ByteString mask_;
        private byte memoizedIsInitialized;
        private int operation_;
        private volatile Object prompt_;
        private volatile Object size_;
        private ByteString source_;
        private token token_;
        private long version_;
        private static final request DEFAULT_INSTANCE = new request();

        @Deprecated
        public static final Parser<request> PARSER = new AbstractParser<request>() { // from class: com.google.appinventor.components.runtime.imagebot.ImageBotToken.request.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public request m200parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new request(codedInputStream, extensionRegistryLite, 0);
            }
        };

        public /* synthetic */ request(Builder builder) {
            this((GeneratedMessageV3.Builder<?>) builder);
        }

        public /* synthetic */ request(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, int i) {
            this(codedInputStream, extensionRegistryLite);
        }

        private request(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private request() {
            this.memoizedIsInitialized = (byte) -1;
            this.version_ = 1L;
            this.operation_ = 0;
            this.prompt_ = "";
            this.source_ = ByteString.EMPTY;
            this.mask_ = ByteString.EMPTY;
            this.apikey_ = "";
            this.size_ = "";
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private request(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.bitField0_ |= 1;
                                    this.version_ = codedInputStream.readUInt64();
                                } else if (tag == 16) {
                                    int i = codedInputStream.readEnum();
                                    if (OperationType.valueOf(i) == null) {
                                        builderNewBuilder.mergeVarintField(2, i);
                                    } else {
                                        this.bitField0_ |= 2;
                                        this.operation_ = i;
                                    }
                                } else if (tag == 26) {
                                    token.Builder builderM292toBuilder = (this.bitField0_ & 4) == 4 ? this.token_.m292toBuilder() : null;
                                    token tokenVar = (token) codedInputStream.readMessage(token.PARSER, extensionRegistryLite);
                                    this.token_ = tokenVar;
                                    if (builderM292toBuilder != null) {
                                        builderM292toBuilder.mergeFrom(tokenVar);
                                        this.token_ = builderM292toBuilder.m299buildPartial();
                                    }
                                    this.bitField0_ |= 4;
                                } else if (tag == 34) {
                                    ByteString bytes = codedInputStream.readBytes();
                                    this.bitField0_ |= 8;
                                    this.prompt_ = bytes;
                                } else if (tag == 42) {
                                    this.bitField0_ |= 16;
                                    this.source_ = codedInputStream.readBytes();
                                } else if (tag == 50) {
                                    this.bitField0_ |= 32;
                                    this.mask_ = codedInputStream.readBytes();
                                } else if (tag == 58) {
                                    ByteString bytes2 = codedInputStream.readBytes();
                                    this.bitField0_ |= 64;
                                    this.apikey_ = bytes2;
                                } else if (tag != 66) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    ByteString bytes3 = codedInputStream.readBytes();
                                    this.bitField0_ |= 128;
                                    this.size_ = bytes3;
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ImageBotToken.internal_static_request_descriptor;
        }

        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ImageBotToken.internal_static_request_fieldAccessorTable.ensureFieldAccessorsInitialized(request.class, Builder.class);
        }

        public enum OperationType implements ProtocolMessageEnum {
            CREATE(0),
            EDIT(1);

            public static final int CREATE_VALUE = 0;
            public static final int EDIT_VALUE = 1;
            private final int value;
            private static final Internal.EnumLiteMap<OperationType> internalValueMap = new Internal.EnumLiteMap<OperationType>() { // from class: com.google.appinventor.components.runtime.imagebot.ImageBotToken.request.OperationType.1
                /* renamed from: findValueByNumber, reason: merged with bridge method [inline-methods] */
                public OperationType m239findValueByNumber(int i) {
                    return OperationType.forNumber(i);
                }
            };
            private static final OperationType[] VALUES = values();

            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static OperationType valueOf(int i) {
                return forNumber(i);
            }

            public static OperationType forNumber(int i) {
                if (i == 0) {
                    return CREATE;
                }
                if (i != 1) {
                    return null;
                }
                return EDIT;
            }

            public static Internal.EnumLiteMap<OperationType> internalGetValueMap() {
                return internalValueMap;
            }

            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(ordinal());
            }

            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return (Descriptors.EnumDescriptor) request.getDescriptor().getEnumTypes().get(0);
            }

            public static OperationType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() != getDescriptor()) {
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }

            OperationType(int i) {
                this.value = i;
            }
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public long getVersion() {
            return this.version_;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public boolean hasOperation() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public OperationType getOperation() {
            OperationType operationTypeValueOf = OperationType.valueOf(this.operation_);
            return operationTypeValueOf == null ? OperationType.CREATE : operationTypeValueOf;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public token getToken() {
            token tokenVar = this.token_;
            return tokenVar == null ? token.getDefaultInstance() : tokenVar;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public tokenOrBuilder getTokenOrBuilder() {
            token tokenVar = this.token_;
            return tokenVar == null ? token.getDefaultInstance() : tokenVar;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public boolean hasPrompt() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public String getPrompt() {
            Object obj = this.prompt_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.prompt_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public ByteString getPromptBytes() {
            Object obj = this.prompt_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.prompt_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public boolean hasSource() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public ByteString getSource() {
            return this.source_;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public boolean hasMask() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public ByteString getMask() {
            return this.mask_;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public boolean hasApikey() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public String getApikey() {
            Object obj = this.apikey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.apikey_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public ByteString getApikeyBytes() {
            Object obj = this.apikey_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.apikey_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public boolean hasSize() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public String getSize() {
            Object obj = this.size_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.size_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
        public ByteString getSizeBytes() {
            Object obj = this.size_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.size_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!hasOperation()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt64(1, this.version_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.operation_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeMessage(3, getToken());
            }
            if ((this.bitField0_ & 8) == 8) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.prompt_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, this.source_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, this.mask_);
            }
            if ((this.bitField0_ & 64) == 64) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.apikey_);
            }
            if ((this.bitField0_ & 128) == 128) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.size_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeUInt64Size(1, this.version_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeUInt64Size += CodedOutputStream.computeEnumSize(2, this.operation_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeUInt64Size += CodedOutputStream.computeMessageSize(3, getToken());
            }
            if ((this.bitField0_ & 8) == 8) {
                iComputeUInt64Size += GeneratedMessageV3.computeStringSize(4, this.prompt_);
            }
            if ((this.bitField0_ & 16) == 16) {
                iComputeUInt64Size += CodedOutputStream.computeBytesSize(5, this.source_);
            }
            if ((this.bitField0_ & 32) == 32) {
                iComputeUInt64Size += CodedOutputStream.computeBytesSize(6, this.mask_);
            }
            if ((this.bitField0_ & 64) == 64) {
                iComputeUInt64Size += GeneratedMessageV3.computeStringSize(7, this.apikey_);
            }
            if ((this.bitField0_ & 128) == 128) {
                iComputeUInt64Size += GeneratedMessageV3.computeStringSize(8, this.size_);
            }
            int serializedSize = iComputeUInt64Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof request)) {
                return super.equals(obj);
            }
            request requestVar = (request) obj;
            boolean z = hasVersion() == requestVar.hasVersion();
            if (hasVersion()) {
                z = z && getVersion() == requestVar.getVersion();
            }
            boolean z2 = z && hasOperation() == requestVar.hasOperation();
            if (hasOperation()) {
                z2 = z2 && this.operation_ == requestVar.operation_;
            }
            boolean z3 = z2 && hasToken() == requestVar.hasToken();
            if (hasToken()) {
                z3 = z3 && getToken().equals(requestVar.getToken());
            }
            boolean z4 = z3 && hasPrompt() == requestVar.hasPrompt();
            if (hasPrompt()) {
                z4 = z4 && getPrompt().equals(requestVar.getPrompt());
            }
            boolean z5 = z4 && hasSource() == requestVar.hasSource();
            if (hasSource()) {
                z5 = z5 && getSource().equals(requestVar.getSource());
            }
            boolean z6 = z5 && hasMask() == requestVar.hasMask();
            if (hasMask()) {
                z6 = z6 && getMask().equals(requestVar.getMask());
            }
            boolean z7 = z6 && hasApikey() == requestVar.hasApikey();
            if (hasApikey()) {
                z7 = z7 && getApikey().equals(requestVar.getApikey());
            }
            boolean z8 = z7 && hasSize() == requestVar.hasSize();
            if (hasSize()) {
                z8 = z8 && getSize().equals(requestVar.getSize());
            }
            return z8 && this.unknownFields.equals(requestVar.unknownFields);
        }

        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int iHashCode = getDescriptorForType().hashCode() + 779;
            if (hasVersion()) {
                iHashCode = a.b(iHashCode, 37, 1, 53) + Internal.hashLong(getVersion());
            }
            if (hasOperation()) {
                iHashCode = a.b(iHashCode, 37, 2, 53) + this.operation_;
            }
            if (hasToken()) {
                iHashCode = a.b(iHashCode, 37, 3, 53) + getToken().hashCode();
            }
            if (hasPrompt()) {
                iHashCode = a.b(iHashCode, 37, 4, 53) + getPrompt().hashCode();
            }
            if (hasSource()) {
                iHashCode = a.b(iHashCode, 37, 5, 53) + getSource().hashCode();
            }
            if (hasMask()) {
                iHashCode = a.b(iHashCode, 37, 6, 53) + getMask().hashCode();
            }
            if (hasApikey()) {
                iHashCode = a.b(iHashCode, 37, 7, 53) + getApikey().hashCode();
            }
            if (hasSize()) {
                iHashCode = a.b(iHashCode, 37, 8, 53) + getSize().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (request) PARSER.parseFrom(byteString);
        }

        public static request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (request) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (request) PARSER.parseFrom(bArr);
        }

        public static request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (request) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static request parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m197newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.m199toBuilder();
        }

        public static Builder newBuilder(request requestVar) {
            return DEFAULT_INSTANCE.m199toBuilder().mergeFrom(requestVar);
        }

        /* renamed from: toBuilder, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m199toBuilder() {
            int i = 0;
            return this == DEFAULT_INSTANCE ? new Builder(i) : new Builder(i).mergeFrom(this);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] */
        public Builder m196newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, 0);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements requestOrBuilder {
            private Object apikey_;
            private int bitField0_;
            private ByteString mask_;
            private int operation_;
            private Object prompt_;
            private Object size_;
            private ByteString source_;
            private SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> tokenBuilder_;
            private token token_;
            private long version_;

            public /* synthetic */ Builder(int i) {
                this();
            }

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, int i) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ImageBotToken.internal_static_request_descriptor;
            }

            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ImageBotToken.internal_static_request_fieldAccessorTable.ensureFieldAccessorsInitialized(request.class, Builder.class);
            }

            private Builder() {
                this.version_ = 1L;
                this.operation_ = 0;
                this.token_ = null;
                this.prompt_ = "";
                this.source_ = ByteString.EMPTY;
                this.mask_ = ByteString.EMPTY;
                this.apikey_ = "";
                this.size_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.version_ = 1L;
                this.operation_ = 0;
                this.token_ = null;
                this.prompt_ = "";
                this.source_ = ByteString.EMPTY;
                this.mask_ = ByteString.EMPTY;
                this.apikey_ = "";
                this.size_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (request.alwaysUseFieldBuilders) {
                    getTokenFieldBuilder();
                }
            }

            /* renamed from: clear, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m210clear() {
                super.clear();
                this.version_ = 1L;
                int i = this.bitField0_;
                this.operation_ = 0;
                this.bitField0_ = i & (-4);
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.token_ = null;
                } else {
                    singleFieldBuilderV3.clear();
                }
                int i2 = this.bitField0_;
                this.prompt_ = "";
                this.bitField0_ = i2 & (-13);
                this.source_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                this.mask_ = ByteString.EMPTY;
                int i3 = this.bitField0_;
                this.apikey_ = "";
                this.size_ = "";
                this.bitField0_ = i3 & (-225);
                return this;
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return ImageBotToken.internal_static_request_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public request m223getDefaultInstanceForType() {
                return request.getDefaultInstance();
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: com.google.protobuf.UninitializedMessageException */
            /* renamed from: build, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public request m204build() throws UninitializedMessageException {
                request requestVarM206buildPartial = m206buildPartial();
                if (requestVarM206buildPartial.isInitialized()) {
                    return requestVarM206buildPartial;
                }
                throw newUninitializedMessageException(requestVarM206buildPartial);
            }

            /* renamed from: buildPartial, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public request m206buildPartial() {
                request requestVar = new request(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                requestVar.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                requestVar.operation_ = this.operation_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    requestVar.token_ = this.token_;
                } else {
                    requestVar.token_ = singleFieldBuilderV3.build();
                }
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                requestVar.prompt_ = this.prompt_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                requestVar.source_ = this.source_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                requestVar.mask_ = this.mask_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                requestVar.apikey_ = this.apikey_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                requestVar.size_ = this.size_;
                requestVar.bitField0_ = i2;
                onBuilt();
                return requestVar;
            }

            /* renamed from: clone, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m221clone() {
                return (Builder) super.clone();
            }

            /* renamed from: setField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m234setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            /* renamed from: clearField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m212clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            /* renamed from: clearOneof, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m215clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            /* renamed from: setRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m236setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            /* renamed from: addRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m202addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m228mergeFrom(Message message) {
                if (message instanceof request) {
                    return mergeFrom((request) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(request requestVar) {
                if (requestVar == request.getDefaultInstance()) {
                    return this;
                }
                if (requestVar.hasVersion()) {
                    setVersion(requestVar.getVersion());
                }
                if (requestVar.hasOperation()) {
                    setOperation(requestVar.getOperation());
                }
                if (requestVar.hasToken()) {
                    mergeToken(requestVar.getToken());
                }
                if (requestVar.hasPrompt()) {
                    this.bitField0_ |= 8;
                    this.prompt_ = requestVar.prompt_;
                    onChanged();
                }
                if (requestVar.hasSource()) {
                    setSource(requestVar.getSource());
                }
                if (requestVar.hasMask()) {
                    setMask(requestVar.getMask());
                }
                if (requestVar.hasApikey()) {
                    this.bitField0_ |= 64;
                    this.apikey_ = requestVar.apikey_;
                    onChanged();
                }
                if (requestVar.hasSize()) {
                    this.bitField0_ |= 128;
                    this.size_ = requestVar.size_;
                    onChanged();
                }
                m232mergeUnknownFields(requestVar.unknownFields);
                onChanged();
                return this;
            }

            public final boolean isInitialized() {
                return hasOperation();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.appinventor.components.runtime.imagebot.ImageBotToken.request.Builder m229mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.google.appinventor.components.runtime.imagebot.ImageBotToken$request> r1 = com.google.appinventor.components.runtime.imagebot.ImageBotToken.request.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.appinventor.components.runtime.imagebot.ImageBotToken$request r3 = (com.google.appinventor.components.runtime.imagebot.ImageBotToken.request) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.google.appinventor.components.runtime.imagebot.ImageBotToken$request r4 = (com.google.appinventor.components.runtime.imagebot.ImageBotToken.request) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.mergeFrom(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.imagebot.ImageBotToken.request.Builder.m229mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.google.appinventor.components.runtime.imagebot.ImageBotToken$request$Builder");
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public long getVersion() {
                return this.version_;
            }

            public Builder setVersion(long j) {
                this.bitField0_ |= 1;
                this.version_ = j;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 1L;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public boolean hasOperation() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public OperationType getOperation() {
                OperationType operationTypeValueOf = OperationType.valueOf(this.operation_);
                return operationTypeValueOf == null ? OperationType.CREATE : operationTypeValueOf;
            }

            public Builder setOperation(OperationType operationType) {
                operationType.getClass();
                this.bitField0_ |= 2;
                this.operation_ = operationType.getNumber();
                onChanged();
                return this;
            }

            public Builder clearOperation() {
                this.bitField0_ &= -3;
                this.operation_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public token getToken() {
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    token tokenVar = this.token_;
                    return tokenVar == null ? token.getDefaultInstance() : tokenVar;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public Builder setToken(token tokenVar) {
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    tokenVar.getClass();
                    this.token_ = tokenVar;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(tokenVar);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setToken(token.Builder builder) {
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.token_ = builder.m297build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.m297build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder mergeToken(token tokenVar) {
                token tokenVar2;
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 4) == 4 && (tokenVar2 = this.token_) != null && tokenVar2 != token.getDefaultInstance()) {
                        this.token_ = token.newBuilder(this.token_).mergeFrom(tokenVar).m299buildPartial();
                    } else {
                        this.token_ = tokenVar;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(tokenVar);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder clearToken() {
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.token_ = null;
                    onChanged();
                } else {
                    singleFieldBuilderV3.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public token.Builder getTokenBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return getTokenFieldBuilder().getBuilder();
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public tokenOrBuilder getTokenOrBuilder() {
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (tokenOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                token tokenVar = this.token_;
                return tokenVar == null ? token.getDefaultInstance() : tokenVar;
            }

            private SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> getTokenFieldBuilder() {
                if (this.tokenBuilder_ == null) {
                    this.tokenBuilder_ = new SingleFieldBuilderV3<>(getToken(), getParentForChildren(), isClean());
                    this.token_ = null;
                }
                return this.tokenBuilder_;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public boolean hasPrompt() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public String getPrompt() {
                Object obj = this.prompt_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.prompt_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public ByteString getPromptBytes() {
                Object obj = this.prompt_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.prompt_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPrompt(String str) {
                str.getClass();
                this.bitField0_ |= 8;
                this.prompt_ = str;
                onChanged();
                return this;
            }

            public Builder clearPrompt() {
                this.bitField0_ &= -9;
                this.prompt_ = request.getDefaultInstance().getPrompt();
                onChanged();
                return this;
            }

            public Builder setPromptBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 8;
                this.prompt_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public boolean hasSource() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public ByteString getSource() {
                return this.source_;
            }

            public Builder setSource(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 16;
                this.source_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearSource() {
                this.bitField0_ &= -17;
                this.source_ = request.getDefaultInstance().getSource();
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public boolean hasMask() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public ByteString getMask() {
                return this.mask_;
            }

            public Builder setMask(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 32;
                this.mask_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearMask() {
                this.bitField0_ &= -33;
                this.mask_ = request.getDefaultInstance().getMask();
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public boolean hasApikey() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public String getApikey() {
                Object obj = this.apikey_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.apikey_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public ByteString getApikeyBytes() {
                Object obj = this.apikey_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.apikey_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setApikey(String str) {
                str.getClass();
                this.bitField0_ |= 64;
                this.apikey_ = str;
                onChanged();
                return this;
            }

            public Builder clearApikey() {
                this.bitField0_ &= -65;
                this.apikey_ = request.getDefaultInstance().getApikey();
                onChanged();
                return this;
            }

            public Builder setApikeyBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 64;
                this.apikey_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public boolean hasSize() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public String getSize() {
                Object obj = this.size_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.size_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.requestOrBuilder
            public ByteString getSizeBytes() {
                Object obj = this.size_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.size_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSize(String str) {
                str.getClass();
                this.bitField0_ |= 128;
                this.size_ = str;
                onChanged();
                return this;
            }

            public Builder clearSize() {
                this.bitField0_ &= -129;
                this.size_ = request.getDefaultInstance().getSize();
                onChanged();
                return this;
            }

            public Builder setSizeBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 128;
                this.size_ = byteString;
                onChanged();
                return this;
            }

            /* renamed from: setUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m238setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            /* renamed from: mergeUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m232mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }
        }

        public static request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<request> parser() {
            return PARSER;
        }

        public Parser<request> getParserForType() {
            return PARSER;
        }

        /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public request m194getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class response extends GeneratedMessageV3 implements responseOrBuilder {
        public static final int IMAGE_FIELD_NUMBER = 3;
        public static final int STATUS_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private ByteString image_;
        private byte memoizedIsInitialized;
        private long status_;
        private long version_;
        private static final response DEFAULT_INSTANCE = new response();

        @Deprecated
        public static final Parser<response> PARSER = new AbstractParser<response>() { // from class: com.google.appinventor.components.runtime.imagebot.ImageBotToken.response.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public response m247parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new response(codedInputStream, extensionRegistryLite, 0);
            }
        };

        public /* synthetic */ response(Builder builder) {
            this((GeneratedMessageV3.Builder<?>) builder);
        }

        public /* synthetic */ response(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, int i) {
            this(codedInputStream, extensionRegistryLite);
        }

        private response(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private response() {
            this.memoizedIsInitialized = (byte) -1;
            this.version_ = 1L;
            this.status_ = 0L;
            this.image_ = ByteString.EMPTY;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private response(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.bitField0_ |= 1;
                                this.version_ = codedInputStream.readUInt64();
                            } else if (tag == 16) {
                                this.bitField0_ |= 2;
                                this.status_ = codedInputStream.readUInt64();
                            } else if (tag != 26) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.bitField0_ |= 4;
                                this.image_ = codedInputStream.readBytes();
                            }
                        }
                        z = true;
                    } catch (IOException e) {
                        throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ImageBotToken.internal_static_response_descriptor;
        }

        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ImageBotToken.internal_static_response_fieldAccessorTable.ensureFieldAccessorsInitialized(response.class, Builder.class);
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
        public long getVersion() {
            return this.version_;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
        public boolean hasStatus() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
        public long getStatus() {
            return this.status_;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
        public boolean hasImage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
        public ByteString getImage() {
            return this.image_;
        }

        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt64(1, this.version_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(2, this.status_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, this.image_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int iComputeUInt64Size = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeUInt64Size(1, this.version_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeUInt64Size += CodedOutputStream.computeUInt64Size(2, this.status_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeUInt64Size += CodedOutputStream.computeBytesSize(3, this.image_);
            }
            int serializedSize = iComputeUInt64Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof response)) {
                return super.equals(obj);
            }
            response responseVar = (response) obj;
            boolean z = hasVersion() == responseVar.hasVersion();
            if (hasVersion()) {
                z = z && getVersion() == responseVar.getVersion();
            }
            boolean z2 = z && hasStatus() == responseVar.hasStatus();
            if (hasStatus()) {
                z2 = z2 && getStatus() == responseVar.getStatus();
            }
            boolean z3 = z2 && hasImage() == responseVar.hasImage();
            if (hasImage()) {
                z3 = z3 && getImage().equals(responseVar.getImage());
            }
            return z3 && this.unknownFields.equals(responseVar.unknownFields);
        }

        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int iHashCode = getDescriptorForType().hashCode() + 779;
            if (hasVersion()) {
                iHashCode = a.b(iHashCode, 37, 1, 53) + Internal.hashLong(getVersion());
            }
            if (hasStatus()) {
                iHashCode = a.b(iHashCode, 37, 2, 53) + Internal.hashLong(getStatus());
            }
            if (hasImage()) {
                iHashCode = a.b(iHashCode, 37, 3, 53) + getImage().hashCode();
            }
            int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        public static response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (response) PARSER.parseFrom(byteString);
        }

        public static response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (response) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (response) PARSER.parseFrom(bArr);
        }

        public static response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (response) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static response parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m244newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.m246toBuilder();
        }

        public static Builder newBuilder(response responseVar) {
            return DEFAULT_INSTANCE.m246toBuilder().mergeFrom(responseVar);
        }

        /* renamed from: toBuilder, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m246toBuilder() {
            int i = 0;
            return this == DEFAULT_INSTANCE ? new Builder(i) : new Builder(i).mergeFrom(this);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] */
        public Builder m243newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, 0);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements responseOrBuilder {
            private int bitField0_;
            private ByteString image_;
            private long status_;
            private long version_;

            public /* synthetic */ Builder(int i) {
                this();
            }

            public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, int i) {
                this(builderParent);
            }

            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ImageBotToken.internal_static_response_descriptor;
            }

            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ImageBotToken.internal_static_response_fieldAccessorTable.ensureFieldAccessorsInitialized(response.class, Builder.class);
            }

            private Builder() {
                this.version_ = 1L;
                this.image_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.version_ = 1L;
                this.image_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = response.alwaysUseFieldBuilders;
            }

            /* renamed from: clear, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m257clear() {
                super.clear();
                this.version_ = 1L;
                int i = this.bitField0_;
                this.status_ = 0L;
                this.bitField0_ = i & (-4);
                this.image_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return ImageBotToken.internal_static_response_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public response m270getDefaultInstanceForType() {
                return response.getDefaultInstance();
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: com.google.protobuf.UninitializedMessageException */
            /* renamed from: build, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public response m251build() throws UninitializedMessageException {
                response responseVarM253buildPartial = m253buildPartial();
                if (responseVarM253buildPartial.isInitialized()) {
                    return responseVarM253buildPartial;
                }
                throw newUninitializedMessageException(responseVarM253buildPartial);
            }

            /* renamed from: buildPartial, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public response m253buildPartial() {
                response responseVar = new response(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                responseVar.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                responseVar.status_ = this.status_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                responseVar.image_ = this.image_;
                responseVar.bitField0_ = i2;
                onBuilt();
                return responseVar;
            }

            /* renamed from: clone, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m268clone() {
                return (Builder) super.clone();
            }

            /* renamed from: setField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m281setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            /* renamed from: clearField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m259clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            /* renamed from: clearOneof, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m262clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            /* renamed from: setRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m283setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            /* renamed from: addRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m249addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m275mergeFrom(Message message) {
                if (message instanceof response) {
                    return mergeFrom((response) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(response responseVar) {
                if (responseVar == response.getDefaultInstance()) {
                    return this;
                }
                if (responseVar.hasVersion()) {
                    setVersion(responseVar.getVersion());
                }
                if (responseVar.hasStatus()) {
                    setStatus(responseVar.getStatus());
                }
                if (responseVar.hasImage()) {
                    setImage(responseVar.getImage());
                }
                m279mergeUnknownFields(responseVar.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.appinventor.components.runtime.imagebot.ImageBotToken.response.Builder m276mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.google.appinventor.components.runtime.imagebot.ImageBotToken$response> r1 = com.google.appinventor.components.runtime.imagebot.ImageBotToken.response.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.appinventor.components.runtime.imagebot.ImageBotToken$response r3 = (com.google.appinventor.components.runtime.imagebot.ImageBotToken.response) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.google.appinventor.components.runtime.imagebot.ImageBotToken$response r4 = (com.google.appinventor.components.runtime.imagebot.ImageBotToken.response) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.mergeFrom(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.imagebot.ImageBotToken.response.Builder.m276mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.google.appinventor.components.runtime.imagebot.ImageBotToken$response$Builder");
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
            public long getVersion() {
                return this.version_;
            }

            public Builder setVersion(long j) {
                this.bitField0_ |= 1;
                this.version_ = j;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 1L;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
            public boolean hasStatus() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
            public long getStatus() {
                return this.status_;
            }

            public Builder setStatus(long j) {
                this.bitField0_ |= 2;
                this.status_ = j;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -3;
                this.status_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
            public boolean hasImage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.appinventor.components.runtime.imagebot.ImageBotToken.responseOrBuilder
            public ByteString getImage() {
                return this.image_;
            }

            public Builder setImage(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 4;
                this.image_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearImage() {
                this.bitField0_ &= -5;
                this.image_ = response.getDefaultInstance().getImage();
                onChanged();
                return this;
            }

            /* renamed from: setUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m285setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            /* renamed from: mergeUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m279mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }
        }

        public static response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<response> parser() {
            return PARSER;
        }

        public Parser<response> getParserForType() {
            return PARSER;
        }

        /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public response m241getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000bimage.proto\"D\n\bunsigned\u0012\r\n\u0005huuid\u0018\u0001 \u0001(\t\u0012\u0012\n\u0007version\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\"i\n\u0005token\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0010\n\u0005keyid\u0018\u0002 \u0001(\u0004:\u00011\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\u0012\u0010\n\bunsigned\u0018\u0004 \u0001(\f\u0012\u0011\n\tsignature\u0018\u0005 \u0001(\f\"Ò\u0001\n\u0007request\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012)\n\toperation\u0018\u0002 \u0002(\u000e2\u0016.request.OperationType\u0012\u0015\n\u0005token\u0018\u0003 \u0001(\u000b2\u0006.token\u0012\u000e\n\u0006prompt\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006source\u0018\u0005 \u0001(\f\u0012\f\n\u0004mask\u0018\u0006 \u0001(\f\u0012\u000e\n\u0006apikey\u0018\u0007 \u0001(\t\u0012\f\n\u0004size\u0018\b \u0001(\t\"%\n\rOperationType\u0012\n\n\u0006CREATE\u0010\u0000\u0012\b\n\u0004EDI", "T\u0010\u0001\"@\n\bresponse\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0011\n\u0006status\u0018\u0002 \u0001(\u0004:\u00010\u0012\r\n\u0005image\u0018\u0003 \u0001(\fBC\n2com.google.appinventor.components.runtime.imagebotB\rImageBotToken"}, new Descriptors.FileDescriptor[0], new Descriptors.FileDescriptor.InternalDescriptorAssigner() { // from class: com.google.appinventor.components.runtime.imagebot.ImageBotToken.1
            public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
                ImageBotToken.descriptor = fileDescriptor;
                return null;
            }
        });
        Descriptors.Descriptor descriptor2 = (Descriptors.Descriptor) getDescriptor().getMessageTypes().get(0);
        internal_static_unsigned_descriptor = descriptor2;
        internal_static_unsigned_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Huuid", "Version", "Generation"});
        Descriptors.Descriptor descriptor3 = (Descriptors.Descriptor) getDescriptor().getMessageTypes().get(1);
        internal_static_token_descriptor = descriptor3;
        internal_static_token_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Version", "Keyid", "Generation", "Unsigned", "Signature"});
        Descriptors.Descriptor descriptor4 = (Descriptors.Descriptor) getDescriptor().getMessageTypes().get(2);
        internal_static_request_descriptor = descriptor4;
        internal_static_request_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Version", "Operation", "Token", "Prompt", "Source", "Mask", "Apikey", "Size"});
        Descriptors.Descriptor descriptor5 = (Descriptors.Descriptor) getDescriptor().getMessageTypes().get(3);
        internal_static_response_descriptor = descriptor5;
        internal_static_response_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"Version", "Status", Component.LISTVIEW_KEY_IMAGE});
    }
}
