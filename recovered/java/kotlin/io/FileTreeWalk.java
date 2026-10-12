package kotlin.io;

import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB\u001b\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000e\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00100\u000b¢\u0006\u0004\b\u0011\u0010\u000fJ'\u0010\u0014\u001a\u00020\u00002\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00100\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lkotlin/io/FileTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/io/File;", "start", "Lkotlin/io/FileWalkDirection;", "direction", "<init>", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V", "", "iterator", "()Ljava/util/Iterator;", "Lkotlin/Function1;", "", "function", "onEnter", "(Lkotlin/jvm/functions/Function1;)Lkotlin/io/FileTreeWalk;", "", "onLeave", "Lkotlin/Function2;", "Ljava/io/IOException;", "onFail", "(Lkotlin/jvm/functions/Function2;)Lkotlin/io/FileTreeWalk;", "", "depth", "maxDepth", "(I)Lkotlin/io/FileTreeWalk;", "b", "a", "FileTreeWalkIterator", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FileTreeWalk implements Sequence<File> {

    /* renamed from: a, reason: collision with root package name */
    public final File f5763a;

    /* renamed from: b, reason: collision with root package name */
    public final FileWalkDirection f5764b;
    public final Function1 c;
    public final Function1 d;
    public final Function2 e;
    public final int f;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FileTreeWalk(@NotNull File start, @NotNull FileWalkDirection direction) {
        this(start, direction, null, null, null, Integer.MAX_VALUE);
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(direction, "direction");
    }

    public FileTreeWalk(File file, FileWalkDirection fileWalkDirection, Function1 function1, Function1 function12, Function2 function2, int i) {
        this.f5763a = file;
        this.f5764b = fileWalkDirection;
        this.c = function1;
        this.d = function12;
        this.e = function2;
        this.f = i;
    }

    public /* synthetic */ FileTreeWalk(File file, FileWalkDirection fileWalkDirection, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i & 2) != 0 ? FileWalkDirection.TOP_DOWN : fileWalkDirection);
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<File> iterator() {
        return new FileTreeWalkIterator();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\"\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u0007¨\u0006\u000b"}, d2 = {"Lkotlin/io/FileTreeWalk$b;", "", "Ljava/io/File;", "root", "<init>", "(Ljava/io/File;)V", "step", "()Ljava/io/File;", "a", "Ljava/io/File;", "getRoot", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class b {

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public final File root;

        @Nullable
        public abstract File step();

        public b(@NotNull File root) {
            Intrinsics.checkNotNullParameter(root, "root");
            this.root = root;
        }

        @NotNull
        public final File getRoot() {
            return this.root;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\"\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/FileTreeWalk$a;", "Lkotlin/io/FileTreeWalk$b;", "Ljava/io/File;", "rootDir", "<init>", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFileTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTreeWalk.kt\nkotlin/io/FileTreeWalk$DirectoryState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n1#2:274\n*E\n"})
    public static abstract class a extends b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull File rootDir) {
            super(rootDir);
            Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\b\t\nB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;", "Lkotlin/collections/AbstractIterator;", "Ljava/io/File;", "<init>", "(Lkotlin/io/FileTreeWalk;)V", "", "computeNext", "()V", "a", "c", "b", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class FileTreeWalkIterator extends AbstractIterator<File> {
        public final ArrayDeque c;

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[FileWalkDirection.values().length];
                try {
                    iArr[FileWalkDirection.TOP_DOWN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[FileWalkDirection.BOTTOM_UP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public FileTreeWalkIterator() {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.c = arrayDeque;
            if (FileTreeWalk.this.f5763a.isDirectory()) {
                arrayDeque.push(a(FileTreeWalk.this.f5763a));
            } else if (FileTreeWalk.this.f5763a.isFile()) {
                arrayDeque.push(new b(this, FileTreeWalk.this.f5763a));
            } else {
                done();
            }
        }

        public final a a(File file) {
            int i = WhenMappings.$EnumSwitchMapping$0[FileTreeWalk.this.f5764b.ordinal()];
            if (i == 1) {
                return new c(this, file);
            }
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            return new a(this, file);
        }

        @Override // kotlin.collections.AbstractIterator
        public void computeNext() {
            File file;
            File fileStep;
            while (true) {
                ArrayDeque arrayDeque = this.c;
                b bVar = (b) arrayDeque.peek();
                if (bVar == null) {
                    file = null;
                    break;
                }
                fileStep = bVar.step();
                if (fileStep == null) {
                    arrayDeque.pop();
                } else if (Intrinsics.areEqual(fileStep, bVar.getRoot()) || !fileStep.isDirectory() || arrayDeque.size() >= FileTreeWalk.this.f) {
                    break;
                } else {
                    arrayDeque.push(a(fileStep));
                }
            }
            file = fileStep;
            if (file != null) {
                setNext(file);
            } else {
                done();
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$a;", "Lkotlin/io/FileTreeWalk$a;", "Ljava/io/File;", "rootDir", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "step", "()Ljava/io/File;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public final class a extends a {

            /* renamed from: b, reason: collision with root package name */
            public boolean f5765b;
            public File[] c;
            public int d;
            public boolean e;
            public final /* synthetic */ FileTreeWalkIterator f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(@NotNull FileTreeWalkIterator fileTreeWalkIterator, File rootDir) {
                super(rootDir);
                Intrinsics.checkNotNullParameter(rootDir, "rootDir");
                this.f = fileTreeWalkIterator;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x0054  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x006e  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
            @Override // kotlin.io.FileTreeWalk.b
            @org.jetbrains.annotations.Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.io.File step() {
                /*
                    r11 = this;
                    boolean r0 = r11.e
                    r1 = 0
                    r2 = 1
                    kotlin.io.FileTreeWalk$FileTreeWalkIterator r3 = r11.f
                    if (r0 != 0) goto L50
                    java.io.File[] r0 = r11.c
                    if (r0 != 0) goto L50
                    kotlin.io.FileTreeWalk r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.functions.Function1 r0 = kotlin.io.FileTreeWalk.access$getOnEnter$p(r0)
                    if (r0 == 0) goto L25
                    java.io.File r4 = r11.getRoot()
                    java.lang.Object r0 = r0.invoke(r4)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 != 0) goto L25
                    goto L84
                L25:
                    java.io.File r0 = r11.getRoot()
                    java.io.File[] r0 = r0.listFiles()
                    r11.c = r0
                    if (r0 != 0) goto L50
                    kotlin.io.FileTreeWalk r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.functions.Function2 r0 = kotlin.io.FileTreeWalk.access$getOnFail$p(r0)
                    if (r0 == 0) goto L4e
                    java.io.File r4 = r11.getRoot()
                    kotlin.io.AccessDeniedException r5 = new kotlin.io.AccessDeniedException
                    java.io.File r6 = r11.getRoot()
                    r7 = 0
                    java.lang.String r8 = "Cannot list files in a directory"
                    r9 = 2
                    r10 = 0
                    r5.<init>(r6, r7, r8, r9, r10)
                    r0.invoke(r4, r5)
                L4e:
                    r11.e = r2
                L50:
                    java.io.File[] r0 = r11.c
                    if (r0 == 0) goto L6a
                    int r4 = r11.d
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                    int r0 = r0.length
                    if (r4 >= r0) goto L6a
                    java.io.File[] r0 = r11.c
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                    int r1 = r11.d
                    int r2 = r1 + 1
                    r11.d = r2
                    r0 = r0[r1]
                    return r0
                L6a:
                    boolean r0 = r11.f5765b
                    if (r0 != 0) goto L75
                    r11.f5765b = r2
                    java.io.File r0 = r11.getRoot()
                    return r0
                L75:
                    kotlin.io.FileTreeWalk r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.functions.Function1 r0 = kotlin.io.FileTreeWalk.access$getOnLeave$p(r0)
                    if (r0 == 0) goto L84
                    java.io.File r2 = r11.getRoot()
                    r0.invoke(r2)
                L84:
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FileTreeWalk.FileTreeWalkIterator.a.step():java.io.File");
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$c;", "Lkotlin/io/FileTreeWalk$a;", "Ljava/io/File;", "rootDir", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "step", "()Ljava/io/File;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public final class c extends a {

            /* renamed from: b, reason: collision with root package name */
            public boolean f5767b;
            public File[] c;
            public int d;
            public final /* synthetic */ FileTreeWalkIterator e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(@NotNull FileTreeWalkIterator fileTreeWalkIterator, File rootDir) {
                super(rootDir);
                Intrinsics.checkNotNullParameter(rootDir, "rootDir");
                this.e = fileTreeWalkIterator;
            }

            /* JADX WARN: Code restructure failed: missing block: B:30:0x007a, code lost:
            
                if (r0.length == 0) goto L31;
             */
            /* JADX WARN: Removed duplicated region for block: B:20:0x0045  */
            @Override // kotlin.io.FileTreeWalk.b
            @org.jetbrains.annotations.Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.io.File step() {
                /*
                    r10 = this;
                    boolean r0 = r10.f5767b
                    r1 = 0
                    kotlin.io.FileTreeWalk$FileTreeWalkIterator r2 = r10.e
                    if (r0 != 0) goto L28
                    kotlin.io.FileTreeWalk r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.functions.Function1 r0 = kotlin.io.FileTreeWalk.access$getOnEnter$p(r0)
                    if (r0 == 0) goto L20
                    java.io.File r2 = r10.getRoot()
                    java.lang.Object r0 = r0.invoke(r2)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 != 0) goto L20
                    goto L8b
                L20:
                    r0 = 1
                    r10.f5767b = r0
                    java.io.File r0 = r10.getRoot()
                    return r0
                L28:
                    java.io.File[] r0 = r10.c
                    if (r0 == 0) goto L45
                    int r3 = r10.d
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                    int r0 = r0.length
                    if (r3 >= r0) goto L35
                    goto L45
                L35:
                    kotlin.io.FileTreeWalk r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.functions.Function1 r0 = kotlin.io.FileTreeWalk.access$getOnLeave$p(r0)
                    if (r0 == 0) goto L8b
                    java.io.File r2 = r10.getRoot()
                    r0.invoke(r2)
                    return r1
                L45:
                    java.io.File[] r0 = r10.c
                    if (r0 != 0) goto L8c
                    java.io.File r0 = r10.getRoot()
                    java.io.File[] r0 = r0.listFiles()
                    r10.c = r0
                    if (r0 != 0) goto L72
                    kotlin.io.FileTreeWalk r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.functions.Function2 r0 = kotlin.io.FileTreeWalk.access$getOnFail$p(r0)
                    if (r0 == 0) goto L72
                    java.io.File r3 = r10.getRoot()
                    kotlin.io.AccessDeniedException r4 = new kotlin.io.AccessDeniedException
                    java.io.File r5 = r10.getRoot()
                    r6 = 0
                    java.lang.String r7 = "Cannot list files in a directory"
                    r8 = 2
                    r9 = 0
                    r4.<init>(r5, r6, r7, r8, r9)
                    r0.invoke(r3, r4)
                L72:
                    java.io.File[] r0 = r10.c
                    if (r0 == 0) goto L7c
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                    int r0 = r0.length
                    if (r0 != 0) goto L8c
                L7c:
                    kotlin.io.FileTreeWalk r0 = kotlin.io.FileTreeWalk.this
                    kotlin.jvm.functions.Function1 r0 = kotlin.io.FileTreeWalk.access$getOnLeave$p(r0)
                    if (r0 == 0) goto L8b
                    java.io.File r2 = r10.getRoot()
                    r0.invoke(r2)
                L8b:
                    return r1
                L8c:
                    java.io.File[] r0 = r10.c
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                    int r1 = r10.d
                    int r2 = r1 + 1
                    r10.d = r2
                    r0 = r0[r1]
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FileTreeWalk.FileTreeWalkIterator.c.step():java.io.File");
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$b;", "Lkotlin/io/FileTreeWalk$b;", "Ljava/io/File;", "rootFile", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "step", "()Ljava/io/File;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nFileTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTreeWalk.kt\nkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n1#2:274\n*E\n"})
        public final class b extends b {

            /* renamed from: b, reason: collision with root package name */
            public boolean f5766b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(@NotNull FileTreeWalkIterator fileTreeWalkIterator, File rootFile) {
                super(rootFile);
                Intrinsics.checkNotNullParameter(rootFile, "rootFile");
            }

            @Override // kotlin.io.FileTreeWalk.b
            @Nullable
            public File step() {
                if (this.f5766b) {
                    return null;
                }
                this.f5766b = true;
                return getRoot();
            }
        }
    }

    @NotNull
    public final FileTreeWalk onEnter(@NotNull Function1<? super File, Boolean> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new FileTreeWalk(this.f5763a, this.f5764b, function, this.d, this.e, this.f);
    }

    @NotNull
    public final FileTreeWalk onLeave(@NotNull Function1<? super File, Unit> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new FileTreeWalk(this.f5763a, this.f5764b, this.c, function, this.e, this.f);
    }

    @NotNull
    public final FileTreeWalk onFail(@NotNull Function2<? super File, ? super IOException, Unit> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new FileTreeWalk(this.f5763a, this.f5764b, this.c, this.d, function, this.f);
    }

    @NotNull
    public final FileTreeWalk maxDepth(int depth) {
        if (depth <= 0) {
            throw new IllegalArgumentException("depth must be positive, but was " + depth + '.');
        }
        return new FileTreeWalk(this.f5763a, this.f5764b, this.c, this.d, this.e, depth);
    }
}
