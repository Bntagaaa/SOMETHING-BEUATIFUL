package androidx.emoji2.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.text.PrecomputedTextCompat;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
class m implements Spannable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1576a = false;

    /* renamed from: b, reason: collision with root package name */
    public Spannable f1577b;

    public m(Spannable spannable) {
        this.f1577b = spannable;
    }

    public m(CharSequence charSequence) {
        this.f1577b = new SpannableString(charSequence);
    }

    public final void a() {
        Spannable spannable = this.f1577b;
        if (!this.f1576a) {
            if ((Build.VERSION.SDK_INT < 28 ? new b() : new c()).a(spannable)) {
                this.f1577b = new SpannableString(spannable);
            }
        }
        this.f1576a = true;
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        a();
        this.f1577b.setSpan(obj, i, i2, i3);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        a();
        this.f1577b.removeSpan(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return (T[]) this.f1577b.getSpans(i, i2, cls);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f1577b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f1577b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f1577b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f1577b.nextSpanTransition(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f1577b.length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f1577b.charAt(i);
    }

    @Override // java.lang.CharSequence
    @NonNull
    public CharSequence subSequence(int i, int i2) {
        return this.f1577b.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    @NonNull
    public String toString() {
        return this.f1577b.toString();
    }

    @Override // java.lang.CharSequence
    @NonNull
    @RequiresApi(api = 24)
    public IntStream chars() {
        return this.f1577b.chars();
    }

    @Override // java.lang.CharSequence
    @NonNull
    @RequiresApi(api = 24)
    public IntStream codePoints() {
        return this.f1577b.codePoints();
    }

    @RequiresApi(24)
    public static class a {
        private a() {
        }
    }

    public static class b {
        public boolean a(CharSequence charSequence) {
            return charSequence instanceof PrecomputedTextCompat;
        }
    }

    @RequiresApi(28)
    public static class c extends b {
        @Override // androidx.emoji2.text.m.b
        public final boolean a(CharSequence charSequence) {
            return androidx.core.view.accessibility.a.m(charSequence) || (charSequence instanceof PrecomputedTextCompat);
        }
    }
}
