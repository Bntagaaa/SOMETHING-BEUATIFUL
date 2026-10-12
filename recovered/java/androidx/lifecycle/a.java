package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Deprecated
/* loaded from: classes.dex */
final class a {
    public static final a c = new a();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1887a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f1888b = new HashMap();

    public static void b(HashMap map, b bVar, Lifecycle.Event event, Class cls) {
        Lifecycle.Event event2 = (Lifecycle.Event) map.get(bVar);
        if (event2 == null || event == event2) {
            if (event2 == null) {
                map.put(bVar, event);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + bVar.f1892b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
    }

    public final C0026a a(Class cls, Method[] methodArr) throws SecurityException {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        HashMap map2 = this.f1887a;
        if (superclass != null) {
            C0026a c0026aA = (C0026a) map2.get(superclass);
            if (c0026aA == null) {
                c0026aA = a(superclass, null);
            }
            map.putAll(c0026aA.f1890b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            C0026a c0026aA2 = (C0026a) map2.get(cls2);
            if (c0026aA2 == null) {
                c0026aA2 = a(cls2, null);
            }
            for (Map.Entry entry : c0026aA2.f1890b.entrySet()) {
                b(map, (b) entry.getKey(), (Lifecycle.Event) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!LifecycleOwner.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                Lifecycle.Event eventValue = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (!Lifecycle.Event.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (eventValue != Lifecycle.Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                b(map, new b(i, method), eventValue, cls);
                z = true;
            }
        }
        C0026a c0026a = new C0026a(map);
        map2.put(cls, c0026a);
        this.f1888b.put(cls, Boolean.valueOf(z));
        return c0026a;
    }

    @Deprecated
    /* renamed from: androidx.lifecycle.a$a, reason: collision with other inner class name */
    public static class C0026a {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f1889a = new HashMap();

        /* renamed from: b, reason: collision with root package name */
        public final HashMap f1890b;

        public C0026a(HashMap map) {
            this.f1890b = map;
            for (Map.Entry entry : map.entrySet()) {
                Lifecycle.Event event = (Lifecycle.Event) entry.getValue();
                List arrayList = (List) this.f1889a.get(event);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.f1889a.put(event, arrayList);
                }
                arrayList.add((b) entry.getKey());
            }
        }

        public static void a(List list, LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    b bVar = (b) list.get(size);
                    bVar.getClass();
                    try {
                        int i = bVar.f1891a;
                        Method method = bVar.f1892b;
                        if (i == 0) {
                            method.invoke(obj, new Object[0]);
                        } else if (i == 1) {
                            method.invoke(obj, lifecycleOwner);
                        } else if (i == 2) {
                            method.invoke(obj, lifecycleOwner, event);
                        }
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException("Failed to call observer method", e2.getCause());
                    }
                }
            }
        }
    }

    @Deprecated
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f1891a;

        /* renamed from: b, reason: collision with root package name */
        public final Method f1892b;

        public b(int i, Method method) throws SecurityException {
            this.f1891a = i;
            this.f1892b = method;
            method.setAccessible(true);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f1891a == bVar.f1891a && this.f1892b.getName().equals(bVar.f1892b.getName());
        }

        public int hashCode() {
            return this.f1892b.getName().hashCode() + (this.f1891a * 31);
        }
    }
}
