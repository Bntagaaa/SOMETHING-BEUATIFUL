package okio.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.l;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.ByteString;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\f\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\n\u001a\u0016\u0010\u0001\u001a\u0004\u0018\u00010\u0000*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003*\u00020\u0000H\u0080\b¢\u0006\u0004\b\b\u0010\u0006\u001a\u0014\u0010\n\u001a\u00020\t*\u00020\u0000H\u0080\b¢\u0006\u0004\b\n\u0010\u000b\u001a\u0014\u0010\f\u001a\u00020\t*\u00020\u0000H\u0080\b¢\u0006\u0004\b\f\u0010\u000b\u001a\u0016\u0010\u000e\u001a\u0004\u0018\u00010\r*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0014\u0010\u0010\u001a\u00020\u0007*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0014\u0010\u0012\u001a\u00020\u0004*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u0000*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0014\u0010\u0002\u001a\u0014\u0010\u0015\u001a\u00020\t*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0015\u0010\u000b\u001a$\u0010\u0018\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\tH\u0080\b¢\u0006\u0004\b\u0018\u0010\u0019\u001a$\u0010\u0018\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\tH\u0080\b¢\u0006\u0004\b\u0018\u0010\u001a\u001a$\u0010\u0018\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\tH\u0080\b¢\u0006\u0004\b\u0018\u0010\u001c\u001a#\u0010\u0018\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0018\u0010\u001d\u001a\u001c\u0010\u001f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0000H\u0080\b¢\u0006\u0004\b\u001f\u0010 \u001a\u0014\u0010!\u001a\u00020\u0000*\u00020\u0000H\u0080\b¢\u0006\u0004\b!\u0010\u0002\u001a\u001c\u0010#\u001a\u00020\"*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0000H\u0080\b¢\u0006\u0004\b#\u0010$\u001a\u001e\u0010&\u001a\u00020\t*\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010%H\u0080\b¢\u0006\u0004\b&\u0010'\u001a\u0014\u0010(\u001a\u00020\"*\u00020\u0000H\u0080\b¢\u0006\u0004\b(\u0010)\u001a\u0014\u0010*\u001a\u00020\u0004*\u00020\u0000H\u0080\b¢\u0006\u0004\b*\u0010\u0013\u001a\u001b\u0010+\u001a\u00020\u0000*\u00020\u00042\u0006\u0010\u0017\u001a\u00020\tH\u0000¢\u0006\u0004\b+\u0010,\u001a\u001b\u0010-\u001a\u00020\u0000*\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\tH\u0000¢\u0006\u0004\b-\u0010.¨\u0006/"}, d2 = {"Lokio/Path;", "commonRoot", "(Lokio/Path;)Lokio/Path;", "", "", "commonSegments", "(Lokio/Path;)Ljava/util/List;", "Lokio/ByteString;", "commonSegmentsBytes", "", "commonIsAbsolute", "(Lokio/Path;)Z", "commonIsRelative", "", "commonVolumeLetter", "(Lokio/Path;)Ljava/lang/Character;", "commonNameBytes", "(Lokio/Path;)Lokio/ByteString;", "commonName", "(Lokio/Path;)Ljava/lang/String;", "commonParent", "commonIsRoot", "child", "normalize", "commonResolve", "(Lokio/Path;Ljava/lang/String;Z)Lokio/Path;", "(Lokio/Path;Lokio/ByteString;Z)Lokio/Path;", "Lokio/Buffer;", "(Lokio/Path;Lokio/Buffer;Z)Lokio/Path;", "(Lokio/Path;Lokio/Path;Z)Lokio/Path;", "other", "commonRelativeTo", "(Lokio/Path;Lokio/Path;)Lokio/Path;", "commonNormalized", "", "commonCompareTo", "(Lokio/Path;Lokio/Path;)I", "", "commonEquals", "(Lokio/Path;Ljava/lang/Object;)Z", "commonHashCode", "(Lokio/Path;)I", "commonToString", "commonToPath", "(Ljava/lang/String;Z)Lokio/Path;", "toPath", "(Lokio/Buffer;Z)Lokio/Path;", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
@JvmName(name = "-Path")
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/internal/-Path\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,406:1\n59#1,22:407\n209#1:433\n209#1:434\n1549#2:429\n1620#2,3:430\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/internal/-Path\n*L\n53#1:407,22\n199#1:433\n204#1:434\n53#1:429\n53#1:430,3\n*E\n"})
/* renamed from: okio.internal.-Path, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Path {

    /* renamed from: a, reason: collision with root package name */
    public static final ByteString f6829a;

    /* renamed from: b, reason: collision with root package name */
    public static final ByteString f6830b;
    public static final ByteString c;
    public static final ByteString d;
    public static final ByteString e;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        f6829a = companion.encodeUtf8("/");
        f6830b = companion.encodeUtf8("\\");
        c = companion.encodeUtf8("/\\");
        d = companion.encodeUtf8(".");
        e = companion.encodeUtf8("..");
    }

    @Nullable
    public static final okio.Path commonRoot(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        int iAccess$rootLength = access$rootLength(path);
        if (iAccess$rootLength == -1) {
            return null;
        }
        return new okio.Path(path.getBytes().substring(0, iAccess$rootLength));
    }

    @NotNull
    public static final List<ByteString> commonSegmentsBytes(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int iAccess$rootLength = access$rootLength(path);
        if (iAccess$rootLength == -1) {
            iAccess$rootLength = 0;
        } else if (iAccess$rootLength < path.getBytes().size() && path.getBytes().getByte(iAccess$rootLength) == 92) {
            iAccess$rootLength++;
        }
        int size = path.getBytes().size();
        int i = iAccess$rootLength;
        while (iAccess$rootLength < size) {
            if (path.getBytes().getByte(iAccess$rootLength) == 47 || path.getBytes().getByte(iAccess$rootLength) == 92) {
                arrayList.add(path.getBytes().substring(i, iAccess$rootLength));
                i = iAccess$rootLength + 1;
            }
            iAccess$rootLength++;
        }
        if (i < path.getBytes().size()) {
            arrayList.add(path.getBytes().substring(i, path.getBytes().size()));
        }
        return arrayList;
    }

    public static final int access$rootLength(okio.Path path) {
        if (path.getBytes().size() != 0) {
            if (path.getBytes().getByte(0) != 47) {
                if (path.getBytes().getByte(0) == 92) {
                    if (path.getBytes().size() > 2 && path.getBytes().getByte(1) == 92) {
                        int iIndexOf = path.getBytes().indexOf(f6830b, 2);
                        return iIndexOf == -1 ? path.getBytes().size() : iIndexOf;
                    }
                } else if (path.getBytes().size() > 2 && path.getBytes().getByte(1) == 58 && path.getBytes().getByte(2) == 92) {
                    char c2 = (char) path.getBytes().getByte(0);
                    if ('a' <= c2 && c2 < '{') {
                        return 3;
                    }
                    if ('A' <= c2 && c2 < '[') {
                        return 3;
                    }
                }
            }
            return 1;
        }
        return -1;
    }

    public static final boolean commonIsAbsolute(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return access$rootLength(path) != -1;
    }

    public static final boolean commonIsRelative(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return access$rootLength(path) == -1;
    }

    @Nullable
    public static final Character commonVolumeLetter(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (ByteString.indexOf$default(path.getBytes(), f6829a, 0, 2, (Object) null) != -1 || path.getBytes().size() < 2 || path.getBytes().getByte(1) != 58) {
            return null;
        }
        char c2 = (char) path.getBytes().getByte(0);
        if (('a' > c2 || c2 >= '{') && ('A' > c2 || c2 >= '[')) {
            return null;
        }
        return Character.valueOf(c2);
    }

    public static final int access$getIndexOfLastSlash(okio.Path path) {
        int iLastIndexOf$default = ByteString.lastIndexOf$default(path.getBytes(), f6829a, 0, 2, (Object) null);
        return iLastIndexOf$default != -1 ? iLastIndexOf$default : ByteString.lastIndexOf$default(path.getBytes(), f6830b, 0, 2, (Object) null);
    }

    @NotNull
    public static final ByteString commonNameBytes(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        int iAccess$getIndexOfLastSlash = access$getIndexOfLastSlash(path);
        if (iAccess$getIndexOfLastSlash != -1) {
            return ByteString.substring$default(path.getBytes(), iAccess$getIndexOfLastSlash + 1, 0, 2, null);
        }
        return (path.volumeLetter() == null || path.getBytes().size() != 2) ? path.getBytes() : ByteString.EMPTY;
    }

    @NotNull
    public static final String commonName(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.nameBytes().utf8();
    }

    @Nullable
    public static final okio.Path commonParent(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (Intrinsics.areEqual(path.getBytes(), d) || Intrinsics.areEqual(path.getBytes(), f6829a) || Intrinsics.areEqual(path.getBytes(), f6830b) || access$lastSegmentIsDotDot(path)) {
            return null;
        }
        int iAccess$getIndexOfLastSlash = access$getIndexOfLastSlash(path);
        if (iAccess$getIndexOfLastSlash != 2 || path.volumeLetter() == null) {
            if (iAccess$getIndexOfLastSlash == 1 && path.getBytes().startsWith(f6830b)) {
                return null;
            }
            if (iAccess$getIndexOfLastSlash == -1 && path.volumeLetter() != null) {
                if (path.getBytes().size() == 2) {
                    return null;
                }
                return new okio.Path(ByteString.substring$default(path.getBytes(), 0, 2, 1, null));
            }
            if (iAccess$getIndexOfLastSlash == -1) {
                return new okio.Path(d);
            }
            if (iAccess$getIndexOfLastSlash == 0) {
                return new okio.Path(ByteString.substring$default(path.getBytes(), 0, 1, 1, null));
            }
            return new okio.Path(ByteString.substring$default(path.getBytes(), 0, iAccess$getIndexOfLastSlash, 1, null));
        }
        if (path.getBytes().size() == 3) {
            return null;
        }
        return new okio.Path(ByteString.substring$default(path.getBytes(), 0, 3, 1, null));
    }

    public static final boolean access$lastSegmentIsDotDot(okio.Path path) {
        return path.getBytes().endsWith(e) && (path.getBytes().size() == 2 || path.getBytes().rangeEquals(path.getBytes().size() + (-3), f6829a, 0, 1) || path.getBytes().rangeEquals(path.getBytes().size() + (-3), f6830b, 0, 1));
    }

    public static final boolean commonIsRoot(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return access$rootLength(path) == path.getBytes().size();
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull String child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(new Buffer().writeUtf8(child), false), z);
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull ByteString child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(new Buffer().write(child), false), z);
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull Buffer child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(child, false), z);
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull okio.Path child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        if (child.isAbsolute() || child.volumeLetter() != null) {
            return child;
        }
        ByteString byteStringA = a(path);
        if (byteStringA == null && (byteStringA = a(child)) == null) {
            byteStringA = c(okio.Path.DIRECTORY_SEPARATOR);
        }
        Buffer buffer = new Buffer();
        buffer.write(path.getBytes());
        if (buffer.size() > 0) {
            buffer.write(byteStringA);
        }
        buffer.write(child.getBytes());
        return toPath(buffer, z);
    }

    @NotNull
    public static final okio.Path commonRelativeTo(@NotNull okio.Path path, @NotNull okio.Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (!Intrinsics.areEqual(path.getRoot(), other.getRoot())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + path + " and " + other).toString());
        }
        List<ByteString> segmentsBytes = path.getSegmentsBytes();
        List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
        int iMin = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i = 0;
        while (i < iMin && Intrinsics.areEqual(segmentsBytes.get(i), segmentsBytes2.get(i))) {
            i++;
        }
        if (i != iMin || path.getBytes().size() != other.getBytes().size()) {
            if (segmentsBytes2.subList(i, segmentsBytes2.size()).indexOf(e) != -1) {
                throw new IllegalArgumentException(("Impossible relative path to resolve: " + path + " and " + other).toString());
            }
            Buffer buffer = new Buffer();
            ByteString byteStringA = a(other);
            if (byteStringA == null && (byteStringA = a(path)) == null) {
                byteStringA = c(okio.Path.DIRECTORY_SEPARATOR);
            }
            int size = segmentsBytes2.size();
            for (int i2 = i; i2 < size; i2++) {
                buffer.write(e);
                buffer.write(byteStringA);
            }
            int size2 = segmentsBytes.size();
            while (i < size2) {
                buffer.write(segmentsBytes.get(i));
                buffer.write(byteStringA);
                i++;
            }
            return toPath(buffer, false);
        }
        return Path.Companion.get$default(okio.Path.INSTANCE, ".", false, 1, (Object) null);
    }

    @NotNull
    public static final okio.Path commonNormalized(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return okio.Path.INSTANCE.get(path.toString(), true);
    }

    public static final ByteString a(okio.Path path) {
        ByteString bytes = path.getBytes();
        ByteString byteString = f6829a;
        if (ByteString.indexOf$default(bytes, byteString, 0, 2, (Object) null) != -1) {
            return byteString;
        }
        ByteString bytes2 = path.getBytes();
        ByteString byteString2 = f6830b;
        if (ByteString.indexOf$default(bytes2, byteString2, 0, 2, (Object) null) != -1) {
            return byteString2;
        }
        return null;
    }

    public static final int commonCompareTo(@NotNull okio.Path path, @NotNull okio.Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return path.getBytes().compareTo(other.getBytes());
    }

    public static final boolean commonEquals(@NotNull okio.Path path, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return (obj instanceof okio.Path) && Intrinsics.areEqual(((okio.Path) obj).getBytes(), path.getBytes());
    }

    public static final int commonHashCode(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.getBytes().hashCode();
    }

    @NotNull
    public static final String commonToString(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.getBytes().utf8();
    }

    @NotNull
    public static final okio.Path commonToPath(@NotNull String str, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toPath(new Buffer().writeUtf8(str), z);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0116 A[EDGE_INSN: B:98:0x0116->B:81:0x0116 BREAK  A[LOOP:1: B:53:0x00b3->B:112:0x00b3], SYNTHETIC] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final okio.Path toPath(@org.jetbrains.annotations.NotNull okio.Buffer r18, boolean r19) throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.Path.toPath(okio.Buffer, boolean):okio.Path");
    }

    public static final ByteString c(String str) {
        if (Intrinsics.areEqual(str, "/")) {
            return f6829a;
        }
        if (Intrinsics.areEqual(str, "\\")) {
            return f6830b;
        }
        throw new IllegalArgumentException(_COROUTINE.a.i("not a directory separator: ", str));
    }

    public static final ByteString b(byte b2) {
        if (b2 == 47) {
            return f6829a;
        }
        if (b2 == 92) {
            return f6830b;
        }
        throw new IllegalArgumentException(_COROUTINE.a.d(b2, "not a directory separator: "));
    }

    @NotNull
    public static final List<String> commonSegments(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int iAccess$rootLength = access$rootLength(path);
        if (iAccess$rootLength == -1) {
            iAccess$rootLength = 0;
        } else if (iAccess$rootLength < path.getBytes().size() && path.getBytes().getByte(iAccess$rootLength) == 92) {
            iAccess$rootLength++;
        }
        int size = path.getBytes().size();
        int i = iAccess$rootLength;
        while (iAccess$rootLength < size) {
            if (path.getBytes().getByte(iAccess$rootLength) == 47 || path.getBytes().getByte(iAccess$rootLength) == 92) {
                arrayList.add(path.getBytes().substring(i, iAccess$rootLength));
                i = iAccess$rootLength + 1;
            }
            iAccess$rootLength++;
        }
        if (i < path.getBytes().size()) {
            arrayList.add(path.getBytes().substring(i, path.getBytes().size()));
        }
        ArrayList arrayList2 = new ArrayList(l.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ByteString) it.next()).utf8());
        }
        return arrayList2;
    }
}
