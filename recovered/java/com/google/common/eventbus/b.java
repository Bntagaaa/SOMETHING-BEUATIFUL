package com.google.common.eventbus;

import com.google.common.base.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.util.Locale;
import java.util.logging.Level;

/* loaded from: classes.dex */
class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f4432a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f4433b;

    public b(c cVar, Object obj) {
        this.f4433b = cVar;
        this.f4432a = obj;
    }

    @Override // java.lang.Runnable
    public void run() throws IllegalAccessException, IllegalArgumentException {
        Object obj = this.f4432a;
        c cVar = this.f4433b;
        try {
            cVar.a(obj);
        } catch (InvocationTargetException e) {
            EventBus eventBus = cVar.f4434a;
            Throwable cause = e.getCause();
            SubscriberExceptionContext subscriberExceptionContext = new SubscriberExceptionContext(cVar.f4434a, obj, cVar.f4435b, cVar.c);
            eventBus.getClass();
            Preconditions.checkNotNull(cause);
            Preconditions.checkNotNull(subscriberExceptionContext);
            try {
                eventBus.c.handleException(cause, subscriberExceptionContext);
            } catch (Throwable th) {
                EventBus.f.log(Level.SEVERE, String.format(Locale.ROOT, "Exception %s thrown while handling exception: %s", th, cause), th);
            }
        }
    }
}
