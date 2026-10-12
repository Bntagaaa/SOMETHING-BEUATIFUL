package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class SpannableBuilder extends SpannableStringBuilder {

    /* renamed from: a, reason: collision with root package name */
    public final Class f1521a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1522b;

    public SpannableBuilder(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f1522b = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.f1521a = cls;
    }

    public SpannableBuilder(Class cls, SpannableBuilder spannableBuilder, int i, int i2) {
        super(spannableBuilder, i, i2);
        this.f1522b = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.f1521a = cls;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static SpannableBuilder create(@NonNull Class<?> cls, @NonNull CharSequence charSequence) {
        return new SpannableBuilder(cls, charSequence);
    }

    public final boolean c(Object obj) {
        if (obj != null) {
            return this.f1521a == obj.getClass();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    @SuppressLint({"UnknownNullness"})
    public <T> T[] getSpans(int i, int i2, @NonNull Class<T> cls) {
        if (this.f1521a == cls) {
            a[] aVarArr = (a[]) super.getSpans(i, i2, a.class);
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, aVarArr.length));
            for (int i3 = 0; i3 < aVarArr.length; i3++) {
                tArr[i3] = aVarArr[i3].f1523a;
            }
            return tArr;
        }
        return (T[]) super.getSpans(i, i2, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int nextSpanTransition(int i, int i2, @Nullable Class cls) {
        if (cls == null || this.f1521a == cls) {
            cls = a.class;
        }
        return super.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    @SuppressLint({"UnknownNullness"})
    public CharSequence subSequence(int i, int i2) {
        return new SpannableBuilder(this.f1521a, this, i, i2);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void setSpan(@Nullable Object obj, int i, int i2, int i3) {
        if (c(obj)) {
            a aVar = new a(obj);
            this.f1522b.add(aVar);
            obj = aVar;
        }
        super.setSpan(obj, i, i2, i3);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void removeSpan(@Nullable Object obj) {
        a aVarB;
        if (c(obj)) {
            aVarB = b(obj);
            if (aVarB != null) {
                obj = aVarB;
            }
        } else {
            aVarB = null;
        }
        super.removeSpan(obj);
        if (aVarB != null) {
            this.f1522b.remove(aVarB);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanStart(@Nullable Object obj) {
        a aVarB;
        if (c(obj) && (aVarB = b(obj)) != null) {
            obj = aVarB;
        }
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanEnd(@Nullable Object obj) {
        a aVarB;
        if (c(obj) && (aVarB = b(obj)) != null) {
            obj = aVarB;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanFlags(@Nullable Object obj) {
        a aVarB;
        if (c(obj) && (aVarB = b(obj)) != null) {
            obj = aVarB;
        }
        return super.getSpanFlags(obj);
    }

    public final a b(Object obj) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f1522b;
            if (i >= arrayList.size()) {
                return null;
            }
            a aVar = (a) arrayList.get(i);
            if (aVar.f1523a == obj) {
                return aVar;
            }
            i++;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void beginBatchEdit() {
        a();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void endBatchEdit() {
        d();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f1522b;
            if (i >= arrayList.size()) {
                return;
            }
            ((a) arrayList.get(i)).onTextChanged(this, 0, length(), length());
            i++;
        }
    }

    public final void a() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f1522b;
            if (i >= arrayList.size()) {
                return;
            }
            ((a) arrayList.get(i)).f1524b.incrementAndGet();
            i++;
        }
    }

    public final void d() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f1522b;
            if (i >= arrayList.size()) {
                return;
            }
            ((a) arrayList.get(i)).f1524b.decrementAndGet();
            i++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i, int i2, CharSequence charSequence) {
        a();
        super.replace(i, i2, charSequence);
        d();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i, int i2, CharSequence charSequence, int i3, int i4) {
        a();
        super.replace(i, i2, charSequence, i3, i4);
        d();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i, CharSequence charSequence) {
        super.insert(i, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i, CharSequence charSequence, int i2, int i3) {
        super.insert(i, charSequence, i2, i3);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder delete(int i, int i2) {
        super.delete(i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(char c) {
        super.append(c);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2) {
        super.append(charSequence, i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i) {
        super.append(charSequence, obj, i);
        return this;
    }

    public static class a implements TextWatcher, SpanWatcher {

        /* renamed from: a, reason: collision with root package name */
        public final Object f1523a;

        /* renamed from: b, reason: collision with root package name */
        public final AtomicInteger f1524b = new AtomicInteger(0);

        public a(Object obj) {
            this.f1523a = obj;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ((TextWatcher) this.f1523a).beforeTextChanged(charSequence, i, i2, i3);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ((TextWatcher) this.f1523a).onTextChanged(charSequence, i, i2, i3);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ((TextWatcher) this.f1523a).afterTextChanged(editable);
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i, int i2) {
            if (this.f1524b.get() <= 0 || !(obj instanceof EmojiSpan)) {
                ((SpanWatcher) this.f1523a).onSpanAdded(spannable, obj, i, i2);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i, int i2) {
            if (this.f1524b.get() <= 0 || !(obj instanceof EmojiSpan)) {
                ((SpanWatcher) this.f1523a).onSpanRemoved(spannable, obj, i, i2);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x001c A[PHI: r11
          0x001c: PHI (r11v1 int) = (r11v0 int), (r11v3 int) binds: [B:8:0x0011, B:12:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // android.text.SpanWatcher
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onSpanChanged(android.text.Spannable r9, java.lang.Object r10, int r11, int r12, int r13, int r14) {
            /*
                r8 = this;
                java.util.concurrent.atomic.AtomicInteger r0 = r8.f1524b
                int r0 = r0.get()
                if (r0 <= 0) goto Ld
                boolean r0 = r10 instanceof androidx.emoji2.text.EmojiSpan
                if (r0 == 0) goto Ld
                return
            Ld:
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 28
                if (r0 >= r1) goto L1c
                r0 = 0
                if (r11 <= r12) goto L17
                r11 = 0
            L17:
                if (r13 <= r14) goto L1c
                r4 = r11
                r6 = 0
                goto L1e
            L1c:
                r4 = r11
                r6 = r13
            L1e:
                java.lang.Object r11 = r8.f1523a
                r1 = r11
                android.text.SpanWatcher r1 = (android.text.SpanWatcher) r1
                r2 = r9
                r3 = r10
                r5 = r12
                r7 = r14
                r1.onSpanChanged(r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.SpannableBuilder.a.onSpanChanged(android.text.Spannable, java.lang.Object, int, int, int, int):void");
        }
    }
}
