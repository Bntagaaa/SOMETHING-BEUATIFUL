package kotlin.io.path;

import java.nio.file.Path;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010(\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00018\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00008\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R*\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lkotlin/io/path/f;", "", "Ljava/nio/file/Path;", "path", "key", "parent", "<init>", "(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/f;)V", "a", "Ljava/nio/file/Path;", "getPath", "()Ljava/nio/file/Path;", "b", "Ljava/lang/Object;", "getKey", "()Ljava/lang/Object;", "c", "Lkotlin/io/path/f;", "getParent", "()Lkotlin/io/path/f;", "", "d", "Ljava/util/Iterator;", "getContentIterator", "()Ljava/util/Iterator;", "setContentIterator", "(Ljava/util/Iterator;)V", "contentIterator", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class f {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final Path path;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final Object key;

    /* renamed from: c, reason: from kotlin metadata */
    public final f parent;

    /* renamed from: d, reason: from kotlin metadata */
    public Iterator contentIterator;

    public f(@NotNull Path path, @Nullable Object obj, @Nullable f fVar) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.path = path;
        this.key = obj;
        this.parent = fVar;
    }

    @Nullable
    public final Object getKey() {
        return this.key;
    }

    @Nullable
    public final f getParent() {
        return this.parent;
    }

    @NotNull
    public final Path getPath() {
        return this.path;
    }

    @Nullable
    public final Iterator<f> getContentIterator() {
        return this.contentIterator;
    }

    public final void setContentIterator(@Nullable Iterator<f> it) {
        this.contentIterator = it;
    }
}
