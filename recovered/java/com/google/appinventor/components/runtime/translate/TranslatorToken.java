package com.google.appinventor.components.runtime.translate;

import _COROUTINE.a;
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
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class TranslatorToken {
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
        String getLanguagecode();

        ByteString getLanguagecodeBytes();

        String getSourcelanguage();

        ByteString getSourcelanguageBytes();

        String getTargetlanguage();

        ByteString getTargetlanguageBytes();

        token getToken();

        tokenOrBuilder getTokenOrBuilder();

        String getTotranslate();

        ByteString getTotranslateBytes();

        long getVersion();

        boolean hasLanguagecode();

        boolean hasSourcelanguage();

        boolean hasTargetlanguage();

        boolean hasToken();

        boolean hasTotranslate();

        boolean hasVersion();
    }

    public interface responseOrBuilder extends MessageOrBuilder {
        long getStatus();

        String getTranslated();

        ByteString getTranslatedBytes();

        long getVersion();

        boolean hasStatus();

        boolean hasTranslated();

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

    private TranslatorToken() {
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
        public static final Parser<unsigned> PARSER = new AbstractParser<unsigned>() { // from class: com.google.appinventor.components.runtime.translate.TranslatorToken.unsigned.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public unsigned m523parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
            return TranslatorToken.internal_static_unsigned_descriptor;
        }

        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TranslatorToken.internal_static_unsigned_fieldAccessorTable.ensureFieldAccessorsInitialized(unsigned.class, Builder.class);
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
        public boolean hasHuuid() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
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

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
        public ByteString getHuuidBytes() {
            Object obj = this.huuid_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.huuid_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
        public long getVersion() {
            return this.version_;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
        public boolean hasGeneration() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
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
        public Builder m520newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.m522toBuilder();
        }

        public static Builder newBuilder(unsigned unsignedVar) {
            return DEFAULT_INSTANCE.m522toBuilder().mergeFrom(unsignedVar);
        }

        /* renamed from: toBuilder, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m522toBuilder() {
            int i = 0;
            return this == DEFAULT_INSTANCE ? new Builder(i) : new Builder(i).mergeFrom(this);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] */
        public Builder m519newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
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
                return TranslatorToken.internal_static_unsigned_descriptor;
            }

            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TranslatorToken.internal_static_unsigned_fieldAccessorTable.ensureFieldAccessorsInitialized(unsigned.class, Builder.class);
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
            public Builder m533clear() {
                super.clear();
                this.huuid_ = "";
                int i = this.bitField0_;
                this.version_ = 0L;
                this.generation_ = 0L;
                this.bitField0_ = i & (-8);
                return this;
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return TranslatorToken.internal_static_unsigned_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public unsigned m546getDefaultInstanceForType() {
                return unsigned.getDefaultInstance();
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: com.google.protobuf.UninitializedMessageException */
            /* renamed from: build, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public unsigned m527build() throws UninitializedMessageException {
                unsigned unsignedVarM529buildPartial = m529buildPartial();
                if (unsignedVarM529buildPartial.isInitialized()) {
                    return unsignedVarM529buildPartial;
                }
                throw newUninitializedMessageException(unsignedVarM529buildPartial);
            }

            /* renamed from: buildPartial, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public unsigned m529buildPartial() {
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
            public Builder m544clone() {
                return (Builder) super.clone();
            }

            /* renamed from: setField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m557setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            /* renamed from: clearField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m535clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            /* renamed from: clearOneof, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m538clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            /* renamed from: setRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m559setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            /* renamed from: addRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m525addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m551mergeFrom(Message message) {
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
                m555mergeUnknownFields(unsignedVar.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.appinventor.components.runtime.translate.TranslatorToken.unsigned.Builder m552mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.google.appinventor.components.runtime.translate.TranslatorToken$unsigned> r1 = com.google.appinventor.components.runtime.translate.TranslatorToken.unsigned.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.appinventor.components.runtime.translate.TranslatorToken$unsigned r3 = (com.google.appinventor.components.runtime.translate.TranslatorToken.unsigned) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.google.appinventor.components.runtime.translate.TranslatorToken$unsigned r4 = (com.google.appinventor.components.runtime.translate.TranslatorToken.unsigned) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.translate.TranslatorToken.unsigned.Builder.m552mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.google.appinventor.components.runtime.translate.TranslatorToken$unsigned$Builder");
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
            public boolean hasHuuid() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
            public boolean hasGeneration() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.unsignedOrBuilder
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
            public final Builder m561setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            /* renamed from: mergeUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m555mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
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
        public unsigned m517getDefaultInstanceForType() {
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
        public static final Parser<token> PARSER = new AbstractParser<token>() { // from class: com.google.appinventor.components.runtime.translate.TranslatorToken.token.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public token m477parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
            return TranslatorToken.internal_static_token_descriptor;
        }

        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TranslatorToken.internal_static_token_fieldAccessorTable.ensureFieldAccessorsInitialized(token.class, Builder.class);
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
        public long getVersion() {
            return this.version_;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
        public boolean hasKeyid() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
        public long getKeyid() {
            return this.keyid_;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
        public boolean hasGeneration() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
        public long getGeneration() {
            return this.generation_;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
        public boolean hasUnsigned() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
        public ByteString getUnsigned() {
            return this.unsigned_;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
        public boolean hasSignature() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
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
        public Builder m474newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.m476toBuilder();
        }

        public static Builder newBuilder(token tokenVar) {
            return DEFAULT_INSTANCE.m476toBuilder().mergeFrom(tokenVar);
        }

        /* renamed from: toBuilder, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m476toBuilder() {
            int i = 0;
            return this == DEFAULT_INSTANCE ? new Builder(i) : new Builder(i).mergeFrom(this);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] */
        public Builder m473newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
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
                return TranslatorToken.internal_static_token_descriptor;
            }

            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TranslatorToken.internal_static_token_fieldAccessorTable.ensureFieldAccessorsInitialized(token.class, Builder.class);
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
            public Builder m487clear() {
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
                return TranslatorToken.internal_static_token_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public token m500getDefaultInstanceForType() {
                return token.getDefaultInstance();
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: com.google.protobuf.UninitializedMessageException */
            /* renamed from: build, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public token m481build() throws UninitializedMessageException {
                token tokenVarM483buildPartial = m483buildPartial();
                if (tokenVarM483buildPartial.isInitialized()) {
                    return tokenVarM483buildPartial;
                }
                throw newUninitializedMessageException(tokenVarM483buildPartial);
            }

            /* renamed from: buildPartial, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public token m483buildPartial() {
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
            public Builder m498clone() {
                return (Builder) super.clone();
            }

            /* renamed from: setField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m511setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            /* renamed from: clearField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m489clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            /* renamed from: clearOneof, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m492clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            /* renamed from: setRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m513setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            /* renamed from: addRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m479addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m505mergeFrom(Message message) {
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
                m509mergeUnknownFields(tokenVar.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.appinventor.components.runtime.translate.TranslatorToken.token.Builder m506mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.google.appinventor.components.runtime.translate.TranslatorToken$token> r1 = com.google.appinventor.components.runtime.translate.TranslatorToken.token.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.appinventor.components.runtime.translate.TranslatorToken$token r3 = (com.google.appinventor.components.runtime.translate.TranslatorToken.token) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.google.appinventor.components.runtime.translate.TranslatorToken$token r4 = (com.google.appinventor.components.runtime.translate.TranslatorToken.token) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.translate.TranslatorToken.token.Builder.m506mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.google.appinventor.components.runtime.translate.TranslatorToken$token$Builder");
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
            public boolean hasKeyid() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
            public boolean hasGeneration() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
            public boolean hasUnsigned() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
            public boolean hasSignature() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.tokenOrBuilder
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
            public final Builder m515setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            /* renamed from: mergeUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m509mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
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
        public token m471getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class request extends GeneratedMessageV3 implements requestOrBuilder {
        public static final int LANGUAGECODE_FIELD_NUMBER = 4;
        public static final int SOURCELANGUAGE_FIELD_NUMBER = 5;
        public static final int TARGETLANGUAGE_FIELD_NUMBER = 6;
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int TOTRANSLATE_FIELD_NUMBER = 3;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object languagecode_;
        private byte memoizedIsInitialized;
        private volatile Object sourcelanguage_;
        private volatile Object targetlanguage_;
        private token token_;
        private volatile Object totranslate_;
        private long version_;
        private static final request DEFAULT_INSTANCE = new request();

        @Deprecated
        public static final Parser<request> PARSER = new AbstractParser<request>() { // from class: com.google.appinventor.components.runtime.translate.TranslatorToken.request.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public request m385parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
            this.totranslate_ = "";
            this.languagecode_ = "";
            this.sourcelanguage_ = "";
            this.targetlanguage_ = "";
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
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.bitField0_ |= 1;
                                this.version_ = codedInputStream.readUInt64();
                            } else if (tag == 18) {
                                token.Builder builderM476toBuilder = (this.bitField0_ & 2) == 2 ? this.token_.m476toBuilder() : null;
                                token tokenVar = (token) codedInputStream.readMessage(token.PARSER, extensionRegistryLite);
                                this.token_ = tokenVar;
                                if (builderM476toBuilder != null) {
                                    builderM476toBuilder.mergeFrom(tokenVar);
                                    this.token_ = builderM476toBuilder.m483buildPartial();
                                }
                                this.bitField0_ |= 2;
                            } else if (tag == 26) {
                                ByteString bytes = codedInputStream.readBytes();
                                this.bitField0_ |= 4;
                                this.totranslate_ = bytes;
                            } else if (tag == 34) {
                                ByteString bytes2 = codedInputStream.readBytes();
                                this.bitField0_ |= 8;
                                this.languagecode_ = bytes2;
                            } else if (tag == 42) {
                                ByteString bytes3 = codedInputStream.readBytes();
                                this.bitField0_ |= 16;
                                this.sourcelanguage_ = bytes3;
                            } else if (tag != 50) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                ByteString bytes4 = codedInputStream.readBytes();
                                this.bitField0_ |= 32;
                                this.targetlanguage_ = bytes4;
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
            return TranslatorToken.internal_static_request_descriptor;
        }

        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TranslatorToken.internal_static_request_fieldAccessorTable.ensureFieldAccessorsInitialized(request.class, Builder.class);
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public long getVersion() {
            return this.version_;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public token getToken() {
            token tokenVar = this.token_;
            return tokenVar == null ? token.getDefaultInstance() : tokenVar;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public tokenOrBuilder getTokenOrBuilder() {
            token tokenVar = this.token_;
            return tokenVar == null ? token.getDefaultInstance() : tokenVar;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public boolean hasTotranslate() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public String getTotranslate() {
            Object obj = this.totranslate_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.totranslate_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public ByteString getTotranslateBytes() {
            Object obj = this.totranslate_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.totranslate_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public boolean hasLanguagecode() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public String getLanguagecode() {
            Object obj = this.languagecode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.languagecode_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public ByteString getLanguagecodeBytes() {
            Object obj = this.languagecode_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.languagecode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public boolean hasSourcelanguage() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public String getSourcelanguage() {
            Object obj = this.sourcelanguage_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sourcelanguage_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public ByteString getSourcelanguageBytes() {
            Object obj = this.sourcelanguage_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sourcelanguage_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public boolean hasTargetlanguage() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public String getTargetlanguage() {
            Object obj = this.targetlanguage_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.targetlanguage_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
        public ByteString getTargetlanguageBytes() {
            Object obj = this.targetlanguage_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.targetlanguage_ = byteStringCopyFromUtf8;
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
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt64(1, this.version_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(2, getToken());
            }
            if ((this.bitField0_ & 4) == 4) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.totranslate_);
            }
            if ((this.bitField0_ & 8) == 8) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.languagecode_);
            }
            if ((this.bitField0_ & 16) == 16) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.sourcelanguage_);
            }
            if ((this.bitField0_ & 32) == 32) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.targetlanguage_);
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
                iComputeUInt64Size += CodedOutputStream.computeMessageSize(2, getToken());
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeUInt64Size += GeneratedMessageV3.computeStringSize(3, this.totranslate_);
            }
            if ((this.bitField0_ & 8) == 8) {
                iComputeUInt64Size += GeneratedMessageV3.computeStringSize(4, this.languagecode_);
            }
            if ((this.bitField0_ & 16) == 16) {
                iComputeUInt64Size += GeneratedMessageV3.computeStringSize(5, this.sourcelanguage_);
            }
            if ((this.bitField0_ & 32) == 32) {
                iComputeUInt64Size += GeneratedMessageV3.computeStringSize(6, this.targetlanguage_);
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
            boolean z2 = z && hasToken() == requestVar.hasToken();
            if (hasToken()) {
                z2 = z2 && getToken().equals(requestVar.getToken());
            }
            boolean z3 = z2 && hasTotranslate() == requestVar.hasTotranslate();
            if (hasTotranslate()) {
                z3 = z3 && getTotranslate().equals(requestVar.getTotranslate());
            }
            boolean z4 = z3 && hasLanguagecode() == requestVar.hasLanguagecode();
            if (hasLanguagecode()) {
                z4 = z4 && getLanguagecode().equals(requestVar.getLanguagecode());
            }
            boolean z5 = z4 && hasSourcelanguage() == requestVar.hasSourcelanguage();
            if (hasSourcelanguage()) {
                z5 = z5 && getSourcelanguage().equals(requestVar.getSourcelanguage());
            }
            boolean z6 = z5 && hasTargetlanguage() == requestVar.hasTargetlanguage();
            if (hasTargetlanguage()) {
                z6 = z6 && getTargetlanguage().equals(requestVar.getTargetlanguage());
            }
            return z6 && this.unknownFields.equals(requestVar.unknownFields);
        }

        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int iHashCode = getDescriptorForType().hashCode() + 779;
            if (hasVersion()) {
                iHashCode = a.b(iHashCode, 37, 1, 53) + Internal.hashLong(getVersion());
            }
            if (hasToken()) {
                iHashCode = a.b(iHashCode, 37, 2, 53) + getToken().hashCode();
            }
            if (hasTotranslate()) {
                iHashCode = a.b(iHashCode, 37, 3, 53) + getTotranslate().hashCode();
            }
            if (hasLanguagecode()) {
                iHashCode = a.b(iHashCode, 37, 4, 53) + getLanguagecode().hashCode();
            }
            if (hasSourcelanguage()) {
                iHashCode = a.b(iHashCode, 37, 5, 53) + getSourcelanguage().hashCode();
            }
            if (hasTargetlanguage()) {
                iHashCode = a.b(iHashCode, 37, 6, 53) + getTargetlanguage().hashCode();
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
        public Builder m382newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.m384toBuilder();
        }

        public static Builder newBuilder(request requestVar) {
            return DEFAULT_INSTANCE.m384toBuilder().mergeFrom(requestVar);
        }

        /* renamed from: toBuilder, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m384toBuilder() {
            int i = 0;
            return this == DEFAULT_INSTANCE ? new Builder(i) : new Builder(i).mergeFrom(this);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] */
        public Builder m381newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, 0);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements requestOrBuilder {
            private int bitField0_;
            private Object languagecode_;
            private Object sourcelanguage_;
            private Object targetlanguage_;
            private SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> tokenBuilder_;
            private token token_;
            private Object totranslate_;
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
                return TranslatorToken.internal_static_request_descriptor;
            }

            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TranslatorToken.internal_static_request_fieldAccessorTable.ensureFieldAccessorsInitialized(request.class, Builder.class);
            }

            private Builder() {
                this.version_ = 1L;
                this.token_ = null;
                this.totranslate_ = "";
                this.languagecode_ = "";
                this.sourcelanguage_ = "";
                this.targetlanguage_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.version_ = 1L;
                this.token_ = null;
                this.totranslate_ = "";
                this.languagecode_ = "";
                this.sourcelanguage_ = "";
                this.targetlanguage_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (request.alwaysUseFieldBuilders) {
                    getTokenFieldBuilder();
                }
            }

            /* renamed from: clear, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m395clear() {
                super.clear();
                this.version_ = 1L;
                this.bitField0_ &= -2;
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.token_ = null;
                } else {
                    singleFieldBuilderV3.clear();
                }
                int i = this.bitField0_;
                this.totranslate_ = "";
                this.languagecode_ = "";
                this.sourcelanguage_ = "";
                this.targetlanguage_ = "";
                this.bitField0_ = i & (-63);
                return this;
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return TranslatorToken.internal_static_request_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public request m408getDefaultInstanceForType() {
                return request.getDefaultInstance();
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: com.google.protobuf.UninitializedMessageException */
            /* renamed from: build, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public request m389build() throws UninitializedMessageException {
                request requestVarM391buildPartial = m391buildPartial();
                if (requestVarM391buildPartial.isInitialized()) {
                    return requestVarM391buildPartial;
                }
                throw newUninitializedMessageException(requestVarM391buildPartial);
            }

            /* renamed from: buildPartial, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public request m391buildPartial() {
                request requestVar = new request(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                requestVar.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    requestVar.token_ = this.token_;
                } else {
                    requestVar.token_ = singleFieldBuilderV3.build();
                }
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                requestVar.totranslate_ = this.totranslate_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                requestVar.languagecode_ = this.languagecode_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                requestVar.sourcelanguage_ = this.sourcelanguage_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                requestVar.targetlanguage_ = this.targetlanguage_;
                requestVar.bitField0_ = i2;
                onBuilt();
                return requestVar;
            }

            /* renamed from: clone, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m406clone() {
                return (Builder) super.clone();
            }

            /* renamed from: setField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m419setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            /* renamed from: clearField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m397clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            /* renamed from: clearOneof, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m400clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            /* renamed from: setRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m421setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            /* renamed from: addRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m387addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m413mergeFrom(Message message) {
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
                if (requestVar.hasToken()) {
                    mergeToken(requestVar.getToken());
                }
                if (requestVar.hasTotranslate()) {
                    this.bitField0_ |= 4;
                    this.totranslate_ = requestVar.totranslate_;
                    onChanged();
                }
                if (requestVar.hasLanguagecode()) {
                    this.bitField0_ |= 8;
                    this.languagecode_ = requestVar.languagecode_;
                    onChanged();
                }
                if (requestVar.hasSourcelanguage()) {
                    this.bitField0_ |= 16;
                    this.sourcelanguage_ = requestVar.sourcelanguage_;
                    onChanged();
                }
                if (requestVar.hasTargetlanguage()) {
                    this.bitField0_ |= 32;
                    this.targetlanguage_ = requestVar.targetlanguage_;
                    onChanged();
                }
                m417mergeUnknownFields(requestVar.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.appinventor.components.runtime.translate.TranslatorToken.request.Builder m414mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.google.appinventor.components.runtime.translate.TranslatorToken$request> r1 = com.google.appinventor.components.runtime.translate.TranslatorToken.request.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.appinventor.components.runtime.translate.TranslatorToken$request r3 = (com.google.appinventor.components.runtime.translate.TranslatorToken.request) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.google.appinventor.components.runtime.translate.TranslatorToken$request r4 = (com.google.appinventor.components.runtime.translate.TranslatorToken.request) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.translate.TranslatorToken.request.Builder.m414mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.google.appinventor.components.runtime.translate.TranslatorToken$request$Builder");
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
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
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setToken(token.Builder builder) {
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.token_ = builder.m481build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.m481build());
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder mergeToken(token tokenVar) {
                token tokenVar2;
                SingleFieldBuilderV3<token, token.Builder, tokenOrBuilder> singleFieldBuilderV3 = this.tokenBuilder_;
                if (singleFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 2) == 2 && (tokenVar2 = this.token_) != null && tokenVar2 != token.getDefaultInstance()) {
                        this.token_ = token.newBuilder(this.token_).mergeFrom(tokenVar).m483buildPartial();
                    } else {
                        this.token_ = tokenVar;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(tokenVar);
                }
                this.bitField0_ |= 2;
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
                this.bitField0_ &= -3;
                return this;
            }

            public token.Builder getTokenBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return getTokenFieldBuilder().getBuilder();
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public boolean hasTotranslate() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public String getTotranslate() {
                Object obj = this.totranslate_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.totranslate_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public ByteString getTotranslateBytes() {
                Object obj = this.totranslate_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.totranslate_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setTotranslate(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.totranslate_ = str;
                onChanged();
                return this;
            }

            public Builder clearTotranslate() {
                this.bitField0_ &= -5;
                this.totranslate_ = request.getDefaultInstance().getTotranslate();
                onChanged();
                return this;
            }

            public Builder setTotranslateBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 4;
                this.totranslate_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public boolean hasLanguagecode() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public String getLanguagecode() {
                Object obj = this.languagecode_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.languagecode_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public ByteString getLanguagecodeBytes() {
                Object obj = this.languagecode_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.languagecode_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setLanguagecode(String str) {
                str.getClass();
                this.bitField0_ |= 8;
                this.languagecode_ = str;
                onChanged();
                return this;
            }

            public Builder clearLanguagecode() {
                this.bitField0_ &= -9;
                this.languagecode_ = request.getDefaultInstance().getLanguagecode();
                onChanged();
                return this;
            }

            public Builder setLanguagecodeBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 8;
                this.languagecode_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public boolean hasSourcelanguage() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public String getSourcelanguage() {
                Object obj = this.sourcelanguage_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.sourcelanguage_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public ByteString getSourcelanguageBytes() {
                Object obj = this.sourcelanguage_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sourcelanguage_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSourcelanguage(String str) {
                str.getClass();
                this.bitField0_ |= 16;
                this.sourcelanguage_ = str;
                onChanged();
                return this;
            }

            public Builder clearSourcelanguage() {
                this.bitField0_ &= -17;
                this.sourcelanguage_ = request.getDefaultInstance().getSourcelanguage();
                onChanged();
                return this;
            }

            public Builder setSourcelanguageBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 16;
                this.sourcelanguage_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public boolean hasTargetlanguage() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public String getTargetlanguage() {
                Object obj = this.targetlanguage_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.targetlanguage_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.requestOrBuilder
            public ByteString getTargetlanguageBytes() {
                Object obj = this.targetlanguage_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.targetlanguage_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setTargetlanguage(String str) {
                str.getClass();
                this.bitField0_ |= 32;
                this.targetlanguage_ = str;
                onChanged();
                return this;
            }

            public Builder clearTargetlanguage() {
                this.bitField0_ &= -33;
                this.targetlanguage_ = request.getDefaultInstance().getTargetlanguage();
                onChanged();
                return this;
            }

            public Builder setTargetlanguageBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 32;
                this.targetlanguage_ = byteString;
                onChanged();
                return this;
            }

            /* renamed from: setUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m423setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            /* renamed from: mergeUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m417mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
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
        public request m379getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static final class response extends GeneratedMessageV3 implements responseOrBuilder {
        private static final response DEFAULT_INSTANCE = new response();

        @Deprecated
        public static final Parser<response> PARSER = new AbstractParser<response>() { // from class: com.google.appinventor.components.runtime.translate.TranslatorToken.response.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public response m431parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new response(codedInputStream, extensionRegistryLite, 0);
            }
        };
        public static final int STATUS_FIELD_NUMBER = 2;
        public static final int TRANSLATED_FIELD_NUMBER = 3;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private long status_;
        private volatile Object translated_;
        private long version_;

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
            this.translated_ = "";
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
                                ByteString bytes = codedInputStream.readBytes();
                                this.bitField0_ |= 4;
                                this.translated_ = bytes;
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
            return TranslatorToken.internal_static_response_descriptor;
        }

        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TranslatorToken.internal_static_response_fieldAccessorTable.ensureFieldAccessorsInitialized(response.class, Builder.class);
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
        public long getVersion() {
            return this.version_;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
        public boolean hasStatus() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
        public long getStatus() {
            return this.status_;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
        public boolean hasTranslated() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
        public String getTranslated() {
            Object obj = this.translated_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.translated_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
        public ByteString getTranslatedBytes() {
            Object obj = this.translated_;
            if (obj instanceof String) {
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.translated_ = byteStringCopyFromUtf8;
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
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.translated_);
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
                iComputeUInt64Size += GeneratedMessageV3.computeStringSize(3, this.translated_);
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
            boolean z3 = z2 && hasTranslated() == responseVar.hasTranslated();
            if (hasTranslated()) {
                z3 = z3 && getTranslated().equals(responseVar.getTranslated());
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
            if (hasTranslated()) {
                iHashCode = a.b(iHashCode, 37, 3, 53) + getTranslated().hashCode();
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
        public Builder m428newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.m430toBuilder();
        }

        public static Builder newBuilder(response responseVar) {
            return DEFAULT_INSTANCE.m430toBuilder().mergeFrom(responseVar);
        }

        /* renamed from: toBuilder, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m430toBuilder() {
            int i = 0;
            return this == DEFAULT_INSTANCE ? new Builder(i) : new Builder(i).mergeFrom(this);
        }

        /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] */
        public Builder m427newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent, 0);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements responseOrBuilder {
            private int bitField0_;
            private long status_;
            private Object translated_;
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
                return TranslatorToken.internal_static_response_descriptor;
            }

            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return TranslatorToken.internal_static_response_fieldAccessorTable.ensureFieldAccessorsInitialized(response.class, Builder.class);
            }

            private Builder() {
                this.version_ = 1L;
                this.translated_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.version_ = 1L;
                this.translated_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = response.alwaysUseFieldBuilders;
            }

            /* renamed from: clear, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m441clear() {
                super.clear();
                this.version_ = 1L;
                int i = this.bitField0_;
                this.status_ = 0L;
                this.translated_ = "";
                this.bitField0_ = i & (-8);
                return this;
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return TranslatorToken.internal_static_response_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public response m454getDefaultInstanceForType() {
                return response.getDefaultInstance();
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: com.google.protobuf.UninitializedMessageException */
            /* renamed from: build, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public response m435build() throws UninitializedMessageException {
                response responseVarM437buildPartial = m437buildPartial();
                if (responseVarM437buildPartial.isInitialized()) {
                    return responseVarM437buildPartial;
                }
                throw newUninitializedMessageException(responseVarM437buildPartial);
            }

            /* renamed from: buildPartial, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public response m437buildPartial() {
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
                responseVar.translated_ = this.translated_;
                responseVar.bitField0_ = i2;
                onBuilt();
                return responseVar;
            }

            /* renamed from: clone, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m452clone() {
                return (Builder) super.clone();
            }

            /* renamed from: setField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m465setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            /* renamed from: clearField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m443clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            /* renamed from: clearOneof, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m446clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            /* renamed from: setRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m467setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            /* renamed from: addRepeatedField, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m433addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m459mergeFrom(Message message) {
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
                if (responseVar.hasTranslated()) {
                    this.bitField0_ |= 4;
                    this.translated_ = responseVar.translated_;
                    onChanged();
                }
                m463mergeUnknownFields(responseVar.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            /* renamed from: mergeFrom, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.appinventor.components.runtime.translate.TranslatorToken.response.Builder m460mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser<com.google.appinventor.components.runtime.translate.TranslatorToken$response> r1 = com.google.appinventor.components.runtime.translate.TranslatorToken.response.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.appinventor.components.runtime.translate.TranslatorToken$response r3 = (com.google.appinventor.components.runtime.translate.TranslatorToken.response) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
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
                    com.google.appinventor.components.runtime.translate.TranslatorToken$response r4 = (com.google.appinventor.components.runtime.translate.TranslatorToken.response) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.translate.TranslatorToken.response.Builder.m460mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.google.appinventor.components.runtime.translate.TranslatorToken$response$Builder");
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
            public boolean hasStatus() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
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

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
            public boolean hasTranslated() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
            public String getTranslated() {
                Object obj = this.translated_;
                if (!(obj instanceof String)) {
                    ByteString byteString = (ByteString) obj;
                    String stringUtf8 = byteString.toStringUtf8();
                    if (byteString.isValidUtf8()) {
                        this.translated_ = stringUtf8;
                    }
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.google.appinventor.components.runtime.translate.TranslatorToken.responseOrBuilder
            public ByteString getTranslatedBytes() {
                Object obj = this.translated_;
                if (obj instanceof String) {
                    ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.translated_ = byteStringCopyFromUtf8;
                    return byteStringCopyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setTranslated(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.translated_ = str;
                onChanged();
                return this;
            }

            public Builder clearTranslated() {
                this.bitField0_ &= -5;
                this.translated_ = response.getDefaultInstance().getTranslated();
                onChanged();
                return this;
            }

            public Builder setTranslatedBytes(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 4;
                this.translated_ = byteString;
                onChanged();
                return this;
            }

            /* renamed from: setUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m469setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            /* renamed from: mergeUnknownFields, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public final Builder m463mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
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
        public response m425getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\btr.proto\"D\n\bunsigned\u0012\r\n\u0005huuid\u0018\u0001 \u0001(\t\u0012\u0012\n\u0007version\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\"i\n\u0005token\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0010\n\u0005keyid\u0018\u0002 \u0001(\u0004:\u00011\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\u0012\u0010\n\bunsigned\u0018\u0004 \u0001(\f\u0012\u0011\n\tsignature\u0018\u0005 \u0001(\f\"\u008f\u0001\n\u0007request\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0015\n\u0005token\u0018\u0002 \u0001(\u000b2\u0006.token\u0012\u0013\n\u000btotranslate\u0018\u0003 \u0001(\t\u0012\u0014\n\flanguagecode\u0018\u0004 \u0001(\t\u0012\u0016\n\u000esourcelanguage\u0018\u0005 \u0001(\t\u0012\u0016\n\u000etargetlanguage\u0018\u0006 \u0001(\t\"E\n\bresponse\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0011\n\u0006status\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0012\n\ntranslated\u0018\u0003", " \u0001(\tBF\n3com.google.appinventor.components.runtime.translateB\u000fTranslatorToken"}, new Descriptors.FileDescriptor[0], new Descriptors.FileDescriptor.InternalDescriptorAssigner() { // from class: com.google.appinventor.components.runtime.translate.TranslatorToken.1
            public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
                TranslatorToken.descriptor = fileDescriptor;
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
        internal_static_request_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Version", "Token", "Totranslate", "Languagecode", "Sourcelanguage", "Targetlanguage"});
        Descriptors.Descriptor descriptor5 = (Descriptors.Descriptor) getDescriptor().getMessageTypes().get(3);
        internal_static_response_descriptor = descriptor5;
        internal_static_response_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"Version", "Status", "Translated"});
    }
}
