package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.eventbus.a;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
/* loaded from: classes.dex */
public class EventBus {
    public static final Logger f = Logger.getLogger(EventBus.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final String f4420a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f4421b;
    public final SubscriberExceptionHandler c;
    public final d d;
    public final com.google.common.eventbus.a e;

    public void register(Object obj) {
        d dVar = this.d;
        for (Map.Entry entry : dVar.a(obj).asMap().entrySet()) {
            Class cls = (Class) entry.getKey();
            Collection collection = (Collection) entry.getValue();
            ConcurrentMap concurrentMap = dVar.f4436a;
            CopyOnWriteArraySet copyOnWriteArraySet = (CopyOnWriteArraySet) concurrentMap.get(cls);
            if (copyOnWriteArraySet == null) {
                CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
                copyOnWriteArraySet = (CopyOnWriteArraySet) MoreObjects.firstNonNull(concurrentMap.putIfAbsent(cls, copyOnWriteArraySet2), copyOnWriteArraySet2);
            }
            copyOnWriteArraySet.addAll(collection);
        }
    }

    public void unregister(Object obj) {
        d dVar = this.d;
        for (Map.Entry entry : dVar.a(obj).asMap().entrySet()) {
            Class cls = (Class) entry.getKey();
            Collection<?> collection = (Collection) entry.getValue();
            CopyOnWriteArraySet copyOnWriteArraySet = (CopyOnWriteArraySet) dVar.f4436a.get(cls);
            if (copyOnWriteArraySet == null || !copyOnWriteArraySet.removeAll(collection)) {
                throw new IllegalArgumentException("missing event subscriber for an annotated method. Is " + obj + " registered?");
            }
        }
    }

    public EventBus() {
        this("default");
    }

    public EventBus(String str) {
        this(str, MoreExecutors.directExecutor(), new a.d(0), a.f4422a);
    }

    public EventBus(SubscriberExceptionHandler subscriberExceptionHandler) {
        this("default", MoreExecutors.directExecutor(), new a.d(0), subscriberExceptionHandler);
    }

    public EventBus(String str, Executor executor, com.google.common.eventbus.a aVar, SubscriberExceptionHandler subscriberExceptionHandler) {
        this.d = new d(this);
        this.f4420a = (String) Preconditions.checkNotNull(str);
        this.f4421b = (Executor) Preconditions.checkNotNull(executor);
        this.e = (com.google.common.eventbus.a) Preconditions.checkNotNull(aVar);
        this.c = (SubscriberExceptionHandler) Preconditions.checkNotNull(subscriberExceptionHandler);
    }

    public final String identifier() {
        return this.f4420a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void post(Object obj) {
        d dVar = this.d;
        dVar.getClass();
        try {
            ImmutableSet immutableSet = (ImmutableSet) d.d.getUnchecked(obj.getClass());
            ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(immutableSet.size());
            UnmodifiableIterator it = immutableSet.iterator();
            while (it.hasNext()) {
                CopyOnWriteArraySet copyOnWriteArraySet = (CopyOnWriteArraySet) dVar.f4436a.get((Class) it.next());
                if (copyOnWriteArraySet != null) {
                    arrayListNewArrayListWithCapacity.add(copyOnWriteArraySet.iterator());
                }
            }
            Iterator itConcat = Iterators.concat(arrayListNewArrayListWithCapacity.iterator());
            if (itConcat.hasNext()) {
                this.e.a(itConcat, obj);
            } else {
                if (obj instanceof DeadEvent) {
                    return;
                }
                post(new DeadEvent(this, obj));
            }
        } catch (UncheckedExecutionException e) {
            throw Throwables.propagate(e.getCause());
        }
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(this.f4420a).toString();
    }

    public static final class a implements SubscriberExceptionHandler {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4422a = new a();

        @Override // com.google.common.eventbus.SubscriberExceptionHandler
        public void handleException(Throwable th, SubscriberExceptionContext subscriberExceptionContext) {
            Logger logger = Logger.getLogger(EventBus.class.getName() + "." + subscriberExceptionContext.getEventBus().identifier());
            Level level = Level.SEVERE;
            if (logger.isLoggable(level)) {
                Method subscriberMethod = subscriberExceptionContext.getSubscriberMethod();
                logger.log(level, "Exception thrown by subscriber method " + subscriberMethod.getName() + '(' + subscriberMethod.getParameterTypes()[0].getName() + ") on subscriber " + subscriberExceptionContext.getSubscriber() + " when dispatching event: " + subscriberExceptionContext.getEvent(), th);
            }
        }
    }
}
