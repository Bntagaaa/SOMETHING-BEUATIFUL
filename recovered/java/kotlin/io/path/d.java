package kotlin.io.path;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\nJ\u0019\u0010\u000f\u001a\u00020\b2\n\u0010\u000e\u001a\u00060\fj\u0002`\r¢\u0006\u0004\b\u000f\u0010\u0010R$\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R!\u0010\u001c\u001a\f\u0012\b\u0012\u00060\fj\u0002`\r0\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR$\u0010\"\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\n¨\u0006#"}, d2 = {"Lkotlin/io/path/d;", "", "", "limit", "<init>", "(I)V", "Ljava/nio/file/Path;", "name", "", "enterEntry", "(Ljava/nio/file/Path;)V", "exitEntry", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "collect", "(Ljava/lang/Exception;)V", "value", "b", "I", "getTotalExceptions", "()I", "totalExceptions", "", "c", "Ljava/util/List;", "getCollectedExceptions", "()Ljava/util/List;", "collectedExceptions", "d", "Ljava/nio/file/Path;", "getPath", "()Ljava/nio/file/Path;", "setPath", "path", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class d {

    /* renamed from: a, reason: collision with root package name */
    public final int f5812a;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public int totalExceptions;
    public final ArrayList c;

    /* renamed from: d, reason: from kotlin metadata */
    public Path path;

    public d() {
        this(0, 1, null);
    }

    public d(int i) {
        this.f5812a = i;
        this.c = new ArrayList();
    }

    public /* synthetic */ d(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 64 : i);
    }

    public final int getTotalExceptions() {
        return this.totalExceptions;
    }

    @NotNull
    public final List<Exception> getCollectedExceptions() {
        return this.c;
    }

    @Nullable
    public final Path getPath() {
        return this.path;
    }

    public final void setPath(@Nullable Path path) {
        this.path = path;
    }

    public final void enterEntry(@NotNull Path name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Path path = this.path;
        this.path = path != null ? path.resolve(name) : null;
    }

    public final void exitEntry(@NotNull Path name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Path path = this.path;
        if (!Intrinsics.areEqual(name, path != null ? path.getFileName() : null)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        Path path2 = this.path;
        this.path = path2 != null ? path2.getParent() : null;
    }

    public final void collect(@NotNull Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        this.totalExceptions++;
        ArrayList arrayList = this.c;
        if (arrayList.size() < this.f5812a) {
            if (this.path != null) {
                c.u();
                Throwable thInitCause = c.g(String.valueOf(this.path)).initCause(exception);
                Intrinsics.checkNotNull(thInitCause, "null cannot be cast to non-null type java.nio.file.FileSystemException");
                exception = c.h(thInitCause);
            }
            arrayList.add(exception);
        }
    }
}
