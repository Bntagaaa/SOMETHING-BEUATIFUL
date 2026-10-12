package com.google.common.eventbus;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.eventbus.c;
import com.google.common.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class d {
    public static final LoadingCache c = CacheBuilder.newBuilder().weakKeys().build(new a());
    public static final LoadingCache d = CacheBuilder.newBuilder().weakKeys().build(new b());

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentMap f4436a = Maps.newConcurrentMap();

    /* renamed from: b, reason: collision with root package name */
    public final EventBus f4437b;

    public d(EventBus eventBus) {
        this.f4437b = (EventBus) Preconditions.checkNotNull(eventBus);
    }

    public static class a extends CacheLoader<Class<?>, ImmutableList<Method>> {
        @Override // com.google.common.cache.CacheLoader
        public ImmutableList<Method> load(Class<?> cls) throws Exception {
            LoadingCache loadingCache = d.c;
            Set setRawTypes = TypeToken.of((Class) cls).getTypes().rawTypes();
            HashMap mapNewHashMap = Maps.newHashMap();
            Iterator it = setRawTypes.iterator();
            while (it.hasNext()) {
                for (Method method : ((Class) it.next()).getDeclaredMethods()) {
                    if (method.isAnnotationPresent(Subscribe.class) && !method.isSynthetic()) {
                        Class<?>[] parameterTypes = method.getParameterTypes();
                        Preconditions.checkArgument(parameterTypes.length == 1, "Method %s has @Subscribe annotation but has %s parameters.Subscriber methods must have exactly 1 parameter.", (Object) method, parameterTypes.length);
                        c cVar = new c(method);
                        if (!mapNewHashMap.containsKey(cVar)) {
                            mapNewHashMap.put(cVar, method);
                        }
                    }
                }
            }
            return ImmutableList.copyOf(mapNewHashMap.values());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final HashMultimap a(Object obj) {
        com.google.common.eventbus.c aVar;
        HashMultimap hashMultimapCreate = HashMultimap.create();
        UnmodifiableIterator it = ((ImmutableList) c.getUnchecked(obj.getClass())).iterator();
        while (it.hasNext()) {
            Method method = (Method) it.next();
            Class<?> cls = method.getParameterTypes()[0];
            Annotation annotation = method.getAnnotation(AllowConcurrentEvents.class);
            EventBus eventBus = this.f4437b;
            if (annotation == null) {
                aVar = new c.a(eventBus, obj, method);
            } else {
                aVar = new com.google.common.eventbus.c(eventBus, obj, method);
            }
            hashMultimapCreate.put(cls, aVar);
        }
        return hashMultimapCreate;
    }

    public static class b extends CacheLoader<Class<?>, ImmutableSet<Class<?>>> {
        @Override // com.google.common.cache.CacheLoader
        public ImmutableSet<Class<?>> load(Class<?> cls) {
            return ImmutableSet.copyOf((Collection) TypeToken.of((Class) cls).getTypes().rawTypes());
        }
    }

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final String f4438a;

        /* renamed from: b, reason: collision with root package name */
        public final List f4439b;

        public c(Method method) {
            this.f4438a = method.getName();
            this.f4439b = Arrays.asList(method.getParameterTypes());
        }

        public int hashCode() {
            return Objects.hashCode(this.f4438a, this.f4439b);
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (this.f4438a.equals(cVar.f4438a) && this.f4439b.equals(cVar.f4439b)) {
                    return true;
                }
            }
            return false;
        }
    }
}
