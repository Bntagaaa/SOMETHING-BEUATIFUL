package com.google.common.eventbus;

import com.google.common.base.Preconditions;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class SubscriberExceptionContext {

    /* renamed from: a, reason: collision with root package name */
    public final EventBus f4423a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4424b;
    public final Object c;
    public final Method d;

    public SubscriberExceptionContext(EventBus eventBus, Object obj, Object obj2, Method method) {
        this.f4423a = (EventBus) Preconditions.checkNotNull(eventBus);
        this.f4424b = Preconditions.checkNotNull(obj);
        this.c = Preconditions.checkNotNull(obj2);
        this.d = (Method) Preconditions.checkNotNull(method);
    }

    public EventBus getEventBus() {
        return this.f4423a;
    }

    public Object getEvent() {
        return this.f4424b;
    }

    public Object getSubscriber() {
        return this.c;
    }

    public Method getSubscriberMethod() {
        return this.d;
    }
}
