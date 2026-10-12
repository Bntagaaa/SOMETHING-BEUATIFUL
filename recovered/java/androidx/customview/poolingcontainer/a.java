package androidx.customview.poolingcontainer;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\bJ\r\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u0003¨\u0006\u000b"}, d2 = {"Landroidx/customview/poolingcontainer/a;", "", "<init>", "()V", "Landroidx/customview/poolingcontainer/PoolingContainerListener;", "listener", "", "addListener", "(Landroidx/customview/poolingcontainer/PoolingContainerListener;)V", "removeListener", "onRelease", "customview-poolingcontainer_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1453a = new ArrayList();

    public final void addListener(@NotNull PoolingContainerListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f1453a.add(listener);
    }

    public final void removeListener(@NotNull PoolingContainerListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f1453a.remove(listener);
    }

    public final void onRelease() {
        ArrayList arrayList = this.f1453a;
        for (int lastIndex = CollectionsKt.getLastIndex(arrayList); -1 < lastIndex; lastIndex--) {
            ((PoolingContainerListener) arrayList.get(lastIndex)).onRelease();
        }
    }
}
