package androidx.loader.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContentResolverCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.OperationCanceledException;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

/* loaded from: classes.dex */
public class CursorLoader extends AsyncTaskLoader<Cursor> {
    public final Loader.ForceLoadContentObserver p;
    public Uri q;
    public String[] r;
    public String s;
    public String[] t;
    public String u;
    public Cursor v;
    public CancellationSignal w;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.loader.content.AsyncTaskLoader
    public Cursor loadInBackground() {
        synchronized (this) {
            if (isLoadInBackgroundCanceled()) {
                throw new OperationCanceledException();
            }
            this.w = new CancellationSignal();
        }
        try {
            Cursor cursorQuery = ContentResolverCompat.query(getContext().getContentResolver(), this.q, this.r, this.s, this.t, this.u, this.w);
            if (cursorQuery != null) {
                try {
                    cursorQuery.getCount();
                    cursorQuery.registerContentObserver(this.p);
                } catch (RuntimeException e) {
                    cursorQuery.close();
                    throw e;
                }
            }
            synchronized (this) {
                this.w = null;
            }
            return cursorQuery;
        } catch (Throwable th) {
            synchronized (this) {
                this.w = null;
                throw th;
            }
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public void cancelLoadInBackground() {
        super.cancelLoadInBackground();
        synchronized (this) {
            try {
                CancellationSignal cancellationSignal = this.w;
                if (cancellationSignal != null) {
                    cancellationSignal.cancel();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.loader.content.Loader
    public void deliverResult(Cursor cursor) {
        if (isReset()) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        Cursor cursor2 = this.v;
        this.v = cursor;
        if (isStarted()) {
            super.deliverResult((CursorLoader) cursor);
        }
        if (cursor2 == null || cursor2 == cursor || cursor2.isClosed()) {
            return;
        }
        cursor2.close();
    }

    public CursorLoader(@NonNull Context context) {
        super(context);
        this.p = new Loader.ForceLoadContentObserver();
    }

    public CursorLoader(@NonNull Context context, @NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        super(context);
        this.p = new Loader.ForceLoadContentObserver();
        this.q = uri;
        this.r = strArr;
        this.s = str;
        this.t = strArr2;
        this.u = str2;
    }

    @Override // androidx.loader.content.Loader
    public void onStartLoading() {
        Cursor cursor = this.v;
        if (cursor != null) {
            deliverResult(cursor);
        }
        if (takeContentChanged() || this.v == null) {
            forceLoad();
        }
    }

    @Override // androidx.loader.content.Loader
    public void onStopLoading() {
        cancelLoad();
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public void onCanceled(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }

    @Override // androidx.loader.content.Loader
    public void onReset() {
        super.onReset();
        onStopLoading();
        Cursor cursor = this.v;
        if (cursor != null && !cursor.isClosed()) {
            this.v.close();
        }
        this.v = null;
    }

    @NonNull
    public Uri getUri() {
        return this.q;
    }

    public void setUri(@NonNull Uri uri) {
        this.q = uri;
    }

    @Nullable
    public String[] getProjection() {
        return this.r;
    }

    public void setProjection(@Nullable String[] strArr) {
        this.r = strArr;
    }

    @Nullable
    public String getSelection() {
        return this.s;
    }

    public void setSelection(@Nullable String str) {
        this.s = str;
    }

    @Nullable
    public String[] getSelectionArgs() {
        return this.t;
    }

    public void setSelectionArgs(@Nullable String[] strArr) {
        this.t = strArr;
    }

    @Nullable
    public String getSortOrder() {
        return this.u;
    }

    public void setSortOrder(@Nullable String str) {
        this.u = str;
    }

    @Override // androidx.loader.content.AsyncTaskLoader, androidx.loader.content.Loader
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.q);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.r));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.s);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.t));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.u);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.v);
        printWriter.print(str);
        printWriter.print("mContentChanged=");
        printWriter.println(this.h);
    }
}
