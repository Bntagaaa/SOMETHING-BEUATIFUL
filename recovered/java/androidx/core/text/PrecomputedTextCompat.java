package androidx.core.text;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.Layout;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.core.app.f;
import androidx.core.os.TraceCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class PrecomputedTextCompat implements Spannable {
    public static final Object e = new Object();
    public static ExecutorService f;

    /* renamed from: a, reason: collision with root package name */
    public final Spannable f1202a;

    /* renamed from: b, reason: collision with root package name */
    public final Params f1203b;
    public final int[] c;
    public final PrecomputedText d;

    public static final class Params {

        /* renamed from: a, reason: collision with root package name */
        public final TextPaint f1204a;

        /* renamed from: b, reason: collision with root package name */
        public final TextDirectionHeuristic f1205b;
        public final int c;
        public final int d;
        public final PrecomputedText.Params e;

        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            public final TextPaint f1206a;

            /* renamed from: b, reason: collision with root package name */
            public TextDirectionHeuristic f1207b;
            public int c;
            public int d;

            public Builder(@NonNull TextPaint textPaint) {
                this.f1206a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.c = 1;
                    this.d = 1;
                } else {
                    this.d = 0;
                    this.c = 0;
                }
                this.f1207b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
            }

            @RequiresApi(23)
            public Builder setBreakStrategy(int i) {
                this.c = i;
                return this;
            }

            @RequiresApi(23)
            public Builder setHyphenationFrequency(int i) {
                this.d = i;
                return this;
            }

            @RequiresApi(18)
            public Builder setTextDirection(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
                this.f1207b = textDirectionHeuristic;
                return this;
            }

            @NonNull
            public Params build() {
                return new Params(this.f1206a, this.f1207b, this.c, this.d);
            }
        }

        public Params(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.e = f.m(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.e = null;
            }
            this.f1204a = textPaint;
            this.f1205b = textDirectionHeuristic;
            this.c = i;
            this.d = i2;
        }

        @RequiresApi(28)
        public Params(@NonNull PrecomputedText.Params params) {
            this.f1204a = params.getTextPaint();
            this.f1205b = params.getTextDirection();
            this.c = params.getBreakStrategy();
            this.d = params.getHyphenationFrequency();
            this.e = Build.VERSION.SDK_INT < 29 ? null : params;
        }

        @NonNull
        public TextPaint getTextPaint() {
            return this.f1204a;
        }

        @Nullable
        @RequiresApi(18)
        public TextDirectionHeuristic getTextDirection() {
            return this.f1205b;
        }

        @RequiresApi(23)
        public int getBreakStrategy() {
            return this.c;
        }

        @RequiresApi(23)
        public int getHyphenationFrequency() {
            return this.d;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean equalsWithoutTextDirection(@NonNull Params params) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 23) {
                if (this.c != params.getBreakStrategy() || this.d != params.getHyphenationFrequency()) {
                    return false;
                }
            }
            TextPaint textPaint = this.f1204a;
            if (textPaint.getTextSize() != params.getTextPaint().getTextSize() || textPaint.getTextScaleX() != params.getTextPaint().getTextScaleX() || textPaint.getTextSkewX() != params.getTextPaint().getTextSkewX() || textPaint.getLetterSpacing() != params.getTextPaint().getLetterSpacing() || !TextUtils.equals(textPaint.getFontFeatureSettings(), params.getTextPaint().getFontFeatureSettings()) || textPaint.getFlags() != params.getTextPaint().getFlags()) {
                return false;
            }
            if (i >= 24) {
                if (!textPaint.getTextLocales().equals(params.getTextPaint().getTextLocales())) {
                    return false;
                }
            } else if (!textPaint.getTextLocale().equals(params.getTextPaint().getTextLocale())) {
                return false;
            }
            return textPaint.getTypeface() == null ? params.getTextPaint().getTypeface() == null : textPaint.getTypeface().equals(params.getTextPaint().getTypeface());
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Params)) {
                return false;
            }
            Params params = (Params) obj;
            return equalsWithoutTextDirection(params) && this.f1205b == params.getTextDirection();
        }

        public int hashCode() {
            TextDirectionHeuristic textDirectionHeuristic = this.f1205b;
            int i = Build.VERSION.SDK_INT;
            int i2 = this.d;
            int i3 = this.c;
            TextPaint textPaint = this.f1204a;
            if (i >= 24) {
                return ObjectsCompat.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocales(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2));
            }
            return ObjectsCompat.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            StringBuilder sb2 = new StringBuilder("textSize=");
            TextPaint textPaint = this.f1204a;
            sb2.append(textPaint.getTextSize());
            sb.append(sb2.toString());
            sb.append(", textScaleX=" + textPaint.getTextScaleX());
            sb.append(", textSkewX=" + textPaint.getTextSkewX());
            int i = Build.VERSION.SDK_INT;
            sb.append(", letterSpacing=" + textPaint.getLetterSpacing());
            sb.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
            if (i >= 24) {
                sb.append(", textLocale=" + textPaint.getTextLocales());
            } else {
                sb.append(", textLocale=" + textPaint.getTextLocale());
            }
            sb.append(", typeface=" + textPaint.getTypeface());
            if (i >= 26) {
                sb.append(", variationSettings=" + textPaint.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f1205b);
            sb.append(", breakStrategy=" + this.c);
            sb.append(", hyphenationFrequency=" + this.d);
            sb.append("}");
            return sb.toString();
        }
    }

    @SuppressLint({"WrongConstant"})
    public static PrecomputedTextCompat create(@NonNull CharSequence charSequence, @NonNull Params params) {
        CharSequence charSequence2;
        PrecomputedText.Params params2;
        Preconditions.checkNotNull(charSequence);
        Preconditions.checkNotNull(params);
        try {
            TraceCompat.beginSection("PrecomputedText");
            if (Build.VERSION.SDK_INT >= 29 && (params2 = params.e) != null) {
                return new PrecomputedTextCompat(PrecomputedText.create(charSequence, params2), params);
            }
            ArrayList arrayList = new ArrayList();
            int length = charSequence.length();
            int i = 0;
            while (i < length) {
                int iIndexOf = TextUtils.indexOf(charSequence, '\n', i, length);
                i = iIndexOf < 0 ? length : iIndexOf + 1;
                arrayList.add(Integer.valueOf(i));
            }
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
            }
            if (Build.VERSION.SDK_INT >= 23) {
                StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), params.getTextPaint(), Integer.MAX_VALUE).setBreakStrategy(params.getBreakStrategy()).setHyphenationFrequency(params.getHyphenationFrequency()).setTextDirection(params.getTextDirection()).build();
                charSequence2 = charSequence;
            } else {
                charSequence2 = charSequence;
                new StaticLayout(charSequence2, params.getTextPaint(), Integer.MAX_VALUE, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            return new PrecomputedTextCompat(charSequence2, params, iArr);
        } finally {
            TraceCompat.endSection();
        }
    }

    public PrecomputedTextCompat(CharSequence charSequence, Params params, int[] iArr) {
        this.f1202a = new SpannableString(charSequence);
        this.f1203b = params;
        this.c = iArr;
        this.d = null;
    }

    public PrecomputedTextCompat(PrecomputedText precomputedText, Params params) {
        this.f1202a = precomputedText;
        this.f1203b = params;
        this.c = null;
        this.d = Build.VERSION.SDK_INT < 29 ? null : precomputedText;
    }

    @Nullable
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PrecomputedText getPrecomputedText() {
        Spannable spannable = this.f1202a;
        if (f.z(spannable)) {
            return f.p(spannable);
        }
        return null;
    }

    @NonNull
    public Params getParams() {
        return this.f1203b;
    }

    @IntRange(from = 0)
    public int getParagraphCount() {
        if (Build.VERSION.SDK_INT >= 29) {
            return this.d.getParagraphCount();
        }
        return this.c.length;
    }

    @IntRange(from = 0)
    public int getParagraphStart(@IntRange(from = 0) int i) {
        Preconditions.checkArgumentInRange(i, 0, getParagraphCount(), "paraIndex");
        if (Build.VERSION.SDK_INT >= 29) {
            return this.d.getParagraphStart(i);
        }
        if (i == 0) {
            return 0;
        }
        return this.c[i - 1];
    }

    @IntRange(from = 0)
    public int getParagraphEnd(@IntRange(from = 0) int i) {
        Preconditions.checkArgumentInRange(i, 0, getParagraphCount(), "paraIndex");
        if (Build.VERSION.SDK_INT >= 29) {
            return this.d.getParagraphEnd(i);
        }
        return this.c[i];
    }

    public static class a extends FutureTask<PrecomputedTextCompat> {

        /* renamed from: androidx.core.text.PrecomputedTextCompat$a$a, reason: collision with other inner class name */
        public static class CallableC0015a implements Callable<PrecomputedTextCompat> {

            /* renamed from: a, reason: collision with root package name */
            public Params f1208a;

            /* renamed from: b, reason: collision with root package name */
            public CharSequence f1209b;

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public PrecomputedTextCompat call() throws Exception {
                return PrecomputedTextCompat.create(this.f1209b, this.f1208a);
            }
        }
    }

    @UiThread
    public static Future<PrecomputedTextCompat> getTextFuture(@NonNull CharSequence charSequence, @NonNull Params params, @Nullable Executor executor) {
        a.CallableC0015a callableC0015a = new a.CallableC0015a();
        callableC0015a.f1208a = params;
        callableC0015a.f1209b = charSequence;
        a aVar = new a(callableC0015a);
        if (executor == null) {
            synchronized (e) {
                try {
                    if (f == null) {
                        f = Executors.newFixedThreadPool(1);
                    }
                    executor = f;
                } finally {
                }
            }
        }
        executor.execute(aVar);
        return aVar;
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.d.setSpan(obj, i, i2, i3);
        } else {
            this.f1202a.setSpan(obj, i, i2, i3);
        }
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.d.removeSpan(obj);
        } else {
            this.f1202a.removeSpan(obj);
        }
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            return (T[]) this.d.getSpans(i, i2, cls);
        }
        return (T[]) this.f1202a.getSpans(i, i2, cls);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f1202a.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f1202a.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f1202a.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f1202a.nextSpanTransition(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f1202a.length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f1202a.charAt(i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f1202a.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    @NonNull
    public String toString() {
        return this.f1202a.toString();
    }
}
