package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import com.google.common.eventbus.EventBus;
import com.google.common.eventbus.a;
import java.util.concurrent.Executor;

@Beta
/* loaded from: classes.dex */
public class AsyncEventBus extends EventBus {
    public AsyncEventBus(String str, Executor executor) {
        super(str, executor, new a.c(0), EventBus.a.f4422a);
    }

    public AsyncEventBus(Executor executor) {
        super("default", executor, new a.c(0), EventBus.a.f4422a);
    }

    public AsyncEventBus(Executor executor, SubscriberExceptionHandler subscriberExceptionHandler) {
        super("default", executor, new a.c(0), subscriberExceptionHandler);
    }
}
