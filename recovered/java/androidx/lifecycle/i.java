package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.a;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
class i implements LifecycleEventObserver {

    /* renamed from: a, reason: collision with root package name */
    public final Object f1900a;

    /* renamed from: b, reason: collision with root package name */
    public final a.C0026a f1901b;

    public i(Object obj) {
        this.f1900a = obj;
        a aVar = a.c;
        Class<?> cls = obj.getClass();
        a.C0026a c0026a = (a.C0026a) aVar.f1887a.get(cls);
        this.f1901b = c0026a == null ? aVar.a(cls, null) : c0026a;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        HashMap map = this.f1901b.f1889a;
        List list = (List) map.get(event);
        Object obj = this.f1900a;
        a.C0026a.a(list, lifecycleOwner, event, obj);
        a.C0026a.a((List) map.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, obj);
    }
}
