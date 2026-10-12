package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.appcompat.R;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
class q {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f494a;

    /* renamed from: b, reason: collision with root package name */
    public TintInfo f495b;
    public TintInfo c;
    public TintInfo d;
    public TintInfo e;
    public TintInfo f;

    /* renamed from: g, reason: collision with root package name */
    public TintInfo f496g;
    public TintInfo h;
    public final r i;
    public int j = 0;
    public int k = -1;
    public Typeface l;
    public boolean m;

    public q(TextView textView) {
        this.f494a = textView;
        this.i = new r(textView);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(android.util.AttributeSet r24, int r25) {
        /*
            Method dump skipped, instructions count: 1023
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.q.f(android.util.AttributeSet, int):void");
    }

    public final void j(int i) {
        r rVar = this.i;
        if (rVar.j()) {
            if (i == 0) {
                rVar.f497a = 0;
                rVar.d = -1.0f;
                rVar.e = -1.0f;
                rVar.c = -1.0f;
                rVar.f = new int[0];
                rVar.f498b = false;
                return;
            }
            if (i != 1) {
                throw new IllegalArgumentException(_COROUTINE.a.d(i, "Unknown auto-size text type: "));
            }
            DisplayMetrics displayMetrics = rVar.j.getResources().getDisplayMetrics();
            rVar.k(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (rVar.h()) {
                rVar.a();
            }
        }
    }

    public final void h(int i, int i2, int i3, int i4) {
        r rVar = this.i;
        if (rVar.j()) {
            DisplayMetrics displayMetrics = rVar.j.getResources().getDisplayMetrics();
            rVar.k(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (rVar.h()) {
                rVar.a();
            }
        }
    }

    public final void m(Context context, TintTypedArray tintTypedArray) {
        String string;
        this.j = tintTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, this.j);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            int i2 = tintTypedArray.getInt(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.k = i2;
            if (i2 != -1) {
                this.j &= 2;
            }
        }
        int i3 = R.styleable.TextAppearance_android_fontFamily;
        if (tintTypedArray.hasValue(i3) || tintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
            this.l = null;
            int i4 = R.styleable.TextAppearance_fontFamily;
            if (tintTypedArray.hasValue(i4)) {
                i3 = i4;
            }
            int i5 = this.k;
            int i6 = this.j;
            if (!context.isRestricted()) {
                try {
                    Typeface font = tintTypedArray.getFont(i3, this.j, new o(this, i5, i6, new WeakReference(this.f494a)));
                    if (font != null) {
                        if (i >= 28 && this.k != -1) {
                            this.l = e.a(Typeface.create(font, 0), this.k, (this.j & 2) != 0);
                        } else {
                            this.l = font;
                        }
                    }
                    this.m = this.l == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                }
            }
            if (this.l != null || (string = tintTypedArray.getString(i3)) == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 28 && this.k != -1) {
                this.l = e.a(Typeface.create(string, 0), this.k, (this.j & 2) != 0);
                return;
            } else {
                this.l = Typeface.create(string, this.j);
                return;
            }
        }
        int i7 = R.styleable.TextAppearance_android_typeface;
        if (tintTypedArray.hasValue(i7)) {
            this.m = false;
            int i8 = tintTypedArray.getInt(i7, 1);
            if (i8 == 1) {
                this.l = Typeface.SANS_SERIF;
            } else if (i8 == 2) {
                this.l = Typeface.SERIF;
            } else {
                if (i8 != 3) {
                    return;
                }
                this.l = Typeface.MONOSPACE;
            }
        }
    }

    public final void i(int[] iArr, int i) {
        r rVar = this.i;
        if (rVar.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = rVar.j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArrCopyOf[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                rVar.f = r.b(iArrCopyOf);
                if (!rVar.i()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                rVar.f499g = false;
            }
            if (rVar.h()) {
                rVar.a();
            }
        }
    }

    public final void g(Context context, int i) {
        String string;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i, R.styleable.TextAppearance);
        int i2 = R.styleable.TextAppearance_textAllCaps;
        boolean zHasValue = tintTypedArrayObtainStyledAttributes.hasValue(i2);
        TextView textView = this.f494a;
        if (zHasValue) {
            textView.setAllCaps(tintTypedArrayObtainStyledAttributes.getBoolean(i2, false));
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 23) {
            int i4 = R.styleable.TextAppearance_android_textColor;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i4) && (colorStateList3 = tintTypedArrayObtainStyledAttributes.getColorStateList(i4)) != null) {
                textView.setTextColor(colorStateList3);
            }
            int i5 = R.styleable.TextAppearance_android_textColorLink;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i5) && (colorStateList2 = tintTypedArrayObtainStyledAttributes.getColorStateList(i5)) != null) {
                textView.setLinkTextColor(colorStateList2);
            }
            int i6 = R.styleable.TextAppearance_android_textColorHint;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i6) && (colorStateList = tintTypedArrayObtainStyledAttributes.getColorStateList(i6)) != null) {
                textView.setHintTextColor(colorStateList);
            }
        }
        int i7 = R.styleable.TextAppearance_android_textSize;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i7) && tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(i7, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        m(context, tintTypedArrayObtainStyledAttributes);
        if (i3 >= 26) {
            int i8 = R.styleable.TextAppearance_fontVariationSettings;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i8) && (string = tintTypedArrayObtainStyledAttributes.getString(i8)) != null) {
                d.d(textView, string);
            }
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        Typeface typeface = this.l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.j);
        }
    }

    public static TintInfo c(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        ColorStateList colorStateListE;
        synchronized (appCompatDrawableManager) {
            colorStateListE = appCompatDrawableManager.f318a.e(context, i);
        }
        if (colorStateListE == null) {
            return null;
        }
        TintInfo tintInfo = new TintInfo();
        tintInfo.mHasTintList = true;
        tintInfo.mTintList = colorStateListE;
        return tintInfo;
    }

    public final void b() {
        TintInfo tintInfo = this.f495b;
        TextView textView = this.f494a;
        if (tintInfo != null || this.c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.f495b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f == null && this.f496g == null) {
            return;
        }
        Drawable[] drawableArrA = a.a(textView);
        a(drawableArrA[0], this.f);
        a(drawableArrA[2], this.f496g);
    }

    public final void a(Drawable drawable, TintInfo tintInfo) {
        if (drawable == null || tintInfo == null) {
            return;
        }
        AppCompatDrawableManager.a(drawable, tintInfo, this.f494a.getDrawableState());
    }

    public final ColorStateList d() {
        TintInfo tintInfo = this.h;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    public final void k(ColorStateList colorStateList) {
        if (this.h == null) {
            this.h = new TintInfo();
        }
        TintInfo tintInfo = this.h;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = colorStateList != null;
        this.f495b = tintInfo;
        this.c = tintInfo;
        this.d = tintInfo;
        this.e = tintInfo;
        this.f = tintInfo;
        this.f496g = tintInfo;
    }

    public final PorterDuff.Mode e() {
        TintInfo tintInfo = this.h;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    public final void l(PorterDuff.Mode mode) {
        if (this.h == null) {
            this.h = new TintInfo();
        }
        TintInfo tintInfo = this.h;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = mode != null;
        this.f495b = tintInfo;
        this.c = tintInfo;
        this.d = tintInfo;
        this.e = tintInfo;
        this.f = tintInfo;
        this.f496g = tintInfo;
    }

    @RequiresApi(26)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static boolean d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }

        @DoNotInline
        public static int a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        @DoNotInline
        public static void b(TextView textView, int i, int i2, int i3, int i4) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }

        @DoNotInline
        public static void c(TextView textView, int[] iArr, int i) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        }
    }

    @RequiresApi(24)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static void b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }

        @DoNotInline
        public static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }
    }

    @RequiresApi(17)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void c(TextView textView, Locale locale) {
            textView.setTextLocale(locale);
        }

        @DoNotInline
        public static void b(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }

        @DoNotInline
        public static Drawable[] a(TextView textView) {
            return textView.getCompoundDrawablesRelative();
        }
    }

    @RequiresApi(21)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    @RequiresApi(28)
    public static class e {
        private e() {
        }

        @DoNotInline
        public static Typeface a(Typeface typeface, int i, boolean z) {
            return Typeface.create(typeface, i, z);
        }
    }
}
