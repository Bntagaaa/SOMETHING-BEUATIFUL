package androidx.activity;

import android.annotation.SuppressLint;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.DoNotInline;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.core.os.BuildCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f34a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f35b;
    public final g c;
    public final OnBackInvokedCallback d;
    public OnBackInvokedDispatcher e;
    public boolean f;

    @RequiresApi(33)
    public void setOnBackInvokedDispatcher(@NonNull OnBackInvokedDispatcher onBackInvokedDispatcher) {
        this.e = onBackInvokedDispatcher;
        a();
    }

    public final void a() {
        boolean zHasEnabledCallbacks = hasEnabledCallbacks();
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.e;
        if (onBackInvokedDispatcher != null) {
            if (zHasEnabledCallbacks && !this.f) {
                a.b(onBackInvokedDispatcher, 0, this.d);
                this.f = true;
            } else {
                if (zHasEnabledCallbacks || !this.f) {
                    return;
                }
                a.c(onBackInvokedDispatcher, this.d);
                this.f = false;
            }
        }
    }

    public OnBackPressedDispatcher() {
        this(null);
    }

    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    public OnBackPressedDispatcher(@Nullable Runnable runnable) {
        this.f35b = new ArrayDeque();
        this.f = false;
        this.f34a = runnable;
        if (BuildCompat.isAtLeastT()) {
            this.c = new g(this);
            this.d = a.a(new androidx.activity.b(this, 2));
        }
    }

    @MainThread
    public void addCallback(@NonNull OnBackPressedCallback onBackPressedCallback) {
        this.f35b.add(onBackPressedCallback);
        onBackPressedCallback.f33b.add(new c(onBackPressedCallback));
        if (BuildCompat.isAtLeastT()) {
            a();
            onBackPressedCallback.c = this.c;
        }
    }

    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    @SuppressLint({"LambdaLast"})
    @MainThread
    public void addCallback(@NonNull LifecycleOwner lifecycleOwner, @NonNull OnBackPressedCallback onBackPressedCallback) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        onBackPressedCallback.f33b.add(new b(lifecycle, onBackPressedCallback));
        if (BuildCompat.isAtLeastT()) {
            a();
            onBackPressedCallback.c = this.c;
        }
    }

    @MainThread
    public boolean hasEnabledCallbacks() {
        Iterator itDescendingIterator = this.f35b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            if (((OnBackPressedCallback) itDescendingIterator.next()).isEnabled()) {
                return true;
            }
        }
        return false;
    }

    @MainThread
    public void onBackPressed() {
        Iterator itDescendingIterator = this.f35b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            OnBackPressedCallback onBackPressedCallback = (OnBackPressedCallback) itDescendingIterator.next();
            if (onBackPressedCallback.isEnabled()) {
                onBackPressedCallback.handleOnBackPressed();
                return;
            }
        }
        Runnable runnable = this.f34a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public class c implements androidx.activity.a {

        /* renamed from: a, reason: collision with root package name */
        public final OnBackPressedCallback f38a;

        public c(OnBackPressedCallback onBackPressedCallback) {
            this.f38a = onBackPressedCallback;
        }

        @Override // androidx.activity.a
        @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
        public void cancel() {
            OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
            ArrayDeque arrayDeque = onBackPressedDispatcher.f35b;
            OnBackPressedCallback onBackPressedCallback = this.f38a;
            arrayDeque.remove(onBackPressedCallback);
            onBackPressedCallback.f33b.remove(this);
            if (BuildCompat.isAtLeastT()) {
                onBackPressedCallback.c = null;
                onBackPressedDispatcher.a();
            }
        }
    }

    public class b implements LifecycleEventObserver, androidx.activity.a {

        /* renamed from: a, reason: collision with root package name */
        public final Lifecycle f36a;

        /* renamed from: b, reason: collision with root package name */
        public final OnBackPressedCallback f37b;
        public c c;

        public b(Lifecycle lifecycle, OnBackPressedCallback onBackPressedCallback) {
            this.f36a = lifecycle;
            this.f37b = onBackPressedCallback;
            lifecycle.addObserver(this);
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                ArrayDeque arrayDeque = onBackPressedDispatcher.f35b;
                OnBackPressedCallback onBackPressedCallback = this.f37b;
                arrayDeque.add(onBackPressedCallback);
                c cVar = onBackPressedDispatcher.new c(onBackPressedCallback);
                onBackPressedCallback.f33b.add(cVar);
                if (BuildCompat.isAtLeastT()) {
                    onBackPressedDispatcher.a();
                    onBackPressedCallback.c = onBackPressedDispatcher.c;
                }
                this.c = cVar;
                return;
            }
            if (event == Lifecycle.Event.ON_STOP) {
                c cVar2 = this.c;
                if (cVar2 != null) {
                    cVar2.cancel();
                    return;
                }
                return;
            }
            if (event == Lifecycle.Event.ON_DESTROY) {
                cancel();
            }
        }

        @Override // androidx.activity.a
        public void cancel() {
            this.f36a.removeObserver(this);
            this.f37b.f33b.remove(this);
            c cVar = this.c;
            if (cVar != null) {
                cVar.cancel();
                this.c = null;
            }
        }
    }

    @RequiresApi(33)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void b(Object obj, int i, Object obj2) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i, (OnBackInvokedCallback) obj2);
        }

        @DoNotInline
        public static void c(Object obj, Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }

        @DoNotInline
        public static OnBackInvokedCallback a(Runnable runnable) {
            Objects.requireNonNull(runnable);
            return new h(runnable);
        }
    }
}
