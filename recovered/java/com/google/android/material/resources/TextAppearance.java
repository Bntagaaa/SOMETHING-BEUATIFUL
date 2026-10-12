package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class TextAppearance {

    /* renamed from: a, reason: collision with root package name */
    public ColorStateList f3153a;

    /* renamed from: b, reason: collision with root package name */
    public float f3154b;
    public final int c;
    public boolean d = false;
    public Typeface e;

    @Nullable
    public final String fontFamily;
    public final boolean hasLetterSpacing;
    public final float letterSpacing;

    @Nullable
    public final ColorStateList shadowColor;
    public final float shadowDx;
    public final float shadowDy;
    public final float shadowRadius;
    public final boolean textAllCaps;

    @Nullable
    public final ColorStateList textColorHint;

    @Nullable
    public final ColorStateList textColorLink;
    public final int textStyle;
    public final int typeface;

    public class a extends ResourcesCompat.FontCallback {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TextAppearanceFontCallback f3155a;

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i) {
            TextAppearance.this.d = true;
            this.f3155a.onFontRetrievalFailed(i);
        }

        public a(TextAppearanceFontCallback textAppearanceFontCallback) {
            this.f3155a = textAppearanceFontCallback;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            TextAppearance textAppearance = TextAppearance.this;
            textAppearance.e = Typeface.create(typeface, textAppearance.textStyle);
            textAppearance.d = true;
            this.f3155a.onFontRetrieved(textAppearance.e, false);
        }
    }

    public TextAppearance(@NonNull Context context, @StyleRes int i) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R.styleable.TextAppearance);
        setTextSize(typedArrayObtainStyledAttributes.getDimension(R.styleable.TextAppearance_android_textSize, 0.0f));
        setTextColor(MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColor));
        this.textColorHint = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorHint);
        this.textColorLink = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorLink);
        this.textStyle = typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_textStyle, 0);
        this.typeface = typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_typeface, 1);
        int i2 = R.styleable.TextAppearance_fontFamily;
        i2 = typedArrayObtainStyledAttributes.hasValue(i2) ? i2 : R.styleable.TextAppearance_android_fontFamily;
        this.c = typedArrayObtainStyledAttributes.getResourceId(i2, 0);
        this.fontFamily = typedArrayObtainStyledAttributes.getString(i2);
        this.textAllCaps = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        this.shadowColor = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_shadowColor);
        this.shadowDx = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.shadowDy = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.shadowRadius = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i, R.styleable.MaterialTextAppearance);
        int i3 = R.styleable.MaterialTextAppearance_android_letterSpacing;
        this.hasLetterSpacing = typedArrayObtainStyledAttributes2.hasValue(i3);
        this.letterSpacing = typedArrayObtainStyledAttributes2.getFloat(i3, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    @NonNull
    @VisibleForTesting
    public Typeface getFont(@NonNull Context context) {
        if (this.d) {
            return this.e;
        }
        if (!context.isRestricted()) {
            try {
                Typeface font = ResourcesCompat.getFont(context, this.c);
                this.e = font;
                if (font != null) {
                    this.e = Typeface.create(font, this.textStyle);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e) {
                Log.d("TextAppearance", "Error loading font " + this.fontFamily, e);
            }
        }
        a();
        this.d = true;
        return this.e;
    }

    public void getFontAsync(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull TextAppearanceFontCallback textAppearanceFontCallback) {
        updateTextPaintMeasureState(context, textPaint, getFallbackFont());
        getFontAsync(context, new b(context, textPaint, textAppearanceFontCallback));
    }

    public class b extends TextAppearanceFontCallback {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f3157a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ TextPaint f3158b;
        public final /* synthetic */ TextAppearanceFontCallback c;

        public b(Context context, TextPaint textPaint, TextAppearanceFontCallback textAppearanceFontCallback) {
            this.f3157a = context;
            this.f3158b = textPaint;
            this.c = textAppearanceFontCallback;
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public void onFontRetrieved(@NonNull Typeface typeface, boolean z) {
            TextAppearance.this.updateTextPaintMeasureState(this.f3157a, this.f3158b, typeface);
            this.c.onFontRetrieved(typeface, z);
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public void onFontRetrievalFailed(int i) {
            this.c.onFontRetrievalFailed(i);
        }
    }

    public Typeface getFallbackFont() {
        a();
        return this.e;
    }

    public final void a() {
        String str;
        if (this.e == null && (str = this.fontFamily) != null) {
            this.e = Typeface.create(str, this.textStyle);
        }
        if (this.e == null) {
            int i = this.typeface;
            if (i == 1) {
                this.e = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.e = Typeface.SERIF;
            } else if (i == 3) {
                this.e = Typeface.MONOSPACE;
            } else {
                this.e = Typeface.DEFAULT;
            }
            this.e = Typeface.create(this.e, this.textStyle);
        }
    }

    public void updateDrawState(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull TextAppearanceFontCallback textAppearanceFontCallback) {
        updateMeasureState(context, textPaint, textAppearanceFontCallback);
        ColorStateList colorStateList = this.f3153a;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.shadowRadius;
        float f2 = this.shadowDx;
        float f3 = this.shadowDy;
        ColorStateList colorStateList2 = this.shadowColor;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void updateTextPaintMeasureState(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        Typeface typefaceMaybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(context, typeface);
        if (typefaceMaybeCopyWithFontWeightAdjustment != null) {
            typeface = typefaceMaybeCopyWithFontWeightAdjustment;
        }
        textPaint.setTypeface(typeface);
        int i = this.textStyle & (~typeface.getStyle());
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f3154b);
        if (this.hasLetterSpacing) {
            textPaint.setLetterSpacing(this.letterSpacing);
        }
    }

    @Nullable
    public ColorStateList getTextColor() {
        return this.f3153a;
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        this.f3153a = colorStateList;
    }

    public float getTextSize() {
        return this.f3154b;
    }

    public void setTextSize(float f) {
        this.f3154b = f;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getFontAsync(@androidx.annotation.NonNull android.content.Context r5, @androidx.annotation.NonNull com.google.android.material.resources.TextAppearanceFontCallback r6) {
        /*
            r4 = this;
            boolean r0 = com.google.android.material.resources.TextAppearanceConfig.shouldLoadFontSynchronously()
            r1 = 0
            int r2 = r4.c
            if (r0 == 0) goto La
            goto L14
        La:
            if (r2 == 0) goto L11
            android.graphics.Typeface r0 = androidx.core.content.res.ResourcesCompat.getCachedFont(r5, r2)
            goto L12
        L11:
            r0 = r1
        L12:
            if (r0 == 0) goto L18
        L14:
            r4.getFont(r5)
            goto L1b
        L18:
            r4.a()
        L1b:
            r0 = 1
            if (r2 != 0) goto L20
            r4.d = r0
        L20:
            boolean r3 = r4.d
            if (r3 == 0) goto L2a
            android.graphics.Typeface r5 = r4.e
            r6.onFontRetrieved(r5, r0)
            return
        L2a:
            com.google.android.material.resources.TextAppearance$a r3 = new com.google.android.material.resources.TextAppearance$a     // Catch: java.lang.Exception -> L33 android.content.res.Resources.NotFoundException -> L50
            r3.<init>(r6)     // Catch: java.lang.Exception -> L33 android.content.res.Resources.NotFoundException -> L50
            androidx.core.content.res.ResourcesCompat.getFont(r5, r2, r3, r1)     // Catch: java.lang.Exception -> L33 android.content.res.Resources.NotFoundException -> L50
            return
        L33:
            r5 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Error loading font "
            r1.<init>(r2)
            java.lang.String r2 = r4.fontFamily
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "TextAppearance"
            android.util.Log.d(r2, r1, r5)
            r4.d = r0
            r5 = -3
            r6.onFontRetrievalFailed(r5)
            goto L55
        L50:
            r4.d = r0
            r6.onFontRetrievalFailed(r0)
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.resources.TextAppearance.getFontAsync(android.content.Context, com.google.android.material.resources.TextAppearanceFontCallback):void");
    }

    public void updateMeasureState(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull TextAppearanceFontCallback textAppearanceFontCallback) {
        if (!TextAppearanceConfig.shouldLoadFontSynchronously()) {
            int i = this.c;
            if ((i != 0 ? ResourcesCompat.getCachedFont(context, i) : null) == null) {
                getFontAsync(context, textPaint, textAppearanceFontCallback);
                return;
            }
        }
        updateTextPaintMeasureState(context, textPaint, getFont(context));
    }
}
