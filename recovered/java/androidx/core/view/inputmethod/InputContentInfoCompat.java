package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class InputContentInfoCompat {

    /* renamed from: a, reason: collision with root package name */
    public final c f1403a;

    public interface c {
        @NonNull
        Uri getContentUri();

        @NonNull
        ClipDescription getDescription();

        @Nullable
        Object getInputContentInfo();

        @Nullable
        Uri getLinkUri();

        void releasePermission();

        void requestPermission();
    }

    public static final class b implements c {

        /* renamed from: a, reason: collision with root package name */
        public final Uri f1405a;

        /* renamed from: b, reason: collision with root package name */
        public final ClipDescription f1406b;
        public final Uri c;

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        @Nullable
        public Object getInputContentInfo() {
            return null;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void releasePermission() {
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void requestPermission() {
        }

        public b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f1405a = uri;
            this.f1406b = clipDescription;
            this.c = uri2;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        @NonNull
        public Uri getContentUri() {
            return this.f1405a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        @NonNull
        public ClipDescription getDescription() {
            return this.f1406b;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        @Nullable
        public Uri getLinkUri() {
            return this.c;
        }
    }

    @RequiresApi(25)
    public static final class a implements c {

        /* renamed from: a, reason: collision with root package name */
        public final InputContentInfo f1404a;

        public a(Object obj) {
            this.f1404a = (InputContentInfo) obj;
        }

        public a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f1404a = new InputContentInfo(uri, clipDescription, uri2);
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        @NonNull
        public Uri getContentUri() {
            return this.f1404a.getContentUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        @NonNull
        public ClipDescription getDescription() {
            return this.f1404a.getDescription();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        @Nullable
        public Uri getLinkUri() {
            return this.f1404a.getLinkUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        @NonNull
        public Object getInputContentInfo() {
            return this.f1404a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void requestPermission() {
            this.f1404a.requestPermission();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void releasePermission() {
            this.f1404a.releasePermission();
        }
    }

    public InputContentInfoCompat(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f1403a = new a(uri, clipDescription, uri2);
        } else {
            this.f1403a = new b(uri, clipDescription, uri2);
        }
    }

    public InputContentInfoCompat(a aVar) {
        this.f1403a = aVar;
    }

    @NonNull
    public Uri getContentUri() {
        return this.f1403a.getContentUri();
    }

    @NonNull
    public ClipDescription getDescription() {
        return this.f1403a.getDescription();
    }

    @Nullable
    public Uri getLinkUri() {
        return this.f1403a.getLinkUri();
    }

    @Nullable
    public static InputContentInfoCompat wrap(@Nullable Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new InputContentInfoCompat(new a(obj));
        }
        return null;
    }

    @Nullable
    public Object unwrap() {
        return this.f1403a.getInputContentInfo();
    }

    public void requestPermission() {
        this.f1403a.requestPermission();
    }

    public void releasePermission() {
        this.f1403a.releasePermission();
    }
}
