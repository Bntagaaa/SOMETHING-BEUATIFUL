package androidx.activity.contextaware;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public final class ContextAwareHelper {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArraySet f46a = new CopyOnWriteArraySet();

    /* renamed from: b, reason: collision with root package name */
    public volatile Context f47b;

    @Nullable
    public Context peekAvailableContext() {
        return this.f47b;
    }

    public void addOnContextAvailableListener(@NonNull OnContextAvailableListener onContextAvailableListener) {
        if (this.f47b != null) {
            onContextAvailableListener.onContextAvailable(this.f47b);
        }
        this.f46a.add(onContextAvailableListener);
    }

    public void removeOnContextAvailableListener(@NonNull OnContextAvailableListener onContextAvailableListener) {
        this.f46a.remove(onContextAvailableListener);
    }

    public void dispatchOnContextAvailable(@NonNull Context context) {
        this.f47b = context;
        Iterator it = this.f46a.iterator();
        while (it.hasNext()) {
            ((OnContextAvailableListener) it.next()).onContextAvailable(context);
        }
    }

    public void clearAvailableContext() {
        this.f47b = null;
    }
}
