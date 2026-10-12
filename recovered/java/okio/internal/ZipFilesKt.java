package okio.internal;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.q;
import kotlinx.coroutines.scheduling.WorkQueueKt;
import okio.BufferedSource;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Path;
import okio.ZipFileSystem;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\u001a5\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u0013\u0010\f\u001a\u00020\u0005*\u00020\u000bH\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u0013\u0010\u000f\u001a\u00020\u000e*\u00020\u000bH\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001b\u0010\u0013\u001a\u00020\u0011*\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0000¢\u0006\u0004\b\u0013\u0010\u0014\"\u0014\u0010\u0016\u001a\u00020\u00158\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017\"\u0014\u0010\u0018\u001a\u00020\u00158\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017¨\u0006\u0019"}, d2 = {"Lokio/Path;", "zipPath", "Lokio/FileSystem;", "fileSystem", "Lkotlin/Function1;", "Lokio/internal/ZipEntry;", "", "predicate", "Lokio/ZipFileSystem;", "openZip", "(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;", "Lokio/BufferedSource;", "readEntry", "(Lokio/BufferedSource;)Lokio/internal/ZipEntry;", "", "skipLocalHeader", "(Lokio/BufferedSource;)V", "Lokio/FileMetadata;", "basicMetadata", "readLocalHeader", "(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;", "", "COMPRESSION_METHOD_DEFLATED", "I", "COMPRESSION_METHOD_STORED", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipFiles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,459:1\n1045#2:460\n*S KotlinDebug\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n*L\n156#1:460\n*E\n"})
/* loaded from: classes2.dex */
public final class ZipFilesKt {
    public static final int COMPRESSION_METHOD_DEFLATED = 8;
    public static final int COMPRESSION_METHOD_STORED = 0;

    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "it", "Lokio/internal/ZipEntry;", "invoke", "(Lokio/internal/ZipEntry;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class a extends Lambda implements Function1<ZipEntry, Boolean> {

        /* renamed from: b, reason: collision with root package name */
        public static final a f6838b = new a();

        public a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Boolean invoke(@NotNull ZipEntry it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Boolean.TRUE;
        }
    }

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 4) != 0) {
            function1 = a.f6838b;
        }
        return openZip(path, fileSystem, function1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005a, code lost:
    
        r19 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0062, code lost:
    
        if (r14 != (r3.readShortLe() & kotlin.UShort.MAX_VALUE)) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0064, code lost:
    
        if (r9 != 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0066, code lost:
    
        if (r11 != 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006a, code lost:
    
        r3.skip(4);
        r13 = new okio.internal.a(r14, r3.readIntLe() & 4294967295L, r3.readShortLe() & kotlin.UShort.MAX_VALUE);
        r8 = r3.readUtf8(r13.getCommentByteCount());
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x008d, code lost:
    
        r3.close();
        r5 = r5 - 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0097, code lost:
    
        if (r5 <= r19) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0099, code lost:
    
        r5 = okio.Okio.buffer(r4.source(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a8, code lost:
    
        if (r5.readIntLe() != 117853008) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00aa, code lost:
    
        r6 = r5.readIntLe();
        r9 = r5.readLongLe();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b7, code lost:
    
        if (r5.readIntLe() != 1) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b9, code lost:
    
        if (r6 != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00bb, code lost:
    
        r6 = okio.Okio.buffer(r4.source(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c3, code lost:
    
        r9 = r6.readIntLe();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ca, code lost:
    
        if (r9 != 101075792) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00cc, code lost:
    
        r6.skip(12);
        r9 = r6.readIntLe();
        r10 = r6.readIntLe();
        r22 = r6.readLongLe();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e3, code lost:
    
        if (r22 != r6.readLongLe()) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e5, code lost:
    
        if (r9 != 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e7, code lost:
    
        if (r10 != 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e9, code lost:
    
        r6.skip(8);
        r21 = new okio.internal.a(r22, r6.readLongLe(), r13.getCommentByteCount());
        r7 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00fd, code lost:
    
        kotlin.io.CloseableKt.closeFinally(r6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0100, code lost:
    
        r13 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0103, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0106, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x010e, code lost:
    
        throw new java.io.IOException("unsupported zip: spanned");
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0135, code lost:
    
        throw new java.io.IOException("bad zip: expected " + b(101075792) + " but was " + b(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0141, code lost:
    
        throw new java.io.IOException("unsupported zip: spanned");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0142, code lost:
    
        r6 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0144, code lost:
    
        kotlin.io.CloseableKt.closeFinally(r5, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0152, code lost:
    
        r5 = new java.util.ArrayList();
        r6 = okio.Okio.buffer(r4.source(r13.getCentralDirectoryOffset()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0163, code lost:
    
        r9 = r13.getEntryCount();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0169, code lost:
    
        if (r19 >= r9) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x016b, code lost:
    
        r7 = readEntry(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0179, code lost:
    
        if (r7.getOffset() >= r13.getCentralDirectoryOffset()) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0185, code lost:
    
        if (r29.invoke(r7).booleanValue() == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0187, code lost:
    
        r5.add(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x018b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x018e, code lost:
    
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x019a, code lost:
    
        throw new java.io.IOException("bad zip: local file header offset >= central directory offset");
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x019b, code lost:
    
        r2 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019d, code lost:
    
        kotlin.io.CloseableKt.closeFinally(r6, null);
        r5 = new okio.ZipFileSystem(r27, r28, a(r5), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01a9, code lost:
    
        kotlin.io.CloseableKt.closeFinally(r4, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01ac, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ad, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01ae, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01b2, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01ba, code lost:
    
        throw new java.io.IOException("unsupported zip: spanned");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0043, code lost:
    
        r9 = r3.readShortLe() & kotlin.UShort.MAX_VALUE;
        r11 = r3.readShortLe() & kotlin.UShort.MAX_VALUE;
        r14 = r3.readShortLe() & kotlin.UShort.MAX_VALUE;
     */
    /* JADX WARN: Finally extract failed */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final okio.ZipFileSystem openZip(@org.jetbrains.annotations.NotNull okio.Path r27, @org.jetbrains.annotations.NotNull okio.FileSystem r28, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super okio.internal.ZipEntry, java.lang.Boolean> r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.ZipFilesKt.openZip(okio.Path, okio.FileSystem, kotlin.jvm.functions.Function1):okio.ZipFileSystem");
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1] */
    public static final Map a(ArrayList arrayList) {
        Path path = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null);
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, null, 0L, ErrorMessages.ERROR_BLUETOOTH_UNABLE_TO_LISTEN, null)));
        for (ZipEntry zipEntry : CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((ZipEntry) t).getCanonicalPath(), ((ZipEntry) t2).getCanonicalPath());
            }
        })) {
            if (((ZipEntry) mapMutableMapOf.put(zipEntry.getCanonicalPath(), zipEntry)) == null) {
                while (true) {
                    Path pathParent = zipEntry.getCanonicalPath().parent();
                    if (pathParent != null) {
                        ZipEntry zipEntry2 = (ZipEntry) mapMutableMapOf.get(pathParent);
                        if (zipEntry2 != null) {
                            zipEntry2.getChildren().add(zipEntry.getCanonicalPath());
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(pathParent, true, null, 0L, 0L, 0L, 0, null, 0L, ErrorMessages.ERROR_BLUETOOTH_UNABLE_TO_LISTEN, null);
                        mapMutableMapOf.put(pathParent, zipEntry3);
                        zipEntry3.getChildren().add(zipEntry.getCanonicalPath());
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return mapMutableMapOf;
    }

    @NotNull
    public static final ZipEntry readEntry(@NotNull BufferedSource bufferedSource) throws IOException {
        Long lValueOf;
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        int intLe = bufferedSource.readIntLe();
        if (intLe != 33639248) {
            throw new IOException("bad zip: expected " + b(33639248) + " but was " + b(intLe));
        }
        bufferedSource.skip(4L);
        short shortLe = bufferedSource.readShortLe();
        int i = shortLe & UShort.MAX_VALUE;
        if ((shortLe & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + b(i));
        }
        int shortLe2 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        short shortLe3 = bufferedSource.readShortLe();
        int i2 = shortLe3 & UShort.MAX_VALUE;
        short shortLe4 = bufferedSource.readShortLe();
        int i3 = shortLe4 & UShort.MAX_VALUE;
        if (i2 == -1) {
            lValueOf = null;
        } else {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.set(14, 0);
            gregorianCalendar.set(((i3 >> 9) & WorkQueueKt.MASK) + 1980, ((i3 >> 5) & 15) - 1, shortLe4 & 31, (i2 >> 11) & 31, (i2 >> 5) & 63, (shortLe3 & 31) << 1);
            lValueOf = Long.valueOf(gregorianCalendar.getTime().getTime());
        }
        long intLe2 = bufferedSource.readIntLe() & 4294967295L;
        Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = bufferedSource.readIntLe() & 4294967295L;
        Ref.LongRef longRef2 = new Ref.LongRef();
        longRef2.element = bufferedSource.readIntLe() & 4294967295L;
        int shortLe5 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        int shortLe6 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        int shortLe7 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        bufferedSource.skip(8L);
        Ref.LongRef longRef3 = new Ref.LongRef();
        longRef3.element = bufferedSource.readIntLe() & 4294967295L;
        String utf8 = bufferedSource.readUtf8(shortLe5);
        if (StringsKt__StringsKt.contains$default((CharSequence) utf8, (char) 0, false, 2, (Object) null)) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        long j = longRef2.element == 4294967295L ? 8 : 0L;
        if (longRef.element == 4294967295L) {
            j += 8;
        }
        if (longRef3.element == 4294967295L) {
            j += 8;
        }
        long j2 = j;
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        c(bufferedSource, shortLe6, new b(booleanRef, j2, longRef2, bufferedSource, longRef, longRef3));
        if (j2 > 0 && !booleanRef.element) {
            throw new IOException("bad zip: zip64 extra required but absent");
        }
        return new ZipEntry(Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null).resolve(utf8), q.endsWith$default(utf8, "/", false, 2, null), bufferedSource.readUtf8(shortLe7), intLe2, longRef.element, longRef2.element, shortLe2, lValueOf, longRef3.element);
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "headerId", "", "dataSize", "", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class b extends Lambda implements Function2<Integer, Long, Unit> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Ref.BooleanRef f6839b;
        public final /* synthetic */ long c;
        public final /* synthetic */ Ref.LongRef d;
        public final /* synthetic */ BufferedSource e;
        public final /* synthetic */ Ref.LongRef f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Ref.LongRef f6840g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Ref.BooleanRef booleanRef, long j, Ref.LongRef longRef, BufferedSource bufferedSource, Ref.LongRef longRef2, Ref.LongRef longRef3) {
            super(2);
            this.f6839b = booleanRef;
            this.c = j;
            this.d = longRef;
            this.e = bufferedSource;
            this.f = longRef2;
            this.f6840g = longRef3;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l) throws IOException {
            invoke(num.intValue(), l.longValue());
            return Unit.INSTANCE;
        }

        public final void invoke(int i, long j) throws IOException {
            if (i == 1) {
                Ref.BooleanRef booleanRef = this.f6839b;
                if (booleanRef.element) {
                    throw new IOException("bad zip: zip64 extra repeated");
                }
                booleanRef.element = true;
                if (j < this.c) {
                    throw new IOException("bad zip: zip64 extra too short");
                }
                Ref.LongRef longRef = this.d;
                long longLe = longRef.element;
                BufferedSource bufferedSource = this.e;
                if (longLe == 4294967295L) {
                    longLe = bufferedSource.readLongLe();
                }
                longRef.element = longLe;
                Ref.LongRef longRef2 = this.f;
                longRef2.element = longRef2.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
                Ref.LongRef longRef3 = this.f6840g;
                longRef3.element = longRef3.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
            }
        }
    }

    public static final void c(BufferedSource bufferedSource, int i, Function2 function2) throws IOException {
        long j = i;
        while (j != 0) {
            if (j < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            int shortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
            long shortLe2 = bufferedSource.readShortLe() & 65535;
            long j2 = j - 4;
            if (j2 < shortLe2) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            bufferedSource.require(shortLe2);
            long size = bufferedSource.getBuffer().size();
            function2.invoke(Integer.valueOf(shortLe), Long.valueOf(shortLe2));
            long size2 = (bufferedSource.getBuffer().size() + shortLe2) - size;
            if (size2 < 0) {
                throw new IOException(_COROUTINE.a.d(shortLe, "unsupported zip: too many bytes processed for "));
            }
            if (size2 > 0) {
                bufferedSource.getBuffer().skip(size2);
            }
            j = j2 - shortLe2;
        }
    }

    public static final void skipLocalHeader(@NotNull BufferedSource bufferedSource) throws IOException {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        d(bufferedSource, null);
    }

    @NotNull
    public static final FileMetadata readLocalHeader(@NotNull BufferedSource bufferedSource, @NotNull FileMetadata basicMetadata) throws IOException {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(basicMetadata, "basicMetadata");
        FileMetadata fileMetadataD = d(bufferedSource, basicMetadata);
        Intrinsics.checkNotNull(fileMetadataD);
        return fileMetadataD;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final FileMetadata d(BufferedSource bufferedSource, FileMetadata fileMetadata) throws IOException {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = fileMetadata != null ? fileMetadata.getLastModifiedAtMillis() : 0;
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        int intLe = bufferedSource.readIntLe();
        if (intLe != 67324752) {
            throw new IOException("bad zip: expected " + b(67324752) + " but was " + b(intLe));
        }
        bufferedSource.skip(2L);
        short shortLe = bufferedSource.readShortLe();
        int i = shortLe & UShort.MAX_VALUE;
        if ((shortLe & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + b(i));
        }
        bufferedSource.skip(18L);
        int shortLe2 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        bufferedSource.skip(bufferedSource.readShortLe() & 65535);
        if (fileMetadata == null) {
            bufferedSource.skip(shortLe2);
            return null;
        }
        c(bufferedSource, shortLe2, new c(bufferedSource, objectRef, objectRef2, objectRef3));
        return new FileMetadata(fileMetadata.getIsRegularFile(), fileMetadata.getIsDirectory(), null, fileMetadata.getSize(), (Long) objectRef3.element, (Long) objectRef.element, (Long) objectRef2.element, null, 128, null);
    }

    public static final String b(int i) {
        StringBuilder sb = new StringBuilder("0x");
        String string = Integer.toString(i, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(string, "toString(this, checkRadix(radix))");
        sb.append(string);
        return sb.toString();
    }
}
