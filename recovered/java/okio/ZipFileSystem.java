package okio;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Path;
import okio.internal.FixedLengthSource;
import okio.internal.ZipEntry;
import okio.internal.ZipFilesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001:\u0001/B7\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001c2\u0006\u0010\u001b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001f\u0010\u001eJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\"J\u001f\u0010$\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b$\u0010%J\u001f\u0010&\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b&\u0010%J\u001f\u0010(\u001a\u00020'2\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010+\u001a\u00020'2\u0006\u0010!\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u0002H\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010-\u001a\u00020'2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b-\u0010)J\u001f\u0010.\u001a\u00020'2\u0006\u0010!\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u0002H\u0016¢\u0006\u0004\b.\u0010,¨\u00060"}, d2 = {"Lokio/ZipFileSystem;", "Lokio/FileSystem;", "Lokio/Path;", "zipPath", "fileSystem", "", "Lokio/internal/ZipEntry;", "entries", "", "comment", "<init>", "(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V", "path", "canonicalize", "(Lokio/Path;)Lokio/Path;", "Lokio/FileMetadata;", "metadataOrNull", "(Lokio/Path;)Lokio/FileMetadata;", "file", "Lokio/FileHandle;", "openReadOnly", "(Lokio/Path;)Lokio/FileHandle;", "", "mustCreate", "mustExist", "openReadWrite", "(Lokio/Path;ZZ)Lokio/FileHandle;", "dir", "", "list", "(Lokio/Path;)Ljava/util/List;", "listOrNull", "Lokio/Source;", "source", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "sink", "(Lokio/Path;Z)Lokio/Sink;", "appendingSink", "", "createDirectory", "(Lokio/Path;Z)V", "target", "atomicMove", "(Lokio/Path;Lokio/Path;)V", "delete", "createSymlink", "a", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,175:1\n52#2,5:176\n52#2,21:181\n60#2,10:202\n57#2,2:212\n71#2,2:214\n52#2,21:216\n*S KotlinDebug\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n*L\n102#1:176,5\n103#1:181,21\n102#1:202,10\n102#1:212,2\n102#1:214,2\n132#1:216,21\n*E\n"})
/* loaded from: classes2.dex */
public final class ZipFileSystem extends FileSystem {
    public static final Path d;

    /* renamed from: a, reason: collision with root package name */
    public final Path f6818a;

    /* renamed from: b, reason: collision with root package name */
    public final FileSystem f6819b;
    public final Map c;

    public ZipFileSystem(@NotNull Path zipPath, @NotNull FileSystem fileSystem, @NotNull Map<Path, ZipEntry> entries, @Nullable String str) {
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.f6818a = zipPath;
        this.f6819b = fileSystem;
        this.c = entries;
    }

    public final List a(Path path, boolean z) throws IOException {
        ZipEntry zipEntry = (ZipEntry) this.c.get(d.resolve(path, true));
        if (zipEntry != null) {
            return CollectionsKt.toList(zipEntry.getChildren());
        }
        if (z) {
            throw new IOException(com.google.youngandroid.a.g(path, "not a directory: "));
        }
        return null;
    }

    @Override // okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(path, "path");
        Path pathResolve = d.resolve(path, true);
        if (this.c.containsKey(pathResolve)) {
            return pathResolve;
        }
        throw new FileNotFoundException(String.valueOf(path));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0086 A[Catch: all -> 0x007f, TRY_LEAVE, TryCatch #5 {all -> 0x007f, blocks: (B:13:0x0056, B:33:0x0086, B:38:0x0090, B:28:0x007b, B:14:0x0062, B:24:0x0075), top: B:59:0x0056, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0090 A[Catch: all -> 0x007f, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x007f, blocks: (B:13:0x0056, B:33:0x0086, B:38:0x0090, B:28:0x007b, B:14:0x0062, B:24:0x0075), top: B:59:0x0056, inners: #0, #2 }] */
    @Override // okio.FileSystem
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okio.FileMetadata metadataOrNull(@org.jetbrains.annotations.NotNull okio.Path r15) throws java.lang.Throwable {
        /*
            r14 = this;
            java.lang.String r0 = "path"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            okio.Path r0 = okio.ZipFileSystem.d
            r1 = 1
            okio.Path r15 = r0.resolve(r15, r1)
            java.util.Map r0 = r14.c
            java.lang.Object r15 = r0.get(r15)
            okio.internal.ZipEntry r15 = (okio.internal.ZipEntry) r15
            r2 = 0
            if (r15 != 0) goto L18
            return r2
        L18:
            okio.FileMetadata r3 = new okio.FileMetadata
            boolean r0 = r15.getIsDirectory()
            r4 = r0 ^ 1
            boolean r5 = r15.getIsDirectory()
            boolean r0 = r15.getIsDirectory()
            if (r0 == 0) goto L2c
            r7 = r2
            goto L35
        L2c:
            long r0 = r15.getSize()
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r7 = r0
        L35:
            java.lang.Long r9 = r15.getLastModifiedAtMillis()
            r10 = 0
            r11 = 0
            r6 = 0
            r8 = 0
            r12 = 128(0x80, float:1.8E-43)
            r13 = 0
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            long r0 = r15.getOffset()
            r4 = -1
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 != 0) goto L4e
            return r3
        L4e:
            okio.FileSystem r0 = r14.f6819b
            okio.Path r1 = r14.f6818a
            okio.FileHandle r1 = r0.openReadOnly(r1)
            long r4 = r15.getOffset()     // Catch: java.lang.Throwable -> L7f
            okio.Source r15 = r1.source(r4)     // Catch: java.lang.Throwable -> L7f
            okio.BufferedSource r15 = okio.Okio.buffer(r15)     // Catch: java.lang.Throwable -> L7f
            okio.FileMetadata r3 = okio.internal.ZipFilesKt.readLocalHeader(r15, r3)     // Catch: java.lang.Throwable -> L71
            if (r15 == 0) goto L6f
            r15.close()     // Catch: java.lang.Throwable -> L6c
            goto L6f
        L6c:
            r0 = move-exception
            r15 = r0
            goto L84
        L6f:
            r15 = r2
            goto L84
        L71:
            r0 = move-exception
            r3 = r0
            if (r15 == 0) goto L82
            r15.close()     // Catch: java.lang.Throwable -> L79
            goto L82
        L79:
            r0 = move-exception
            r15 = r0
            kotlin.ExceptionsKt.addSuppressed(r3, r15)     // Catch: java.lang.Throwable -> L7f
            goto L82
        L7f:
            r0 = move-exception
            r15 = r0
            goto L91
        L82:
            r15 = r3
            r3 = r2
        L84:
            if (r15 != 0) goto L90
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)     // Catch: java.lang.Throwable -> L7f
            r1.close()     // Catch: java.lang.Throwable -> L8d
            goto L9d
        L8d:
            r0 = move-exception
            r2 = r0
            goto L9d
        L90:
            throw r15     // Catch: java.lang.Throwable -> L7f
        L91:
            if (r1 == 0) goto L9b
            r1.close()     // Catch: java.lang.Throwable -> L97
            goto L9b
        L97:
            r0 = move-exception
            kotlin.ExceptionsKt.addSuppressed(r15, r0)
        L9b:
            r3 = r2
            r2 = r15
        L9d:
            if (r2 != 0) goto La3
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            return r3
        La3:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ZipFileSystem.metadataOrNull(okio.Path):okio.FileMetadata");
    }

    @Override // okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) throws Throwable {
        BufferedSource bufferedSourceBuffer;
        Intrinsics.checkNotNullParameter(file, "file");
        ZipEntry zipEntry = (ZipEntry) this.c.get(d.resolve(file, true));
        if (zipEntry == null) {
            throw new FileNotFoundException(com.google.youngandroid.a.g(file, "no such file: "));
        }
        FileHandle fileHandleOpenReadOnly = this.f6819b.openReadOnly(this.f6818a);
        Throwable th = null;
        try {
            bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(zipEntry.getOffset()));
            try {
                fileHandleOpenReadOnly.close();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            if (fileHandleOpenReadOnly != null) {
                try {
                    fileHandleOpenReadOnly.close();
                } catch (Throwable th4) {
                    ExceptionsKt.addSuppressed(th3, th4);
                }
            }
            bufferedSourceBuffer = null;
            th = th3;
        }
        if (th != null) {
            throw th;
        }
        Intrinsics.checkNotNull(bufferedSourceBuffer);
        ZipFilesKt.skipLocalHeader(bufferedSourceBuffer);
        return zipEntry.getCompressionMethod() == 0 ? new FixedLengthSource(bufferedSourceBuffer, zipEntry.getSize(), true) : new FixedLengthSource(new InflaterSource(new FixedLengthSource(bufferedSourceBuffer, zipEntry.getCompressedSize(), true), new Inflater(true)), zipEntry.getSize(), false);
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean mustCreate, boolean mustExist) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        List<Path> listA = a(dir, true);
        Intrinsics.checkNotNull(listA);
        return listA;
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return a(dir, false);
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean mustCreate) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean mustExist) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean mustCreate) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void delete(@NotNull Path path, boolean mustExist) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/ZipFileSystem$a;", "", "<init>", "()V", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        new a(null);
        d = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null);
    }
}
