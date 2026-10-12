package androidx.emoji2.viewsintegration;

import android.annotation.SuppressLint;
import android.text.Editable;
import androidx.annotation.NonNull;
import androidx.emoji2.text.SpannableBuilder;

/* loaded from: classes.dex */
final class a extends Editable.Factory {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f1590a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static volatile Editable.Factory f1591b;
    public static Class c;

    @SuppressLint({"PrivateApi"})
    private a() {
        try {
            c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, a.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    public static Editable.Factory getInstance() {
        if (f1591b == null) {
            synchronized (f1590a) {
                try {
                    if (f1591b == null) {
                        f1591b = new a();
                    }
                } finally {
                }
            }
        }
        return f1591b;
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(@NonNull CharSequence charSequence) {
        Class cls = c;
        if (cls != null) {
            return SpannableBuilder.create(cls, charSequence);
        }
        return super.newEditable(charSequence);
    }
}
