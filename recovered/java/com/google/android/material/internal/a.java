package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.reflect.Constructor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
final class a {
    public static final int m;
    public static boolean n;
    public static Constructor o;
    public static TextDirectionHeuristic p;

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f3096a;

    /* renamed from: b, reason: collision with root package name */
    public final TextPaint f3097b;
    public final int c;
    public int d;
    public boolean k;
    public Layout.Alignment e = Layout.Alignment.ALIGN_NORMAL;
    public int f = Integer.MAX_VALUE;

    /* renamed from: g, reason: collision with root package name */
    public float f3098g = 0.0f;
    public float h = 1.0f;
    public int i = m;
    public boolean j = true;
    public TextUtils.TruncateAt l = null;

    static {
        m = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    public a(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f3096a = charSequence;
        this.f3097b = textPaint;
        this.c = i;
        this.d = charSequence.length();
    }

    @NonNull
    public static a obtain(@NonNull CharSequence charSequence, @NonNull TextPaint textPaint, @IntRange(from = 0) int i) {
        return new a(charSequence, textPaint, i);
    }

    @NonNull
    public a setAlignment(@NonNull Layout.Alignment alignment) {
        this.e = alignment;
        return this;
    }

    @NonNull
    public a setIncludePad(boolean z) {
        this.j = z;
        return this;
    }

    @NonNull
    public a setMaxLines(@IntRange(from = 0) int i) {
        this.f = i;
        return this;
    }

    @NonNull
    public a setLineSpacing(float f, float f2) {
        this.f3098g = f;
        this.h = f2;
        return this;
    }

    @NonNull
    public a setHyphenationFrequency(int i) {
        this.i = i;
        return this;
    }

    @NonNull
    public a setEllipsize(@Nullable TextUtils.TruncateAt truncateAt) {
        this.l = truncateAt;
        return this;
    }

    public StaticLayout build() throws NoSuchMethodException, C0038a, SecurityException {
        char c;
        TextDirectionHeuristic textDirectionHeuristic;
        TextPaint textPaint = this.f3097b;
        if (this.f3096a == null) {
            this.f3096a = "";
        }
        int iMax = Math.max(0, this.c);
        CharSequence charSequenceEllipsize = this.f3096a;
        if (this.f == 1) {
            c = '\t';
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, iMax, this.l);
        } else {
            c = '\t';
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.d);
        this.d = iMin;
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            if (this.k && this.f == 1) {
                this.e = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, textPaint, iMax);
            builderObtain.setAlignment(this.e);
            builderObtain.setIncludePad(this.j);
            if (this.k) {
                textDirectionHeuristic = TextDirectionHeuristics.RTL;
            } else {
                textDirectionHeuristic = TextDirectionHeuristics.LTR;
            }
            builderObtain.setTextDirection(textDirectionHeuristic);
            TextUtils.TruncateAt truncateAt = this.l;
            if (truncateAt != null) {
                builderObtain.setEllipsize(truncateAt);
            }
            builderObtain.setMaxLines(this.f);
            float f = this.f3098g;
            if (f != 0.0f || this.h != 1.0f) {
                builderObtain.setLineSpacing(f, this.h);
            }
            if (this.f > 1) {
                builderObtain.setHyphenationFrequency(this.i);
            }
            return builderObtain.build();
        }
        if (!n) {
            try {
                p = this.k && i >= 23 ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                Class[] clsArr = new Class[13];
                clsArr[0] = CharSequence.class;
                Class cls = Integer.TYPE;
                clsArr[1] = cls;
                clsArr[2] = cls;
                clsArr[3] = TextPaint.class;
                clsArr[4] = cls;
                clsArr[5] = Layout.Alignment.class;
                clsArr[6] = TextDirectionHeuristic.class;
                Class cls2 = Float.TYPE;
                clsArr[7] = cls2;
                clsArr[8] = cls2;
                clsArr[c] = Boolean.TYPE;
                clsArr[10] = TextUtils.TruncateAt.class;
                clsArr[11] = cls;
                clsArr[12] = cls;
                Constructor declaredConstructor = StaticLayout.class.getDeclaredConstructor(clsArr);
                o = declaredConstructor;
                declaredConstructor.setAccessible(true);
                n = true;
            } catch (Exception e) {
                throw new C0038a(e);
            }
        }
        try {
            Constructor constructor = (Constructor) Preconditions.checkNotNull(o);
            Integer numValueOf = Integer.valueOf(this.d);
            Integer numValueOf2 = Integer.valueOf(iMax);
            Layout.Alignment alignment = this.e;
            Object objCheckNotNull = Preconditions.checkNotNull(p);
            Float fValueOf = Float.valueOf(1.0f);
            Float fValueOf2 = Float.valueOf(0.0f);
            Boolean boolValueOf = Boolean.valueOf(this.j);
            Integer numValueOf3 = Integer.valueOf(iMax);
            Integer numValueOf4 = Integer.valueOf(this.f);
            Object[] objArr = new Object[13];
            objArr[0] = charSequenceEllipsize;
            objArr[1] = 0;
            objArr[2] = numValueOf;
            objArr[3] = textPaint;
            objArr[4] = numValueOf2;
            objArr[5] = alignment;
            objArr[6] = objCheckNotNull;
            objArr[7] = fValueOf;
            objArr[8] = fValueOf2;
            objArr[c] = boolValueOf;
            objArr[10] = null;
            objArr[11] = numValueOf3;
            objArr[12] = numValueOf4;
            return (StaticLayout) constructor.newInstance(objArr);
        } catch (Exception e2) {
            throw new C0038a(e2);
        }
    }

    public a setIsRtl(boolean z) {
        this.k = z;
        return this;
    }

    /* renamed from: com.google.android.material.internal.a$a, reason: collision with other inner class name */
    public static class C0038a extends Exception {
        public C0038a(Exception exc) {
            super("Error thrown initializing StaticLayout " + exc.getMessage(), exc);
        }
    }
}
