package com.google.common.eventbus;

import androidx.core.app.NotificationCompat;
import com.google.common.annotations.Beta;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;

@Beta
/* loaded from: classes.dex */
public class DeadEvent {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4418a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4419b;

    public DeadEvent(Object obj, Object obj2) {
        this.f4418a = Preconditions.checkNotNull(obj);
        this.f4419b = Preconditions.checkNotNull(obj2);
    }

    public Object getSource() {
        return this.f4418a;
    }

    public Object getEvent() {
        return this.f4419b;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("source", this.f4418a).add(NotificationCompat.CATEGORY_EVENT, this.f4419b).toString();
    }
}
