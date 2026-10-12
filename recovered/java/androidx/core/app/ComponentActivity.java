package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.view.KeyEventDispatcher;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ReportFragment;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ComponentActivity extends Activity implements LifecycleOwner, KeyEventDispatcher.Component {
    private SimpleArrayMap<Class<? extends ExtraData>, ExtraData> mExtraDataMap = new SimpleArrayMap<>();
    private LifecycleRegistry mLifecycleRegistry = new LifecycleRegistry(this);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static class ExtraData {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public void putExtraData(ExtraData extraData) {
        this.mExtraDataMap.put(extraData.getClass(), extraData);
    }

    @Override // android.app.Activity
    @SuppressLint({"RestrictedApi"})
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ReportFragment.injectIfNeededIn(this);
    }

    @Override // android.app.Activity
    @CallSuper
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        this.mLifecycleRegistry.markState(Lifecycle.State.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public <T extends ExtraData> T getExtraData(Class<T> cls) {
        return (T) this.mExtraDataMap.get(cls);
    }

    @NonNull
    public Lifecycle getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.core.view.KeyEventDispatcher.Component
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean superDispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return KeyEventDispatcher.dispatchKeyEvent(this, decorView, this, keyEvent);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean shouldDumpInternalState(@androidx.annotation.Nullable java.lang.String[] r5) {
        /*
            r4 = this;
            r0 = 0
            r1 = 1
            if (r5 == 0) goto L6a
            int r2 = r5.length
            if (r2 <= 0) goto L6a
            r5 = r5[r0]
            r5.getClass()
            r2 = -1
            int r3 = r5.hashCode()
            switch(r3) {
                case -645125871: goto L41;
                case 100470631: goto L36;
                case 472614934: goto L2b;
                case 1159329357: goto L20;
                case 1455016274: goto L15;
                default: goto L14;
            }
        L14:
            goto L4b
        L15:
            java.lang.String r3 = "--autofill"
            boolean r5 = r5.equals(r3)
            if (r5 != 0) goto L1e
            goto L4b
        L1e:
            r2 = 4
            goto L4b
        L20:
            java.lang.String r3 = "--contentcapture"
            boolean r5 = r5.equals(r3)
            if (r5 != 0) goto L29
            goto L4b
        L29:
            r2 = 3
            goto L4b
        L2b:
            java.lang.String r3 = "--list-dumpables"
            boolean r5 = r5.equals(r3)
            if (r5 != 0) goto L34
            goto L4b
        L34:
            r2 = 2
            goto L4b
        L36:
            java.lang.String r3 = "--dump-dumpable"
            boolean r5 = r5.equals(r3)
            if (r5 != 0) goto L3f
            goto L4b
        L3f:
            r2 = 1
            goto L4b
        L41:
            java.lang.String r3 = "--translation"
            boolean r5 = r5.equals(r3)
            if (r5 != 0) goto L4a
            goto L4b
        L4a:
            r2 = 0
        L4b:
            switch(r2) {
                case 0: goto L63;
                case 1: goto L5e;
                case 2: goto L5e;
                case 3: goto L57;
                case 4: goto L4f;
                default: goto L4e;
            }
        L4e:
            goto L6a
        L4f:
            int r5 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            if (r5 < r2) goto L6a
        L55:
            r0 = 1
            goto L6a
        L57:
            int r5 = android.os.Build.VERSION.SDK_INT
            r2 = 29
            if (r5 < r2) goto L6a
            goto L55
        L5e:
            boolean r0 = androidx.core.os.BuildCompat.isAtLeastT()
            goto L6a
        L63:
            int r5 = android.os.Build.VERSION.SDK_INT
            r2 = 31
            if (r5 < r2) goto L6a
            goto L55
        L6a:
            r5 = r0 ^ 1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.ComponentActivity.shouldDumpInternalState(java.lang.String[]):boolean");
    }
}
