package kotlin.text;

import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.9")
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0004\u001a\u001b\u001c\u0019B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, d2 = {"Lkotlin/text/HexFormat;", "", "", "upperCase", "Lkotlin/text/HexFormat$BytesHexFormat;", "bytes", "Lkotlin/text/HexFormat$NumberHexFormat;", "number", "<init>", "(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V", "", "toString", "()Ljava/lang/String;", "a", "Z", "getUpperCase", "()Z", "b", "Lkotlin/text/HexFormat$BytesHexFormat;", "getBytes", "()Lkotlin/text/HexFormat$BytesHexFormat;", "c", "Lkotlin/text/HexFormat$NumberHexFormat;", "getNumber", "()Lkotlin/text/HexFormat$NumberHexFormat;", "Companion", "BytesHexFormat", "NumberHexFormat", "Builder", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalStdlibApi
/* loaded from: classes2.dex */
public final class HexFormat {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final HexFormat d;
    public static final HexFormat e;

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final boolean upperCase;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final BytesHexFormat bytes;

    /* renamed from: c, reason: from kotlin metadata */
    public final NumberHexFormat number;

    public HexFormat(boolean z, @NotNull BytesHexFormat bytes, @NotNull NumberHexFormat number) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Intrinsics.checkNotNullParameter(number, "number");
        this.upperCase = z;
        this.bytes = bytes;
        this.number = number;
    }

    public final boolean getUpperCase() {
        return this.upperCase;
    }

    @NotNull
    public final BytesHexFormat getBytes() {
        return this.bytes;
    }

    @NotNull
    public final NumberHexFormat getNumber() {
        return this.number;
    }

    @NotNull
    public String toString() {
        StringBuilder sbP = _COROUTINE.a.p("HexFormat(\n    upperCase = ");
        sbP.append(this.upperCase);
        sbP.append(",\n    bytes = BytesHexFormat(\n");
        this.bytes.appendOptionsTo$kotlin_stdlib(sbP, "        ").append('\n');
        sbP.append("    ),");
        sbP.append('\n');
        sbP.append("    number = NumberHexFormat(");
        sbP.append('\n');
        this.number.appendOptionsTo$kotlin_stdlib(sbP, "        ").append('\n');
        sbP.append("    )");
        sbP.append('\n');
        sbP.append(")");
        return sbP.toString();
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u0000 02\u00020\u0001:\u000210B9\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\rJ'\u0010\u0014\u001a\u00060\u000ej\u0002`\u000f2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\u0011\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\rR\u0017\u0010\u0007\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001c\u001a\u0004\b\u001f\u0010\rR\u0017\u0010\b\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b \u0010\u001c\u001a\u0004\b!\u0010\rR\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\"\u0010\u001c\u001a\u0004\b#\u0010\rR\u001a\u0010)\u001a\u00020$8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001a\u0010,\u001a\u00020$8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b*\u0010&\u001a\u0004\b+\u0010(R\u001a\u0010/\u001a\u00020$8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b-\u0010&\u001a\u0004\b.\u0010(¨\u00062"}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat;", "", "", "bytesPerLine", "bytesPerGroup", "", "groupSeparator", "byteSeparator", "bytePrefix", "byteSuffix", "<init>", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "indent", "appendOptionsTo$kotlin_stdlib", "(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;", "appendOptionsTo", "a", "I", "getBytesPerLine", "()I", "b", "getBytesPerGroup", "c", "Ljava/lang/String;", "getGroupSeparator", "d", "getByteSeparator", "e", "getBytePrefix", "f", "getByteSuffix", "", "g", "Z", "getNoLineAndGroupSeparator$kotlin_stdlib", "()Z", "noLineAndGroupSeparator", "h", "getShortByteSeparatorNoPrefixAndSuffix$kotlin_stdlib", "shortByteSeparatorNoPrefixAndSuffix", "i", "getIgnoreCase$kotlin_stdlib", "ignoreCase", "Companion", "Builder", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class BytesHexFormat {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);
        public static final BytesHexFormat j = new BytesHexFormat(Integer.MAX_VALUE, Integer.MAX_VALUE, "  ", "", "", "");

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public final int bytesPerLine;

        /* renamed from: b, reason: collision with root package name and from kotlin metadata */
        public final int bytesPerGroup;

        /* renamed from: c, reason: from kotlin metadata */
        public final String groupSeparator;

        /* renamed from: d, reason: from kotlin metadata */
        public final String byteSeparator;

        /* renamed from: e, reason: from kotlin metadata */
        public final String bytePrefix;

        /* renamed from: f, reason: from kotlin metadata */
        public final String byteSuffix;

        /* renamed from: g, reason: collision with root package name and from kotlin metadata */
        public final boolean noLineAndGroupSeparator;

        /* renamed from: h, reason: from kotlin metadata */
        public final boolean shortByteSeparatorNoPrefixAndSuffix;

        /* renamed from: i, reason: from kotlin metadata */
        public final boolean ignoreCase;

        public BytesHexFormat(int i, int i2, @NotNull String groupSeparator, @NotNull String byteSeparator, @NotNull String bytePrefix, @NotNull String byteSuffix) {
            Intrinsics.checkNotNullParameter(groupSeparator, "groupSeparator");
            Intrinsics.checkNotNullParameter(byteSeparator, "byteSeparator");
            Intrinsics.checkNotNullParameter(bytePrefix, "bytePrefix");
            Intrinsics.checkNotNullParameter(byteSuffix, "byteSuffix");
            this.bytesPerLine = i;
            this.bytesPerGroup = i2;
            this.groupSeparator = groupSeparator;
            this.byteSeparator = byteSeparator;
            this.bytePrefix = bytePrefix;
            this.byteSuffix = byteSuffix;
            this.noLineAndGroupSeparator = i == Integer.MAX_VALUE && i2 == Integer.MAX_VALUE;
            this.shortByteSeparatorNoPrefixAndSuffix = bytePrefix.length() == 0 && byteSuffix.length() == 0 && byteSeparator.length() <= 1;
            this.ignoreCase = HexFormatKt.access$isCaseSensitive(groupSeparator) || HexFormatKt.access$isCaseSensitive(byteSeparator) || HexFormatKt.access$isCaseSensitive(bytePrefix) || HexFormatKt.access$isCaseSensitive(byteSuffix);
        }

        public final int getBytesPerLine() {
            return this.bytesPerLine;
        }

        public final int getBytesPerGroup() {
            return this.bytesPerGroup;
        }

        @NotNull
        public final String getGroupSeparator() {
            return this.groupSeparator;
        }

        @NotNull
        public final String getByteSeparator() {
            return this.byteSeparator;
        }

        @NotNull
        public final String getBytePrefix() {
            return this.bytePrefix;
        }

        @NotNull
        public final String getByteSuffix() {
            return this.byteSuffix;
        }

        /* renamed from: getNoLineAndGroupSeparator$kotlin_stdlib, reason: from getter */
        public final boolean getNoLineAndGroupSeparator() {
            return this.noLineAndGroupSeparator;
        }

        /* renamed from: getShortByteSeparatorNoPrefixAndSuffix$kotlin_stdlib, reason: from getter */
        public final boolean getShortByteSeparatorNoPrefixAndSuffix() {
            return this.shortByteSeparatorNoPrefixAndSuffix;
        }

        /* renamed from: getIgnoreCase$kotlin_stdlib, reason: from getter */
        public final boolean getIgnoreCase() {
            return this.ignoreCase;
        }

        @NotNull
        public String toString() {
            StringBuilder sbP = _COROUTINE.a.p("BytesHexFormat(\n");
            appendOptionsTo$kotlin_stdlib(sbP, "    ").append('\n');
            sbP.append(")");
            return sbP.toString();
        }

        @NotNull
        public final StringBuilder appendOptionsTo$kotlin_stdlib(@NotNull StringBuilder sb, @NotNull String indent) {
            Intrinsics.checkNotNullParameter(sb, "sb");
            Intrinsics.checkNotNullParameter(indent, "indent");
            sb.append(indent);
            sb.append("bytesPerLine = ");
            sb.append(this.bytesPerLine);
            sb.append(",");
            sb.append('\n');
            sb.append(indent);
            sb.append("bytesPerGroup = ");
            sb.append(this.bytesPerGroup);
            sb.append(",");
            sb.append('\n');
            sb.append(indent);
            sb.append("groupSeparator = \"");
            sb.append(this.groupSeparator);
            sb.append("\",");
            sb.append('\n');
            sb.append(indent);
            sb.append("byteSeparator = \"");
            sb.append(this.byteSeparator);
            sb.append("\",");
            sb.append('\n');
            sb.append(indent);
            sb.append("bytePrefix = \"");
            sb.append(this.bytePrefix);
            sb.append("\",");
            sb.append('\n');
            sb.append(indent);
            sb.append("byteSuffix = \"");
            sb.append(this.byteSuffix);
            sb.append("\"");
            return sb;
        }

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0005\u0010\u0006R*\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0014\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u000b\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR*\u0010 \u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u00158\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0017\u001a\u0004\b\u001e\u0010\u0019\"\u0004\b\u001f\u0010\u001bR*\u0010$\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u00158\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0017\u001a\u0004\b\"\u0010\u0019\"\u0004\b#\u0010\u001bR*\u0010(\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u00158\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0017\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010\u001b¨\u0006)"}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat$Builder;", "", "<init>", "()V", "Lkotlin/text/HexFormat$BytesHexFormat;", "build$kotlin_stdlib", "()Lkotlin/text/HexFormat$BytesHexFormat;", "build", "", "value", "a", "I", "getBytesPerLine", "()I", "setBytesPerLine", "(I)V", "bytesPerLine", "b", "getBytesPerGroup", "setBytesPerGroup", "bytesPerGroup", "", "c", "Ljava/lang/String;", "getGroupSeparator", "()Ljava/lang/String;", "setGroupSeparator", "(Ljava/lang/String;)V", "groupSeparator", "d", "getByteSeparator", "setByteSeparator", "byteSeparator", "e", "getBytePrefix", "setBytePrefix", "bytePrefix", "f", "getByteSuffix", "setByteSuffix", "byteSuffix", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Builder {

            /* renamed from: a, reason: collision with root package name and from kotlin metadata */
            public int bytesPerLine;

            /* renamed from: b, reason: collision with root package name and from kotlin metadata */
            public int bytesPerGroup;

            /* renamed from: c, reason: from kotlin metadata */
            public String groupSeparator;

            /* renamed from: d, reason: from kotlin metadata */
            public String byteSeparator;

            /* renamed from: e, reason: from kotlin metadata */
            public String bytePrefix;

            /* renamed from: f, reason: from kotlin metadata */
            public String byteSuffix;

            public Builder() {
                Companion companion = BytesHexFormat.INSTANCE;
                this.bytesPerLine = companion.getDefault$kotlin_stdlib().getBytesPerLine();
                this.bytesPerGroup = companion.getDefault$kotlin_stdlib().getBytesPerGroup();
                this.groupSeparator = companion.getDefault$kotlin_stdlib().getGroupSeparator();
                this.byteSeparator = companion.getDefault$kotlin_stdlib().getByteSeparator();
                this.bytePrefix = companion.getDefault$kotlin_stdlib().getBytePrefix();
                this.byteSuffix = companion.getDefault$kotlin_stdlib().getByteSuffix();
            }

            public final int getBytesPerLine() {
                return this.bytesPerLine;
            }

            public final void setBytesPerLine(int i) {
                if (i <= 0) {
                    throw new IllegalArgumentException(_COROUTINE.a.d(i, "Non-positive values are prohibited for bytesPerLine, but was "));
                }
                this.bytesPerLine = i;
            }

            public final int getBytesPerGroup() {
                return this.bytesPerGroup;
            }

            public final void setBytesPerGroup(int i) {
                if (i <= 0) {
                    throw new IllegalArgumentException(_COROUTINE.a.d(i, "Non-positive values are prohibited for bytesPerGroup, but was "));
                }
                this.bytesPerGroup = i;
            }

            @NotNull
            public final String getGroupSeparator() {
                return this.groupSeparator;
            }

            public final void setGroupSeparator(@NotNull String str) {
                Intrinsics.checkNotNullParameter(str, "<set-?>");
                this.groupSeparator = str;
            }

            @NotNull
            public final String getByteSeparator() {
                return this.byteSeparator;
            }

            public final void setByteSeparator(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                if (StringsKt__StringsKt.contains$default((CharSequence) value, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) value, '\r', false, 2, (Object) null)) {
                    throw new IllegalArgumentException(_COROUTINE.a.i("LF and CR characters are prohibited in byteSeparator, but was ", value));
                }
                this.byteSeparator = value;
            }

            @NotNull
            public final String getBytePrefix() {
                return this.bytePrefix;
            }

            public final void setBytePrefix(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                if (StringsKt__StringsKt.contains$default((CharSequence) value, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) value, '\r', false, 2, (Object) null)) {
                    throw new IllegalArgumentException(_COROUTINE.a.i("LF and CR characters are prohibited in bytePrefix, but was ", value));
                }
                this.bytePrefix = value;
            }

            @NotNull
            public final String getByteSuffix() {
                return this.byteSuffix;
            }

            public final void setByteSuffix(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                if (StringsKt__StringsKt.contains$default((CharSequence) value, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) value, '\r', false, 2, (Object) null)) {
                    throw new IllegalArgumentException(_COROUTINE.a.i("LF and CR characters are prohibited in byteSuffix, but was ", value));
                }
                this.byteSuffix = value;
            }

            @NotNull
            public final BytesHexFormat build$kotlin_stdlib() {
                return new BytesHexFormat(this.bytesPerLine, this.bytesPerGroup, this.groupSeparator, this.byteSeparator, this.bytePrefix, this.byteSuffix);
            }
        }

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat$Companion;", "", "<init>", "()V", "Default", "Lkotlin/text/HexFormat$BytesHexFormat;", "getDefault$kotlin_stdlib", "()Lkotlin/text/HexFormat$BytesHexFormat;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final BytesHexFormat getDefault$kotlin_stdlib() {
                return BytesHexFormat.j;
            }
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b \u0018\u0000 ,2\u00020\u0001:\u0002-,B)\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u0013\u001a\u00060\rj\u0002`\u000e2\n\u0010\u000f\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u0010\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\fR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0015\u001a\u0004\b\u0018\u0010\fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR \u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u0012\u0004\b!\u0010\"\u001a\u0004\b\u001f\u0010 R\u001a\u0010%\u001a\u00020\u00058\u0000X\u0080\u0004¢\u0006\f\n\u0004\b#\u0010\u001a\u001a\u0004\b$\u0010\u001cR\u001a\u0010(\u001a\u00020\u00058\u0000X\u0080\u0004¢\u0006\f\n\u0004\b&\u0010\u001a\u001a\u0004\b'\u0010\u001cR\u001a\u0010+\u001a\u00020\u00058\u0000X\u0080\u0004¢\u0006\f\n\u0004\b)\u0010\u001a\u001a\u0004\b*\u0010\u001c¨\u0006."}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat;", "", "", "prefix", "suffix", "", "removeLeadingZeros", "", "minLength", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZI)V", "toString", "()Ljava/lang/String;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "indent", "appendOptionsTo$kotlin_stdlib", "(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;", "appendOptionsTo", "a", "Ljava/lang/String;", "getPrefix", "b", "getSuffix", "c", "Z", "getRemoveLeadingZeros", "()Z", "d", "I", "getMinLength", "()I", "getMinLength$annotations", "()V", "e", "isDigitsOnly$kotlin_stdlib", "isDigitsOnly", "f", "isDigitsOnlyAndNoPadding$kotlin_stdlib", "isDigitsOnlyAndNoPadding", "g", "getIgnoreCase$kotlin_stdlib", "ignoreCase", "Companion", "Builder", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class NumberHexFormat {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);
        public static final NumberHexFormat h = new NumberHexFormat("", "", false, 1);

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public final String prefix;

        /* renamed from: b, reason: collision with root package name and from kotlin metadata */
        public final String suffix;

        /* renamed from: c, reason: from kotlin metadata */
        public final boolean removeLeadingZeros;

        /* renamed from: d, reason: from kotlin metadata */
        public final int minLength;

        /* renamed from: e, reason: from kotlin metadata */
        public final boolean isDigitsOnly;

        /* renamed from: f, reason: from kotlin metadata */
        public final boolean isDigitsOnlyAndNoPadding;

        /* renamed from: g, reason: collision with root package name and from kotlin metadata */
        public final boolean ignoreCase;

        @SinceKotlin(version = "2.0")
        public static /* synthetic */ void getMinLength$annotations() {
        }

        public NumberHexFormat(@NotNull String prefix, @NotNull String suffix, boolean z, int i) {
            Intrinsics.checkNotNullParameter(prefix, "prefix");
            Intrinsics.checkNotNullParameter(suffix, "suffix");
            this.prefix = prefix;
            this.suffix = suffix;
            this.removeLeadingZeros = z;
            this.minLength = i;
            boolean z2 = prefix.length() == 0 && suffix.length() == 0;
            this.isDigitsOnly = z2;
            this.isDigitsOnlyAndNoPadding = z2 && i == 1;
            this.ignoreCase = HexFormatKt.access$isCaseSensitive(prefix) || HexFormatKt.access$isCaseSensitive(suffix);
        }

        @NotNull
        public final String getPrefix() {
            return this.prefix;
        }

        @NotNull
        public final String getSuffix() {
            return this.suffix;
        }

        public final boolean getRemoveLeadingZeros() {
            return this.removeLeadingZeros;
        }

        public final int getMinLength() {
            return this.minLength;
        }

        /* renamed from: isDigitsOnly$kotlin_stdlib, reason: from getter */
        public final boolean getIsDigitsOnly() {
            return this.isDigitsOnly;
        }

        /* renamed from: isDigitsOnlyAndNoPadding$kotlin_stdlib, reason: from getter */
        public final boolean getIsDigitsOnlyAndNoPadding() {
            return this.isDigitsOnlyAndNoPadding;
        }

        /* renamed from: getIgnoreCase$kotlin_stdlib, reason: from getter */
        public final boolean getIgnoreCase() {
            return this.ignoreCase;
        }

        @NotNull
        public String toString() {
            StringBuilder sbP = _COROUTINE.a.p("NumberHexFormat(\n");
            appendOptionsTo$kotlin_stdlib(sbP, "    ").append('\n');
            sbP.append(")");
            return sbP.toString();
        }

        @NotNull
        public final StringBuilder appendOptionsTo$kotlin_stdlib(@NotNull StringBuilder sb, @NotNull String indent) {
            Intrinsics.checkNotNullParameter(sb, "sb");
            Intrinsics.checkNotNullParameter(indent, "indent");
            sb.append(indent);
            sb.append("prefix = \"");
            sb.append(this.prefix);
            sb.append("\",");
            sb.append('\n');
            sb.append(indent);
            sb.append("suffix = \"");
            sb.append(this.suffix);
            sb.append("\",");
            sb.append('\n');
            sb.append(indent);
            sb.append("removeLeadingZeros = ");
            sb.append(this.removeLeadingZeros);
            sb.append(',');
            sb.append('\n');
            sb.append(indent);
            sb.append("minLength = ");
            sb.append(this.minLength);
            return sb;
        }

        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0005\u0010\u0006R*\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0014\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u000b\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR0\u0010%\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\u001d8\u0006@FX\u0087\u000e¢\u0006\u0018\n\u0004\b\u001e\u0010\u001f\u0012\u0004\b$\u0010\u0003\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat$Builder;", "", "<init>", "()V", "Lkotlin/text/HexFormat$NumberHexFormat;", "build$kotlin_stdlib", "()Lkotlin/text/HexFormat$NumberHexFormat;", "build", "", "value", "a", "Ljava/lang/String;", "getPrefix", "()Ljava/lang/String;", "setPrefix", "(Ljava/lang/String;)V", "prefix", "b", "getSuffix", "setSuffix", "suffix", "", "c", "Z", "getRemoveLeadingZeros", "()Z", "setRemoveLeadingZeros", "(Z)V", "removeLeadingZeros", "", "d", "I", "getMinLength", "()I", "setMinLength", "(I)V", "getMinLength$annotations", "minLength", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nHexFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexFormat.kt\nkotlin/text/HexFormat$NumberHexFormat$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,844:1\n1#2:845\n*E\n"})
        public static final class Builder {

            /* renamed from: a, reason: collision with root package name and from kotlin metadata */
            public String prefix;

            /* renamed from: b, reason: collision with root package name and from kotlin metadata */
            public String suffix;

            /* renamed from: c, reason: from kotlin metadata */
            public boolean removeLeadingZeros;

            /* renamed from: d, reason: from kotlin metadata */
            public int minLength;

            @SinceKotlin(version = "2.0")
            public static /* synthetic */ void getMinLength$annotations() {
            }

            public Builder() {
                Companion companion = NumberHexFormat.INSTANCE;
                this.prefix = companion.getDefault$kotlin_stdlib().getPrefix();
                this.suffix = companion.getDefault$kotlin_stdlib().getSuffix();
                this.removeLeadingZeros = companion.getDefault$kotlin_stdlib().getRemoveLeadingZeros();
                this.minLength = companion.getDefault$kotlin_stdlib().getMinLength();
            }

            @NotNull
            public final String getPrefix() {
                return this.prefix;
            }

            public final void setPrefix(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                if (StringsKt__StringsKt.contains$default((CharSequence) value, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) value, '\r', false, 2, (Object) null)) {
                    throw new IllegalArgumentException(_COROUTINE.a.i("LF and CR characters are prohibited in prefix, but was ", value));
                }
                this.prefix = value;
            }

            @NotNull
            public final String getSuffix() {
                return this.suffix;
            }

            public final void setSuffix(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                if (StringsKt__StringsKt.contains$default((CharSequence) value, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) value, '\r', false, 2, (Object) null)) {
                    throw new IllegalArgumentException(_COROUTINE.a.i("LF and CR characters are prohibited in suffix, but was ", value));
                }
                this.suffix = value;
            }

            public final boolean getRemoveLeadingZeros() {
                return this.removeLeadingZeros;
            }

            public final void setRemoveLeadingZeros(boolean z) {
                this.removeLeadingZeros = z;
            }

            public final int getMinLength() {
                return this.minLength;
            }

            public final void setMinLength(int i) {
                if (i <= 0) {
                    throw new IllegalArgumentException(_COROUTINE.a.d(i, "Non-positive values are prohibited for minLength, but was ").toString());
                }
                this.minLength = i;
            }

            @NotNull
            public final NumberHexFormat build$kotlin_stdlib() {
                return new NumberHexFormat(this.prefix, this.suffix, this.removeLeadingZeros, this.minLength);
            }
        }

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat$Companion;", "", "<init>", "()V", "Default", "Lkotlin/text/HexFormat$NumberHexFormat;", "getDefault$kotlin_stdlib", "()Lkotlin/text/HexFormat$NumberHexFormat;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final NumberHexFormat getDefault$kotlin_stdlib() {
                return NumberHexFormat.h;
            }
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\t\b\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u0012\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0016\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lkotlin/text/HexFormat$Builder;", "", "<init>", "()V", "Lkotlin/text/HexFormat;", "build", "()Lkotlin/text/HexFormat;", "", "a", "Z", "getUpperCase", "()Z", "setUpperCase", "(Z)V", "upperCase", "Lkotlin/text/HexFormat$BytesHexFormat$Builder;", "getBytes", "()Lkotlin/text/HexFormat$BytesHexFormat$Builder;", "bytes", "Lkotlin/text/HexFormat$NumberHexFormat$Builder;", "getNumber", "()Lkotlin/text/HexFormat$NumberHexFormat$Builder;", "number", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public boolean upperCase = HexFormat.INSTANCE.getDefault().getUpperCase();

        /* renamed from: b, reason: collision with root package name */
        public BytesHexFormat.Builder f6033b;
        public NumberHexFormat.Builder c;

        @PublishedApi
        public Builder() {
        }

        public final boolean getUpperCase() {
            return this.upperCase;
        }

        public final void setUpperCase(boolean z) {
            this.upperCase = z;
        }

        @NotNull
        public final BytesHexFormat.Builder getBytes() {
            if (this.f6033b == null) {
                this.f6033b = new BytesHexFormat.Builder();
            }
            BytesHexFormat.Builder builder = this.f6033b;
            Intrinsics.checkNotNull(builder);
            return builder;
        }

        @NotNull
        public final NumberHexFormat.Builder getNumber() {
            if (this.c == null) {
                this.c = new NumberHexFormat.Builder();
            }
            NumberHexFormat.Builder builder = this.c;
            Intrinsics.checkNotNull(builder);
            return builder;
        }

        @PublishedApi
        @NotNull
        public final HexFormat build() {
            BytesHexFormat default$kotlin_stdlib;
            NumberHexFormat default$kotlin_stdlib2;
            boolean z = this.upperCase;
            BytesHexFormat.Builder builder = this.f6033b;
            if (builder == null || (default$kotlin_stdlib = builder.build$kotlin_stdlib()) == null) {
                default$kotlin_stdlib = BytesHexFormat.INSTANCE.getDefault$kotlin_stdlib();
            }
            NumberHexFormat.Builder builder2 = this.c;
            if (builder2 == null || (default$kotlin_stdlib2 = builder2.build$kotlin_stdlib()) == null) {
                default$kotlin_stdlib2 = NumberHexFormat.INSTANCE.getDefault$kotlin_stdlib();
            }
            return new HexFormat(z, default$kotlin_stdlib, default$kotlin_stdlib2);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\n"}, d2 = {"Lkotlin/text/HexFormat$Companion;", "", "<init>", "()V", "Default", "Lkotlin/text/HexFormat;", "getDefault", "()Lkotlin/text/HexFormat;", "UpperCase", "getUpperCase", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final HexFormat getDefault() {
            return HexFormat.d;
        }

        @NotNull
        public final HexFormat getUpperCase() {
            return HexFormat.e;
        }
    }

    static {
        BytesHexFormat.Companion companion = BytesHexFormat.INSTANCE;
        BytesHexFormat default$kotlin_stdlib = companion.getDefault$kotlin_stdlib();
        NumberHexFormat.Companion companion2 = NumberHexFormat.INSTANCE;
        d = new HexFormat(false, default$kotlin_stdlib, companion2.getDefault$kotlin_stdlib());
        e = new HexFormat(true, companion.getDefault$kotlin_stdlib(), companion2.getDefault$kotlin_stdlib());
    }
}
