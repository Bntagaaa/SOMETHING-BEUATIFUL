package androidx.loader.content;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.DebugUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class Loader<D> {

    /* renamed from: a, reason: collision with root package name */
    public int f1911a;

    /* renamed from: b, reason: collision with root package name */
    public OnLoadCompleteListener f1912b;
    public OnLoadCanceledListener c;
    public final Context d;
    public boolean e = false;
    public boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1913g = true;
    public boolean h = false;
    public boolean i = false;

    public interface OnLoadCanceledListener<D> {
        void onLoadCanceled(@NonNull Loader<D> loader);
    }

    public interface OnLoadCompleteListener<D> {
        void onLoadComplete(@NonNull Loader<D> loader, @Nullable D d);
    }

    @MainThread
    public void onAbandon() {
    }

    @MainThread
    public boolean onCancelLoad() {
        return false;
    }

    @MainThread
    public void onForceLoad() {
    }

    @MainThread
    public void onReset() {
    }

    @MainThread
    public void onStartLoading() {
    }

    @MainThread
    public void onStopLoading() {
    }

    public final class ForceLoadContentObserver extends ContentObserver {
        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        public ForceLoadContentObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Loader.this.onContentChanged();
        }
    }

    public Loader(@NonNull Context context) {
        this.d = context.getApplicationContext();
    }

    @MainThread
    public void deliverResult(@Nullable D d) {
        OnLoadCompleteListener onLoadCompleteListener = this.f1912b;
        if (onLoadCompleteListener != null) {
            onLoadCompleteListener.onLoadComplete(this, d);
        }
    }

    @MainThread
    public void deliverCancellation() {
        OnLoadCanceledListener onLoadCanceledListener = this.c;
        if (onLoadCanceledListener != null) {
            onLoadCanceledListener.onLoadCanceled(this);
        }
    }

    @NonNull
    public Context getContext() {
        return this.d;
    }

    public int getId() {
        return this.f1911a;
    }

    @MainThread
    public void registerListener(int i, @NonNull OnLoadCompleteListener<D> onLoadCompleteListener) {
        if (this.f1912b != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.f1912b = onLoadCompleteListener;
        this.f1911a = i;
    }

    @MainThread
    public void unregisterListener(@NonNull OnLoadCompleteListener<D> onLoadCompleteListener) {
        OnLoadCompleteListener<D> onLoadCompleteListener2 = this.f1912b;
        if (onLoadCompleteListener2 == null) {
            throw new IllegalStateException("No listener register");
        }
        if (onLoadCompleteListener2 != onLoadCompleteListener) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.f1912b = null;
    }

    @MainThread
    public void registerOnLoadCanceledListener(@NonNull OnLoadCanceledListener<D> onLoadCanceledListener) {
        if (this.c != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.c = onLoadCanceledListener;
    }

    @MainThread
    public void unregisterOnLoadCanceledListener(@NonNull OnLoadCanceledListener<D> onLoadCanceledListener) {
        OnLoadCanceledListener<D> onLoadCanceledListener2 = this.c;
        if (onLoadCanceledListener2 == null) {
            throw new IllegalStateException("No listener register");
        }
        if (onLoadCanceledListener2 != onLoadCanceledListener) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.c = null;
    }

    public boolean isStarted() {
        return this.e;
    }

    public boolean isAbandoned() {
        return this.f;
    }

    public boolean isReset() {
        return this.f1913g;
    }

    @MainThread
    public final void startLoading() {
        this.e = true;
        this.f1913g = false;
        this.f = false;
        onStartLoading();
    }

    @MainThread
    public boolean cancelLoad() {
        return onCancelLoad();
    }

    @MainThread
    public void forceLoad() {
        onForceLoad();
    }

    @MainThread
    public void stopLoading() {
        this.e = false;
        onStopLoading();
    }

    @MainThread
    public void abandon() {
        this.f = true;
        onAbandon();
    }

    @MainThread
    public void reset() {
        onReset();
        this.f1913g = true;
        this.e = false;
        this.f = false;
        this.h = false;
        this.i = false;
    }

    public boolean takeContentChanged() {
        boolean z = this.h;
        this.h = false;
        this.i |= z;
        return z;
    }

    public void commitContentChanged() {
        this.i = false;
    }

    public void rollbackContentChanged() {
        if (this.i) {
            onContentChanged();
        }
    }

    @MainThread
    public void onContentChanged() {
        if (this.e) {
            forceLoad();
        } else {
            this.h = true;
        }
    }

    @NonNull
    public String dataToString(@Nullable D d) {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(d, sb);
        sb.append("}");
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(this, sb);
        sb.append(" id=");
        sb.append(this.f1911a);
        sb.append("}");
        return sb.toString();
    }

    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f1911a);
        printWriter.print(" mListener=");
        printWriter.println(this.f1912b);
        if (this.e || this.h || this.i) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.e);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.h);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.i);
        }
        if (this.f || this.f1913g) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f);
            printWriter.print(" mReset=");
            printWriter.println(this.f1913g);
        }
    }
}
