package okio;

import java.io.IOException;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\n\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0018J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\t8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "index", "get", "(I)Lokio/ByteString;", "", "a", "[Lokio/ByteString;", "getByteStrings$okio", "()[Lokio/ByteString;", "byteStrings", "", "b", "[I", "getTrie$okio", "()[I", "trie", "getSize", "()I", "size", "Companion", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Options extends AbstractList<ByteString> implements RandomAccess {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final ByteString[] byteStrings;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final int[] trie;

    @JvmStatic
    @NotNull
    public static final Options of(@NotNull ByteString... byteStringArr) {
        return INSTANCE.of(byteStringArr);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return contains((ByteString) obj);
        }
        return false;
    }

    public /* bridge */ boolean contains(ByteString byteString) {
        return super.contains((Options) byteString);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return indexOf((ByteString) obj);
        }
        return -1;
    }

    public /* bridge */ int indexOf(ByteString byteString) {
        return super.indexOf((Options) byteString);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    public /* bridge */ int lastIndexOf(ByteString byteString) {
        return super.lastIndexOf((Options) byteString);
    }

    @NotNull
    /* renamed from: getByteStrings$okio, reason: from getter */
    public final ByteString[] getByteStrings() {
        return this.byteStrings;
    }

    @NotNull
    /* renamed from: getTrie$okio, reason: from getter */
    public final int[] getTrie() {
        return this.trie;
    }

    public Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public int getC() {
        return this.byteStrings.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    @NotNull
    public ByteString get(int index) {
        return this.byteStrings[index];
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\b\u001a\u00020\u00072\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokio/Options$Companion;", "", "<init>", "()V", "", "Lokio/ByteString;", "byteStrings", "Lokio/Options;", "of", "([Lokio/ByteString;)Lokio/Options;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,236:1\n11065#2:237\n11400#2,3:238\n13374#2,3:243\n37#3,2:241\n1#4:246\n74#5:247\n74#5:248\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n43#1:237\n43#1:238,3\n44#1:243,3\n43#1:241,2\n151#1:247\n208#1:248\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x00cd, code lost:
        
            continue;
         */
        @kotlin.jvm.JvmStatic
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okio.Options of(@org.jetbrains.annotations.NotNull okio.ByteString... r13) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 275
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.of(okio.ByteString[]):okio.Options");
        }

        public static void a(long j, Buffer buffer, int i, List list, int i2, int i3, List list2) throws IOException {
            int i4;
            int i5;
            List list3;
            long j2;
            int i6;
            int i7 = i;
            List list4 = list;
            List list5 = list2;
            if (i2 >= i3) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            for (int i8 = i2; i8 < i3; i8++) {
                if (((ByteString) list4.get(i8)).size() < i7) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
            }
            ByteString byteString = (ByteString) list.get(i2);
            ByteString byteString2 = (ByteString) list4.get(i3 - 1);
            if (i7 == byteString.size()) {
                int iIntValue = ((Number) list5.get(i2)).intValue();
                int i9 = i2 + 1;
                ByteString byteString3 = (ByteString) list4.get(i9);
                i4 = i9;
                i5 = iIntValue;
                byteString = byteString3;
            } else {
                i4 = i2;
                i5 = -1;
            }
            if (byteString.getByte(i7) == byteString2.getByte(i7)) {
                int iMin = Math.min(byteString.size(), byteString2.size());
                int i10 = 0;
                for (int i11 = i7; i11 < iMin && byteString.getByte(i11) == byteString2.getByte(i11); i11++) {
                    i10++;
                }
                long j3 = 4;
                long size = (buffer.size() / j3) + j + 2 + i10 + 1;
                buffer.writeInt(-i10);
                buffer.writeInt(i5);
                int i12 = i7 + i10;
                while (i7 < i12) {
                    buffer.writeInt(byteString.getByte(i7) & 255);
                    i7++;
                }
                if (i4 + 1 == i3) {
                    if (i12 != ((ByteString) list4.get(i4)).size()) {
                        throw new IllegalStateException("Check failed.");
                    }
                    buffer.writeInt(((Number) list5.get(i4)).intValue());
                    return;
                } else {
                    Buffer buffer2 = new Buffer();
                    buffer.writeInt(((int) ((buffer2.size() / j3) + size)) * (-1));
                    a(size, buffer2, i12, list4, i4, i3, list5);
                    buffer.writeAll(buffer2);
                    return;
                }
            }
            int i13 = 1;
            for (int i14 = i4 + 1; i14 < i3; i14++) {
                if (((ByteString) list4.get(i14 - 1)).getByte(i7) != ((ByteString) list4.get(i14)).getByte(i7)) {
                    i13++;
                }
            }
            long j4 = 4;
            long size2 = (buffer.size() / j4) + j + 2 + (i13 * 2);
            buffer.writeInt(i13);
            buffer.writeInt(i5);
            for (int i15 = i4; i15 < i3; i15++) {
                int i16 = ((ByteString) list4.get(i15)).getByte(i7);
                if (i15 == i4 || i16 != ((ByteString) list4.get(i15 - 1)).getByte(i7)) {
                    buffer.writeInt(i16 & 255);
                }
            }
            Buffer buffer3 = new Buffer();
            int i17 = i4;
            while (i17 < i3) {
                byte b2 = ((ByteString) list4.get(i17)).getByte(i7);
                int i18 = i17 + 1;
                int i19 = i18;
                while (true) {
                    if (i19 >= i3) {
                        i19 = i3;
                        break;
                    } else if (b2 != ((ByteString) list4.get(i19)).getByte(i7)) {
                        break;
                    } else {
                        i19++;
                    }
                }
                if (i18 == i19 && i7 + 1 == ((ByteString) list4.get(i17)).size()) {
                    buffer.writeInt(((Number) list5.get(i17)).intValue());
                    list3 = list5;
                    j2 = size2;
                    i6 = i19;
                } else {
                    buffer.writeInt(((int) ((buffer3.size() / j4) + size2)) * (-1));
                    list3 = list5;
                    j2 = size2;
                    i6 = i19;
                    a(j2, buffer3, i7 + 1, list, i17, i6, list3);
                    list4 = list;
                }
                size2 = j2;
                i17 = i6;
                list5 = list3;
            }
            buffer.writeAll(buffer3);
        }
    }
}
