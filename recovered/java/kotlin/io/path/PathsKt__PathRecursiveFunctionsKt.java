package kotlin.io.path;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemException;
import java.nio.file.FileSystemLoopException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.SecureDirectoryStream;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.path.PathsKt__PathRecursiveFunctionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a~\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002Q\b\u0002\u0010\n\u001aK\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0001\u0012\u0017\u0012\u00150\u0006j\u0002`\u0007¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a»\u0001\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002Q\b\u0002\u0010\n\u001aK\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0001\u0012\u0017\u0012\u00150\u0006j\u0002`\u0007¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u00022\u0006\u0010\f\u001a\u00020\u000b2C\b\u0002\u0010\u0013\u001a=\u0012\u0004\u0012\u00020\u0010\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0001\u0012\u0004\u0012\u00020\u00110\u0002¢\u0006\u0002\b\u0012H\u0007¢\u0006\u0004\b\u000e\u0010\u0014\u001a\u0013\u0010\u0016\u001a\u00020\u0015*\u00020\u0000H\u0007¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0013\u0010\u0018\u001a\u00020\u0015*\u00020\u0000H\u0000¢\u0006\u0004\b\u0018\u0010\u0017¨\u0006\u0019"}, d2 = {"Ljava/nio/file/Path;", "target", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "source", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "Lkotlin/io/path/OnErrorResult;", "onError", "", "followLinks", "overwrite", "copyToRecursively", "(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZ)Ljava/nio/file/Path;", "Lkotlin/io/path/CopyActionContext;", "Lkotlin/io/path/CopyActionResult;", "Lkotlin/ExtensionFunctionType;", "copyAction", "(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Ljava/nio/file/Path;", "", "deleteRecursively", "(Ljava/nio/file/Path;)V", "checkFileName", "kotlin-stdlib-jdk7"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/io/path/PathsKt")
@SourceDebugExtension({"SMAP\nPathRecursiveFunctions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathRecursiveFunctions.kt\nkotlin/io/path/PathsKt__PathRecursiveFunctionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,530:1\n376#1,2:534\n384#1:536\n384#1:537\n378#1,4:538\n376#1,2:542\n384#1:544\n378#1,4:545\n384#1:549\n376#1,6:550\n376#1,2:556\n384#1:558\n378#1,4:559\n1#2:531\n1863#3,2:532\n*S KotlinDebug\n*F\n+ 1 PathRecursiveFunctions.kt\nkotlin/io/path/PathsKt__PathRecursiveFunctionsKt\n*L\n392#1:534,2\n407#1:536\n410#1:537\n392#1:538,4\n418#1:542,2\n419#1:544\n418#1:545,4\n430#1:549\n438#1:550,6\n461#1:556,2\n462#1:558\n461#1:559,4\n314#1:532,2\n*E\n"})
/* loaded from: classes2.dex */
class PathsKt__PathRecursiveFunctionsKt extends j {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[CopyActionResult.values().length];
            try {
                iArr[CopyActionResult.CONTINUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CopyActionResult.TERMINATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CopyActionResult.SKIP_SUBTREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[OnErrorResult.values().length];
            try {
                iArr2[OnErrorResult.TERMINATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[OnErrorResult.SKIP_SUBTREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final /* synthetic */ FileVisitResult access$copyToRecursively$copy(ArrayList arrayList, Function3 function3, Path path, Path path2, Path path3, Function3 function32, Path path4, BasicFileAttributes basicFileAttributes) {
        return b(arrayList, function3, path, path2, path3, function32, path4);
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class a implements Function3 {

        /* renamed from: a, reason: collision with root package name */
        public static final a f5807a = new a();

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            return invoke(com.google.appinventor.components.runtime.b.m(obj), com.google.appinventor.components.runtime.b.m(obj2), (Exception) obj3);
        }

        public final Void invoke(Path path, Path path2, Exception exception) throws Exception {
            Intrinsics.checkNotNullParameter(path, "<unused var>");
            Intrinsics.checkNotNullParameter(path2, "<unused var>");
            Intrinsics.checkNotNullParameter(exception, "exception");
            throw exception;
        }
    }

    public static /* synthetic */ Path copyToRecursively$default(Path path, Path path2, Function3 function3, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            function3 = a.f5807a;
        }
        return copyToRecursively(path, path2, (Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult>) function3, z, z2);
    }

    @SinceKotlin(version = "1.8")
    @ExperimentalPathApi
    @NotNull
    public static final Path copyToRecursively(@NotNull Path path, @NotNull Path target, @NotNull Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> onError, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(onError, "onError");
        if (z2) {
            return copyToRecursively(path, target, onError, z, new l(z, 0));
        }
        return copyToRecursively$default(path, target, onError, z, (Function3) null, 8, (Object) null);
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class b implements Function3 {

        /* renamed from: a, reason: collision with root package name */
        public static final b f5808a = new b();

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            return invoke(com.google.appinventor.components.runtime.b.m(obj), com.google.appinventor.components.runtime.b.m(obj2), (Exception) obj3);
        }

        public final Void invoke(Path path, Path path2, Exception exception) throws Exception {
            Intrinsics.checkNotNullParameter(path, "<unused var>");
            Intrinsics.checkNotNullParameter(path2, "<unused var>");
            Intrinsics.checkNotNullParameter(exception, "exception");
            throw exception;
        }
    }

    public static /* synthetic */ Path copyToRecursively$default(Path path, Path path2, Function3 function3, boolean z, Function3 function32, int i, Object obj) {
        if ((i & 2) != 0) {
            function3 = b.f5808a;
        }
        if ((i & 8) != 0) {
            function32 = new l(z, 1);
        }
        return copyToRecursively(path, path2, (Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult>) function3, z, (Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult>) function32);
    }

    @SinceKotlin(version = "1.8")
    @ExperimentalPathApi
    @NotNull
    public static final Path copyToRecursively(@NotNull final Path path, @NotNull final Path target, @NotNull final Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> onError, boolean z, @NotNull final Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult> copyAction) throws IOException {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Intrinsics.checkNotNullParameter(copyAction, "copyAction");
        LinkOption[] linkOptions = LinkFollowing.INSTANCE.toLinkOptions(z);
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
        if (!Files.exists(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
            throw new NoSuchFileException(path.toString(), target.toString(), "The source file doesn't exist.");
        }
        boolean zStartsWith = false;
        if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && (z || !Files.isSymbolicLink(path))) {
            boolean z2 = Files.exists(target, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && !Files.isSymbolicLink(target);
            if (!z2 || !Files.isSameFile(path, target)) {
                if (Intrinsics.areEqual(path.getFileSystem(), target.getFileSystem())) {
                    if (z2) {
                        zStartsWith = target.toRealPath(new LinkOption[0]).startsWith(path.toRealPath(new LinkOption[0]));
                    } else {
                        Path parent = target.getParent();
                        if (parent != null && Files.exists(parent, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && parent.toRealPath(new LinkOption[0]).startsWith(path.toRealPath(new LinkOption[0]))) {
                            zStartsWith = true;
                        }
                    }
                }
                if (zStartsWith) {
                    throw new FileSystemException(path.toString(), target.toString(), "Recursively copying a directory into its subdirectory is prohibited.");
                }
            }
        }
        final Path pathNormalize = target.normalize();
        final ArrayList arrayList = new ArrayList();
        p.visitFileTree$default(path, 0, z, new Function1() { // from class: kotlin.io.path.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                final Path path2 = path;
                final Path path3 = target;
                final Path path4 = pathNormalize;
                FileVisitorBuilder visitFileTree = (FileVisitorBuilder) obj;
                Intrinsics.checkNotNullParameter(visitFileTree, "$this$visitFileTree");
                final ArrayList arrayList2 = arrayList;
                final Function3 function3 = copyAction;
                final Function3 function32 = onError;
                visitFileTree.onPreVisitDirectory(new Function2() { // from class: kotlin.io.path.n
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        Path path5 = path2;
                        Path path6 = path3;
                        Path path7 = path4;
                        Path directory = (Path) obj2;
                        BasicFileAttributes attributes = (BasicFileAttributes) obj3;
                        Intrinsics.checkNotNullParameter(directory, "directory");
                        Intrinsics.checkNotNullParameter(attributes, "attributes");
                        ArrayList arrayList3 = arrayList2;
                        FileVisitResult fileVisitResultB = PathsKt__PathRecursiveFunctionsKt.b(arrayList3, function3, path5, path6, path7, function32, directory);
                        if (fileVisitResultB == FileVisitResult.CONTINUE) {
                            arrayList3.add(directory);
                        }
                        return fileVisitResultB;
                    }
                });
                visitFileTree.onVisitFile(new PathsKt__PathRecursiveFunctionsKt.c(arrayList2, function3, path2, path3, path4, function32));
                visitFileTree.onVisitFileFailed(new PathsKt__PathRecursiveFunctionsKt.d(function32, path2, path3, path4));
                visitFileTree.onPostVisitDirectory(new Function2() { // from class: kotlin.io.path.o
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        Path path5 = path2;
                        Path path6 = path3;
                        Path path7 = path4;
                        Path directory = (Path) obj2;
                        IOException iOException = (IOException) obj3;
                        Intrinsics.checkNotNullParameter(directory, "directory");
                        CollectionsKt.removeLast(arrayList2);
                        return iOException == null ? FileVisitResult.CONTINUE : PathsKt__PathRecursiveFunctionsKt.d(function32, path5, path6, path7, directory, iOException);
                    }
                });
                return Unit.INSTANCE;
            }
        }, 1, (Object) null);
        return target;
    }

    public static final Path c(Path path, Path path2, Path path3, Path path4) throws IllegalFileNameException {
        Path pathResolve = path2.resolve(p.relativeTo(path4, path).toString());
        if (!pathResolve.normalize().startsWith(path3)) {
            throw new IllegalFileNameException(path4, pathResolve, "Copying files to outside the specified target directory is prohibited. The directory being recursively copied might contain an entry with an illegal name.");
        }
        Intrinsics.checkNotNull(pathResolve);
        return pathResolve;
    }

    public static final FileVisitResult d(Function3 function3, Path path, Path path2, Path path3, Path path4, Exception exc) {
        int i = WhenMappings.$EnumSwitchMapping$1[((OnErrorResult) function3.invoke(path4, c(path, path2, path3, path4), exc)).ordinal()];
        if (i == 1) {
            return FileVisitResult.TERMINATE;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return FileVisitResult.SKIP_SUBTREE;
    }

    public static final FileVisitResult b(ArrayList arrayList, Function3 function3, Path path, Path path2, Path path3, Function3 function32, Path path4) {
        try {
            if (!arrayList.isEmpty()) {
                checkFileName(path4);
                Object objLast = CollectionsKt___CollectionsKt.last((List<? extends Object>) ((List) arrayList));
                Intrinsics.checkNotNullExpressionValue(objLast, "last(...)");
                a(path4, com.google.appinventor.components.runtime.b.m(objLast));
            }
            int i = WhenMappings.$EnumSwitchMapping$0[((CopyActionResult) function3.invoke(kotlin.io.path.a.f5809a, path4, c(path, path2, path3, path4))).ordinal()];
            if (i == 1) {
                return FileVisitResult.CONTINUE;
            }
            if (i == 2) {
                return FileVisitResult.TERMINATE;
            }
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            return FileVisitResult.SKIP_SUBTREE;
        } catch (Exception e) {
            return d(function32, path, path2, path3, path4, e);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function2<Path, BasicFileAttributes, FileVisitResult> {
        public final /* synthetic */ ArrayList h;
        public final /* synthetic */ Function3 i;
        public final /* synthetic */ Path j;
        public final /* synthetic */ Path k;
        public final /* synthetic */ Path l;
        public final /* synthetic */ Function3 m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ArrayList arrayList, Function3 function3, Path path, Path path2, Path path3, Function3 function32) {
            super(2, Intrinsics.Kotlin.class, "copy", "copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;", 0);
            this.h = arrayList;
            this.i = function3;
            this.j = path;
            this.k = path2;
            this.l = path3;
            this.m = function32;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ FileVisitResult invoke(Path path, BasicFileAttributes basicFileAttributes) {
            return invoke2(com.google.appinventor.components.runtime.b.m(path), k.e(basicFileAttributes));
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final FileVisitResult invoke2(Path p0, BasicFileAttributes p1) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            return PathsKt__PathRecursiveFunctionsKt.access$copyToRecursively$copy(this.h, this.i, this.j, this.k, this.l, this.m, p0, p1);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class d extends FunctionReferenceImpl implements Function2<Path, Exception, FileVisitResult> {
        public final /* synthetic */ Function3 h;
        public final /* synthetic */ Path i;
        public final /* synthetic */ Path j;
        public final /* synthetic */ Path k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Function3 function3, Path path, Path path2, Path path3) {
            super(2, Intrinsics.Kotlin.class, "error", "copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;", 0);
            this.h = function3;
            this.i = path;
            this.j = path2;
            this.k = path3;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ FileVisitResult invoke(Path path, Exception exc) {
            return invoke2(com.google.appinventor.components.runtime.b.m(path), exc);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final FileVisitResult invoke2(Path p0, Exception p1) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            return PathsKt__PathRecursiveFunctionsKt.d(this.h, this.i, this.j, this.k, p0, p1);
        }
    }

    @SinceKotlin(version = "1.8")
    @ExperimentalPathApi
    public static final void deleteRecursively(@NotNull Path path) {
        DirectoryStream directoryStreamNewDirectoryStream;
        Intrinsics.checkNotNullParameter(path, "<this>");
        boolean z = false;
        boolean z2 = true;
        kotlin.io.path.d dVar = new kotlin.io.path.d(0, 1, null);
        Path parent = path.getParent();
        if (parent != null) {
            try {
                directoryStreamNewDirectoryStream = Files.newDirectoryStream(parent);
            } catch (Throwable unused) {
                directoryStreamNewDirectoryStream = null;
            }
            if (directoryStreamNewDirectoryStream != null) {
                try {
                    DirectoryStream directoryStreamD = kotlin.io.path.c.d(directoryStreamNewDirectoryStream);
                    if (kotlin.io.path.c.v(directoryStreamD)) {
                        dVar.setPath(parent);
                        SecureDirectoryStream secureDirectoryStreamS = kotlin.io.path.c.s(directoryStreamD);
                        Path fileName = path.getFileName();
                        Intrinsics.checkNotNullExpressionValue(fileName, "getFileName(...)");
                        f(secureDirectoryStreamS, fileName, null, dVar);
                    } else {
                        z = true;
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(directoryStreamNewDirectoryStream, null);
                    z2 = z;
                } finally {
                }
            }
        }
        if (z2) {
            h(path, null, dVar);
        }
        List<Exception> collectedExceptions = dVar.getCollectedExceptions();
        if (collectedExceptions.isEmpty()) {
            return;
        }
        FileSystemException fileSystemExceptionC = k.c();
        Iterator<T> it = collectedExceptions.iterator();
        while (it.hasNext()) {
            ExceptionsKt.addSuppressed(fileSystemExceptionC, (Exception) it.next());
        }
        throw fileSystemExceptionC;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b A[Catch: Exception -> 0x0013, TRY_ENTER, TryCatch #1 {Exception -> 0x0013, blocks: (B:4:0x0005, B:7:0x0015, B:8:0x001d, B:12:0x003b, B:14:0x0041, B:16:0x004e, B:17:0x0054), top: B:26:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0041 A[Catch: Exception -> 0x0013, TRY_LEAVE, TryCatch #1 {Exception -> 0x0013, blocks: (B:4:0x0005, B:7:0x0015, B:8:0x001d, B:12:0x003b, B:14:0x0041, B:16:0x004e, B:17:0x0054), top: B:26:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0054 A[Catch: Exception -> 0x0013, NoSuchFileException -> 0x005d, TRY_LEAVE, TryCatch #0 {NoSuchFileException -> 0x005d, blocks: (B:16:0x004e, B:17:0x0054), top: B:24:0x003f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void f(java.nio.file.SecureDirectoryStream r3, java.nio.file.Path r4, java.nio.file.Path r5, kotlin.io.path.d r6) throws java.io.IOException {
        /*
            r6.enterEntry(r4)
            if (r5 == 0) goto L15
            java.nio.file.Path r0 = r6.getPath()     // Catch: java.lang.Exception -> L13
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)     // Catch: java.lang.Exception -> L13
            checkFileName(r0)     // Catch: java.lang.Exception -> L13
            a(r0, r5)     // Catch: java.lang.Exception -> L13
            goto L15
        L13:
            r3 = move-exception
            goto L5a
        L15:
            r5 = 1
            java.nio.file.LinkOption[] r0 = new java.nio.file.LinkOption[r5]     // Catch: java.lang.Exception -> L13
            java.nio.file.LinkOption r1 = java.nio.file.LinkOption.NOFOLLOW_LINKS     // Catch: java.lang.Exception -> L13
            r2 = 0
            r0[r2] = r1     // Catch: java.lang.Exception -> L13
            java.lang.Class<java.nio.file.attribute.BasicFileAttributeView> r1 = java.nio.file.attribute.BasicFileAttributeView.class
            java.lang.Object[] r5 = java.util.Arrays.copyOf(r0, r5)     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L38
            java.nio.file.LinkOption[] r5 = (java.nio.file.LinkOption[]) r5     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L38
            java.nio.file.attribute.FileAttributeView r5 = r3.getFileAttributeView(r4, r1, r5)     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L38
            java.nio.file.attribute.BasicFileAttributeView r5 = (java.nio.file.attribute.BasicFileAttributeView) r5     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L38
            java.nio.file.attribute.BasicFileAttributes r5 = r5.readAttributes()     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L38
            boolean r5 = r5.isDirectory()     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L38
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L38
            goto L39
        L38:
            r5 = 0
        L39:
            if (r5 == 0) goto L3f
            boolean r2 = r5.booleanValue()     // Catch: java.lang.Exception -> L13
        L3f:
            if (r2 == 0) goto L54
            int r5 = r6.getTotalExceptions()     // Catch: java.lang.Exception -> L13
            e(r3, r4, r6)     // Catch: java.lang.Exception -> L13
            int r0 = r6.getTotalExceptions()     // Catch: java.lang.Exception -> L13
            if (r5 != r0) goto L5d
            r3.deleteDirectory(r4)     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L5d
            kotlin.Unit r3 = kotlin.Unit.INSTANCE     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L5d
            goto L5d
        L54:
            r3.deleteFile(r4)     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L5d
            kotlin.Unit r3 = kotlin.Unit.INSTANCE     // Catch: java.lang.Exception -> L13 java.nio.file.NoSuchFileException -> L5d
            goto L5d
        L5a:
            r6.collect(r3)
        L5d:
            r6.exitEntry(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.f(java.nio.file.SecureDirectoryStream, java.nio.file.Path, java.nio.file.Path, kotlin.io.path.d):void");
    }

    public static final void e(SecureDirectoryStream secureDirectoryStream, Path path, kotlin.io.path.d dVar) throws IOException {
        SecureDirectoryStream secureDirectoryStreamNewDirectoryStream;
        try {
            try {
                secureDirectoryStreamNewDirectoryStream = secureDirectoryStream.newDirectoryStream(path, LinkOption.NOFOLLOW_LINKS);
            } catch (Exception e) {
                dVar.collect(e);
                return;
            }
        } catch (NoSuchFileException unused) {
            secureDirectoryStreamNewDirectoryStream = null;
        }
        if (secureDirectoryStreamNewDirectoryStream == null) {
            return;
        }
        try {
            Iterator it = secureDirectoryStreamNewDirectoryStream.iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                Path fileName = ((Path) it.next()).getFileName();
                Intrinsics.checkNotNullExpressionValue(fileName, "getFileName(...)");
                f(secureDirectoryStreamNewDirectoryStream, fileName, dVar.getPath(), dVar);
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(secureDirectoryStreamNewDirectoryStream, null);
        } finally {
        }
    }

    public static final void h(Path path, Path path2, kotlin.io.path.d dVar) throws IOException {
        if (path2 != null) {
            try {
                checkFileName(path);
                a(path, path2);
            } catch (Exception e) {
                dVar.collect(e);
                return;
            }
        }
        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
            int totalExceptions = dVar.getTotalExceptions();
            g(path, dVar);
            if (totalExceptions == dVar.getTotalExceptions()) {
                Files.deleteIfExists(path);
                return;
            }
            return;
        }
        Files.deleteIfExists(path);
    }

    public static final void g(Path path, kotlin.io.path.d dVar) throws IOException {
        DirectoryStream<Path> directoryStreamNewDirectoryStream;
        try {
            try {
                directoryStreamNewDirectoryStream = Files.newDirectoryStream(path);
            } catch (Exception e) {
                dVar.collect(e);
                return;
            }
        } catch (NoSuchFileException unused) {
            directoryStreamNewDirectoryStream = null;
        }
        if (directoryStreamNewDirectoryStream == null) {
            return;
        }
        try {
            Iterator<Path> it = directoryStreamNewDirectoryStream.iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                Path next = it.next();
                Intrinsics.checkNotNull(next);
                h(next, path, dVar);
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(directoryStreamNewDirectoryStream, null);
        } finally {
        }
    }

    public static final void checkFileName(@NotNull Path path) throws IllegalFileNameException {
        Intrinsics.checkNotNullParameter(path, "<this>");
        String name = p.getName(path);
        int iHashCode = name.hashCode();
        if (iHashCode != 46) {
            if (iHashCode != 1518) {
                if (iHashCode != 45679) {
                    if (iHashCode != 45724) {
                        if (iHashCode != 1472) {
                            if (iHashCode != 1473 || !name.equals("./")) {
                                return;
                            }
                        } else if (!name.equals("..")) {
                            return;
                        }
                    } else if (!name.equals("..\\")) {
                        return;
                    }
                } else if (!name.equals("../")) {
                    return;
                }
            } else if (!name.equals(".\\")) {
                return;
            }
        } else if (!name.equals(".")) {
            return;
        }
        throw new IllegalFileNameException(path);
    }

    public static final void a(Path path, Path path2) throws FileSystemLoopException {
        if (Files.isSymbolicLink(path) || !Files.isSameFile(path, path2)) {
            return;
        }
        kotlin.io.path.c.B();
        throw kotlin.io.path.c.i(path.toString());
    }
}
