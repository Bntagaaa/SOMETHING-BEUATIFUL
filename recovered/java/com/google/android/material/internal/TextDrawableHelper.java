package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class TextDrawableHelper {
    public float c;
    public TextAppearance f;

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f3083a = new TextPaint(1);

    /* renamed from: b, reason: collision with root package name */
    public final TextAppearanceFontCallback f3084b = new a();
    public boolean d = true;
    public WeakReference e = new WeakReference(null);

    public interface TextDrawableDelegate {
        @NonNull
        int[] getState();

        boolean onStateChange(int[] iArr);

        void onTextSizeChange();
    }

    public class a extends TextAppearanceFontCallback {
        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public void onFontRetrievalFailed(int i) {
            TextDrawableHelper textDrawableHelper = TextDrawableHelper.this;
            textDrawableHelper.d = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) textDrawableHelper.e.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.onTextSizeChange();
            }
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public void onFontRetrieved(@NonNull Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            TextDrawableHelper textDrawableHelper = TextDrawableHelper.this;
            textDrawableHelper.d = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) textDrawableHelper.e.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.onTextSizeChange();
            }
        }

        public a() {
        }
    }

    public TextDrawableHelper(@Nullable TextDrawableDelegate textDrawableDelegate) {
        setDelegate(textDrawableDelegate);
    }

    public void setDelegate(@Nullable TextDrawableDelegate textDrawableDelegate) {
        this.e = new WeakReference(textDrawableDelegate);
    }

    @NonNull
    public TextPaint getTextPaint() {
        return this.f3083a;
    }

    public void setTextWidthDirty(boolean z) {
        this.d = z;
    }

    public boolean isTextWidthDirty() {
        return this.d;
    }

    public float getTextWidth(String str) {
        if (!this.d) {
            return this.c;
        }
        float fMeasureText = str == null ? 0.0f : this.f3083a.measureText((CharSequence) str, 0, str.length());
        this.c = fMeasureText;
        this.d = false;
        return fMeasureText;
    }

    @Nullable
    public TextAppearance getTextAppearance() {
        return this.f;
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance, Context context) {
        if (this.f != textAppearance) {
            this.f = textAppearance;
            if (textAppearance != null) {
                TextPaint textPaint = this.f3083a;
                TextAppearanceFontCallback textAppearanceFontCallback = this.f3084b;
                textAppearance.updateMeasureState(context, textPaint, textAppearanceFontCallback);
                TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) this.e.get();
                if (textDrawableDelegate != null) {
                    textPaint.drawableState = textDrawableDelegate.getState();
                }
                textAppearance.updateDrawState(context, textPaint, textAppearanceFontCallback);
                this.d = true;
            }
            TextDrawableDelegate textDrawableDelegate2 = (TextDrawableDelegate) this.e.get();
            if (textDrawableDelegate2 != null) {
                textDrawableDelegate2.onTextSizeChange();
                textDrawableDelegate2.onStateChange(textDrawableDelegate2.getState());
            }
        }
    }

    public void updateTextPaintDrawState(Context context) {
        this.f.updateDrawState(context, this.f3083a, this.f3084b);
    }
}
