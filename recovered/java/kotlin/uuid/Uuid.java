package kotlin.uuid;

import androidx.core.provider.e;
import com.google.appinventor.components.runtime.util.Ev3Constants;
import java.io.Serializable;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.HexExtensionsKt;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "2.0")
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\b\u0007\u0018\u0000  2\u00060\u0001j\u0002`\u0002:\u0001 B\u0019\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\nJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R \u0010\u0004\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u0012\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001aR \u0010\u0005\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u001d\u0010\u0018\u0012\u0004\b\u001f\u0010\u001c\u001a\u0004\b\u001e\u0010\u001a¨\u0006!"}, d2 = {"Lkotlin/uuid/Uuid;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "mostSignificantBits", "leastSignificantBits", "<init>", "(JJ)V", "", "toString", "()Ljava/lang/String;", "toHexString", "", "toByteArray", "()[B", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "a", "J", "getMostSignificantBits", "()J", "getMostSignificantBits$annotations", "()V", "b", "getLeastSignificantBits", "getLeastSignificantBits$annotations", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalUuidApi
/* loaded from: classes2.dex */
public final class Uuid implements Serializable {
    public static final int SIZE_BITS = 128;
    public static final int SIZE_BYTES = 16;

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final long mostSignificantBits;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final long leastSignificantBits;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final Uuid c = new Uuid(0, 0);
    public static final e d = new e(1);

    @PublishedApi
    public static /* synthetic */ void getLeastSignificantBits$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getMostSignificantBits$annotations() {
    }

    public Uuid(long j, long j2) {
        this.mostSignificantBits = j;
        this.leastSignificantBits = j2;
    }

    public final long getMostSignificantBits() {
        return this.mostSignificantBits;
    }

    public final long getLeastSignificantBits() {
        return this.leastSignificantBits;
    }

    @NotNull
    public String toString() {
        byte[] bArr = new byte[36];
        long j = this.leastSignificantBits;
        c.access$formatBytesInto(j, bArr, 24, 6);
        bArr[23] = Ev3Constants.Opcode.RL16;
        c.access$formatBytesInto(j >>> 48, bArr, 19, 2);
        bArr[18] = Ev3Constants.Opcode.RL16;
        long j2 = this.mostSignificantBits;
        c.access$formatBytesInto(j2, bArr, 14, 2);
        bArr[13] = Ev3Constants.Opcode.RL16;
        c.access$formatBytesInto(j2 >>> 16, bArr, 9, 2);
        bArr[8] = Ev3Constants.Opcode.RL16;
        c.access$formatBytesInto(j2 >>> 32, bArr, 0, 4);
        return StringsKt.decodeToString(bArr);
    }

    @NotNull
    public final String toHexString() {
        byte[] bArr = new byte[32];
        c.access$formatBytesInto(this.leastSignificantBits, bArr, 16, 8);
        c.access$formatBytesInto(this.mostSignificantBits, bArr, 0, 8);
        return StringsKt.decodeToString(bArr);
    }

    @NotNull
    public final byte[] toByteArray() {
        byte[] bArr = new byte[16];
        c.access$toByteArray(this.mostSignificantBits, bArr, 0);
        c.access$toByteArray(this.leastSignificantBits, bArr, 8);
        return bArr;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Uuid)) {
            return false;
        }
        Uuid uuid = (Uuid) other;
        return this.mostSignificantBits == uuid.mostSignificantBits && this.leastSignificantBits == uuid.leastSignificantBits;
    }

    public int hashCode() {
        long j = this.mostSignificantBits ^ this.leastSignificantBits;
        return ((int) (j >> 32)) ^ ((int) j);
    }

    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u001d\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0018J\u0006\u0010\u001b\u001a\u00020\u0005R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R#\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u001dj\b\u0012\u0004\u0012\u00020\u0005`\u001e¢\u0006\n\n\u0002\u0010!\u001a\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lkotlin/uuid/Uuid$Companion;", "", "<init>", "()V", "NIL", "Lkotlin/uuid/Uuid;", "getNIL", "()Lkotlin/uuid/Uuid;", "SIZE_BYTES", "", "SIZE_BITS", "fromLongs", "mostSignificantBits", "", "leastSignificantBits", "fromULongs", "Lkotlin/ULong;", "fromULongs-eb3DHEI", "(JJ)Lkotlin/uuid/Uuid;", "fromByteArray", "byteArray", "", "parse", "uuidString", "", "parseHex", "hexString", "random", "LEXICAL_ORDER", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getLEXICAL_ORDER", "()Ljava/util/Comparator;", "Ljava/util/Comparator;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nUuid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uuid.kt\nkotlin/uuid/Uuid$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,452:1\n1#2:453\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Uuid getNIL() {
            return Uuid.c;
        }

        @NotNull
        public final Uuid fromLongs(long mostSignificantBits, long leastSignificantBits) {
            if (mostSignificantBits == 0 && leastSignificantBits == 0) {
                return getNIL();
            }
            return new Uuid(mostSignificantBits, leastSignificantBits);
        }

        @NotNull
        /* renamed from: fromULongs-eb3DHEI, reason: not valid java name */
        public final Uuid m1132fromULongseb3DHEI(long mostSignificantBits, long leastSignificantBits) {
            return fromLongs(mostSignificantBits, leastSignificantBits);
        }

        @NotNull
        public final Uuid fromByteArray(@NotNull byte[] byteArray) {
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            if (byteArray.length != 16) {
                throw new IllegalArgumentException("Expected exactly 16 bytes");
            }
            return fromLongs(c.access$toLong(byteArray, 0), c.access$toLong(byteArray, 8));
        }

        @NotNull
        public final Uuid parse(@NotNull String uuidString) {
            Intrinsics.checkNotNullParameter(uuidString, "uuidString");
            if (uuidString.length() != 36) {
                throw new IllegalArgumentException("Expected a 36-char string in the standard uuid format.");
            }
            long jHexToLong$default = HexExtensionsKt.hexToLong$default(uuidString, 0, 8, null, 4, null);
            c.access$checkHyphenAt(uuidString, 8);
            long jHexToLong$default2 = HexExtensionsKt.hexToLong$default(uuidString, 9, 13, null, 4, null);
            c.access$checkHyphenAt(uuidString, 13);
            long jHexToLong$default3 = HexExtensionsKt.hexToLong$default(uuidString, 14, 18, null, 4, null);
            c.access$checkHyphenAt(uuidString, 18);
            long jHexToLong$default4 = HexExtensionsKt.hexToLong$default(uuidString, 19, 23, null, 4, null);
            c.access$checkHyphenAt(uuidString, 23);
            return fromLongs((jHexToLong$default << 32) | (jHexToLong$default2 << 16) | jHexToLong$default3, HexExtensionsKt.hexToLong$default(uuidString, 24, 36, null, 4, null) | (jHexToLong$default4 << 48));
        }

        @NotNull
        public final Uuid parseHex(@NotNull String hexString) {
            Intrinsics.checkNotNullParameter(hexString, "hexString");
            if (hexString.length() != 32) {
                throw new IllegalArgumentException("Expected a 32-char hexadecimal string.");
            }
            return fromLongs(HexExtensionsKt.hexToLong$default(hexString, 0, 16, null, 4, null), HexExtensionsKt.hexToLong$default(hexString, 16, 32, null, 4, null));
        }

        @NotNull
        public final Uuid random() {
            return b.secureRandomUuid();
        }

        @NotNull
        public final Comparator<Uuid> getLEXICAL_ORDER() {
            return Uuid.d;
        }
    }
}
