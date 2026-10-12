package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicCompat;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.a;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TypefaceUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class CollapsingTextHelper {
    public Typeface A;
    public Typeface B;
    public Typeface C;
    public Typeface D;
    public CancelableFontCallback E;
    public CancelableFontCallback F;
    public CharSequence G;
    public CharSequence H;
    public boolean I;
    public Bitmap K;
    public float L;
    public float M;
    public float N;
    public float O;
    public float P;
    public int Q;
    public int[] R;
    public boolean S;
    public final TextPaint T;
    public final TextPaint U;
    public TimeInterpolator V;
    public TimeInterpolator W;
    public float X;
    public float Y;
    public float Z;

    /* renamed from: a, reason: collision with root package name */
    public final View f3056a;
    public ColorStateList a0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3057b;
    public float b0;
    public float c;
    public float c0;
    public boolean d;
    public float d0;
    public float e;
    public ColorStateList e0;
    public float f;
    public float f0;

    /* renamed from: g, reason: collision with root package name */
    public int f3058g;
    public float g0;
    public final Rect h;
    public float h0;
    public final Rect i;
    public StaticLayout i0;
    public final RectF j;
    public float j0;
    public float k0;
    public float l0;
    public CharSequence m0;
    public ColorStateList o;
    public ColorStateList p;
    public int q;
    public float r;
    public float s;
    public float t;
    public float u;
    public float v;
    public float w;
    public Typeface x;
    public Typeface y;
    public Typeface z;
    public int k = 16;
    public int l = 16;
    public float m = 15.0f;
    public float n = 15.0f;
    public boolean J = true;
    public int n0 = 1;
    public float o0 = 0.0f;
    public float p0 = 1.0f;
    public int q0 = com.google.android.material.internal.a.m;

    public CollapsingTextHelper(View view) {
        this.f3056a = view;
        TextPaint textPaint = new TextPaint(129);
        this.T = textPaint;
        this.U = new TextPaint(textPaint);
        this.i = new Rect();
        this.h = new Rect();
        this.j = new RectF();
        float f = this.e;
        this.f = _COROUTINE.a.a(1.0f, f, 0.5f, f);
        maybeUpdateFontWeightAdjustment(view.getContext().getResources().getConfiguration());
    }

    public void setTextSizeInterpolator(TimeInterpolator timeInterpolator) {
        this.W = timeInterpolator;
        recalculate();
    }

    public void setPositionInterpolator(TimeInterpolator timeInterpolator) {
        this.V = timeInterpolator;
        recalculate();
    }

    @Nullable
    public TimeInterpolator getPositionInterpolator() {
        return this.V;
    }

    public void setExpandedTextSize(float f) {
        if (this.m != f) {
            this.m = f;
            recalculate();
        }
    }

    public void setCollapsedTextSize(float f) {
        if (this.n != f) {
            this.n = f;
            recalculate();
        }
    }

    public void setCollapsedTextColor(ColorStateList colorStateList) {
        if (this.p != colorStateList) {
            this.p = colorStateList;
            recalculate();
        }
    }

    public void setExpandedTextColor(ColorStateList colorStateList) {
        if (this.o != colorStateList) {
            this.o = colorStateList;
            recalculate();
        }
    }

    public void setExpandedLetterSpacing(float f) {
        if (this.g0 != f) {
            this.g0 = f;
            recalculate();
        }
    }

    public void setExpandedBounds(@NonNull Rect rect) {
        setExpandedBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setCollapsedBounds(@NonNull Rect rect) {
        setCollapsedBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getCollapsedTextActualBounds(@androidx.annotation.NonNull android.graphics.RectF r11, int r12, int r13) {
        /*
            r10 = this;
            java.lang.CharSequence r0 = r10.G
            boolean r0 = r10.b(r0)
            r10.I = r0
            r1 = 1073741824(0x40000000, float:2.0)
            r2 = 5
            android.graphics.Rect r3 = r10.i
            r4 = 8388613(0x800005, float:1.175495E-38)
            r5 = 1
            r6 = 17
            if (r13 == r6) goto L3b
            r7 = r13 & 7
            if (r7 != r5) goto L1a
            goto L3b
        L1a:
            r7 = r13 & r4
            if (r7 == r4) goto L30
            r7 = r13 & 5
            if (r7 != r2) goto L23
            goto L30
        L23:
            if (r0 == 0) goto L2c
            int r7 = r3.right
            float r7 = (float) r7
            float r8 = r10.j0
        L2a:
            float r7 = r7 - r8
            goto L41
        L2c:
            int r7 = r3.left
        L2e:
            float r7 = (float) r7
            goto L41
        L30:
            if (r0 == 0) goto L35
            int r7 = r3.left
            goto L2e
        L35:
            int r7 = r3.right
            float r7 = (float) r7
            float r8 = r10.j0
            goto L2a
        L3b:
            float r7 = (float) r12
            float r7 = r7 / r1
            float r8 = r10.j0
            float r8 = r8 / r1
            goto L2a
        L41:
            r11.left = r7
            int r8 = r3.top
            float r9 = (float) r8
            r11.top = r9
            if (r13 == r6) goto L6a
            r6 = r13 & 7
            if (r6 != r5) goto L4f
            goto L6a
        L4f:
            r12 = r13 & r4
            if (r12 == r4) goto L62
            r12 = r13 & 5
            if (r12 != r2) goto L58
            goto L62
        L58:
            if (r0 == 0) goto L5e
            int r12 = r3.right
        L5c:
            float r12 = (float) r12
            goto L70
        L5e:
            float r12 = r10.j0
        L60:
            float r12 = r12 + r7
            goto L70
        L62:
            if (r0 == 0) goto L67
            float r12 = r10.j0
            goto L60
        L67:
            int r12 = r3.right
            goto L5c
        L6a:
            float r12 = (float) r12
            float r12 = r12 / r1
            float r13 = r10.j0
            float r13 = r13 / r1
            float r12 = r12 + r13
        L70:
            r11.right = r12
            float r12 = (float) r8
            float r13 = r10.getCollapsedTextHeight()
            float r13 = r13 + r12
            r11.bottom = r13
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.internal.CollapsingTextHelper.getCollapsedTextActualBounds(android.graphics.RectF, int, int):void");
    }

    public float getExpandedTextHeight() {
        TextPaint textPaint = this.U;
        textPaint.setTextSize(this.m);
        textPaint.setTypeface(this.A);
        textPaint.setLetterSpacing(this.g0);
        return -textPaint.ascent();
    }

    public float getExpandedTextFullHeight() {
        TextPaint textPaint = this.U;
        textPaint.setTextSize(this.m);
        textPaint.setTypeface(this.A);
        textPaint.setLetterSpacing(this.g0);
        return textPaint.descent() + (-textPaint.ascent());
    }

    public float getCollapsedTextHeight() {
        TextPaint textPaint = this.U;
        textPaint.setTextSize(this.n);
        textPaint.setTypeface(this.x);
        textPaint.setLetterSpacing(this.f0);
        return -textPaint.ascent();
    }

    public void setCurrentOffsetY(int i) {
        this.f3058g = i;
    }

    public void setFadeModeStartFraction(float f) {
        this.e = f;
        this.f = _COROUTINE.a.a(1.0f, f, 0.5f, f);
    }

    public void setFadeModeEnabled(boolean z) {
        this.d = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            r2 = this;
            android.graphics.Rect r0 = r2.i
            int r1 = r0.width()
            if (r1 <= 0) goto L1e
            int r0 = r0.height()
            if (r0 <= 0) goto L1e
            android.graphics.Rect r0 = r2.h
            int r1 = r0.width()
            if (r1 <= 0) goto L1e
            int r0 = r0.height()
            if (r0 <= 0) goto L1e
            r0 = 1
            goto L1f
        L1e:
            r0 = 0
        L1f:
            r2.f3057b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.internal.CollapsingTextHelper.f():void");
    }

    public void setExpandedTextGravity(int i) {
        if (this.k != i) {
            this.k = i;
            recalculate();
        }
    }

    public int getExpandedTextGravity() {
        return this.k;
    }

    public void setCollapsedTextGravity(int i) {
        if (this.l != i) {
            this.l = i;
            recalculate();
        }
    }

    public int getCollapsedTextGravity() {
        return this.l;
    }

    public void setCollapsedTextAppearance(int i) {
        View view = this.f3056a;
        TextAppearance textAppearance = new TextAppearance(view.getContext(), i);
        if (textAppearance.getTextColor() != null) {
            this.p = textAppearance.getTextColor();
        }
        if (textAppearance.getTextSize() != 0.0f) {
            this.n = textAppearance.getTextSize();
        }
        ColorStateList colorStateList = textAppearance.shadowColor;
        if (colorStateList != null) {
            this.a0 = colorStateList;
        }
        this.Y = textAppearance.shadowDx;
        this.Z = textAppearance.shadowDy;
        this.X = textAppearance.shadowRadius;
        this.f0 = textAppearance.letterSpacing;
        CancelableFontCallback cancelableFontCallback = this.F;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        this.F = new CancelableFontCallback(new a(), textAppearance.getFallbackFont());
        textAppearance.getFontAsync(view.getContext(), this.F);
        recalculate();
    }

    public class a implements CancelableFontCallback.ApplyFont {
        public a() {
        }

        @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
        public void apply(Typeface typeface) {
            CollapsingTextHelper.this.setCollapsedTypeface(typeface);
        }
    }

    public void setExpandedTextAppearance(int i) {
        View view = this.f3056a;
        TextAppearance textAppearance = new TextAppearance(view.getContext(), i);
        if (textAppearance.getTextColor() != null) {
            this.o = textAppearance.getTextColor();
        }
        if (textAppearance.getTextSize() != 0.0f) {
            this.m = textAppearance.getTextSize();
        }
        ColorStateList colorStateList = textAppearance.shadowColor;
        if (colorStateList != null) {
            this.e0 = colorStateList;
        }
        this.c0 = textAppearance.shadowDx;
        this.d0 = textAppearance.shadowDy;
        this.b0 = textAppearance.shadowRadius;
        this.g0 = textAppearance.letterSpacing;
        CancelableFontCallback cancelableFontCallback = this.E;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        this.E = new CancelableFontCallback(new b(), textAppearance.getFallbackFont());
        textAppearance.getFontAsync(view.getContext(), this.E);
        recalculate();
    }

    public class b implements CancelableFontCallback.ApplyFont {
        public b() {
        }

        @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
        public void apply(Typeface typeface) {
            CollapsingTextHelper.this.setExpandedTypeface(typeface);
        }
    }

    public void setCollapsedTypeface(Typeface typeface) {
        if (g(typeface)) {
            recalculate();
        }
    }

    public void setExpandedTypeface(Typeface typeface) {
        if (h(typeface)) {
            recalculate();
        }
    }

    public void setTypefaces(Typeface typeface) {
        boolean zG = g(typeface);
        boolean zH = h(typeface);
        if (zG || zH) {
            recalculate();
        }
    }

    public final boolean g(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.F;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        if (this.z == typeface) {
            return false;
        }
        this.z = typeface;
        Typeface typefaceMaybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(this.f3056a.getContext().getResources().getConfiguration(), typeface);
        this.y = typefaceMaybeCopyWithFontWeightAdjustment;
        if (typefaceMaybeCopyWithFontWeightAdjustment == null) {
            typefaceMaybeCopyWithFontWeightAdjustment = this.z;
        }
        this.x = typefaceMaybeCopyWithFontWeightAdjustment;
        return true;
    }

    public final boolean h(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.E;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        if (this.C == typeface) {
            return false;
        }
        this.C = typeface;
        Typeface typefaceMaybeCopyWithFontWeightAdjustment = TypefaceUtils.maybeCopyWithFontWeightAdjustment(this.f3056a.getContext().getResources().getConfiguration(), typeface);
        this.B = typefaceMaybeCopyWithFontWeightAdjustment;
        if (typefaceMaybeCopyWithFontWeightAdjustment == null) {
            typefaceMaybeCopyWithFontWeightAdjustment = this.C;
        }
        this.A = typefaceMaybeCopyWithFontWeightAdjustment;
        return true;
    }

    public Typeface getCollapsedTypeface() {
        Typeface typeface = this.x;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public Typeface getExpandedTypeface() {
        Typeface typeface = this.A;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public void maybeUpdateFontWeightAdjustment(@NonNull Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.z;
            if (typeface != null) {
                this.y = TypefaceUtils.maybeCopyWithFontWeightAdjustment(configuration, typeface);
            }
            Typeface typeface2 = this.C;
            if (typeface2 != null) {
                this.B = TypefaceUtils.maybeCopyWithFontWeightAdjustment(configuration, typeface2);
            }
            Typeface typeface3 = this.y;
            if (typeface3 == null) {
                typeface3 = this.z;
            }
            this.x = typeface3;
            Typeface typeface4 = this.B;
            if (typeface4 == null) {
                typeface4 = this.C;
            }
            this.A = typeface4;
            recalculate(true);
        }
    }

    public void setExpansionFraction(float f) {
        float f2;
        float fLerp;
        float fClamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (fClamp != this.c) {
            this.c = fClamp;
            boolean z = this.d;
            RectF rectF = this.j;
            Rect rect = this.i;
            Rect rect2 = this.h;
            if (z) {
                if (fClamp < this.f) {
                    rect = rect2;
                }
                rectF.set(rect);
            } else {
                rectF.left = e(rect2.left, rect.left, fClamp, this.V);
                rectF.top = e(this.r, this.s, fClamp, this.V);
                rectF.right = e(rect2.right, rect.right, fClamp, this.V);
                rectF.bottom = e(rect2.bottom, rect.bottom, fClamp, this.V);
            }
            if (!this.d) {
                this.v = e(this.t, this.u, fClamp, this.V);
                this.w = e(this.r, this.s, fClamp, this.V);
                i(fClamp);
                f2 = fClamp;
            } else if (fClamp < this.f) {
                this.v = this.t;
                this.w = this.r;
                i(0.0f);
                f2 = 0.0f;
            } else {
                this.v = this.u;
                this.w = this.s - Math.max(0, this.f3058g);
                i(1.0f);
                f2 = 1.0f;
            }
            TimeInterpolator timeInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
            this.k0 = 1.0f - e(0.0f, 1.0f, 1.0f - fClamp, timeInterpolator);
            View view = this.f3056a;
            ViewCompat.postInvalidateOnAnimation(view);
            this.l0 = e(1.0f, 0.0f, fClamp, timeInterpolator);
            ViewCompat.postInvalidateOnAnimation(view);
            ColorStateList colorStateList = this.p;
            ColorStateList colorStateList2 = this.o;
            TextPaint textPaint = this.T;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(d(colorStateList2), getCurrentCollapsedTextColor(), f2));
            } else {
                textPaint.setColor(getCurrentCollapsedTextColor());
            }
            float f3 = this.f0;
            float f4 = this.g0;
            if (f3 != f4) {
                textPaint.setLetterSpacing(e(f4, f3, fClamp, timeInterpolator));
            } else {
                textPaint.setLetterSpacing(f3);
            }
            this.N = AnimationUtils.lerp(this.b0, this.X, fClamp);
            this.O = AnimationUtils.lerp(this.c0, this.Y, fClamp);
            this.P = AnimationUtils.lerp(this.d0, this.Z, fClamp);
            int iA = a(d(this.e0), d(this.a0), fClamp);
            this.Q = iA;
            textPaint.setShadowLayer(this.N, this.O, this.P, iA);
            if (this.d) {
                int alpha = textPaint.getAlpha();
                float f5 = this.f;
                if (fClamp <= f5) {
                    fLerp = AnimationUtils.lerp(1.0f, 0.0f, this.e, f5, fClamp);
                } else {
                    fLerp = AnimationUtils.lerp(0.0f, 1.0f, f5, 1.0f, fClamp);
                }
                textPaint.setAlpha((int) (fLerp * alpha));
            }
            ViewCompat.postInvalidateOnAnimation(view);
        }
    }

    public final boolean setState(int[] iArr) {
        this.R = iArr;
        if (!isStateful()) {
            return false;
        }
        recalculate();
        return true;
    }

    public final boolean isStateful() {
        ColorStateList colorStateList = this.p;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.o;
        return colorStateList2 != null && colorStateList2.isStateful();
    }

    public float getFadeModeThresholdFraction() {
        return this.f;
    }

    public float getExpansionFraction() {
        return this.c;
    }

    public float getCollapsedTextSize() {
        return this.n;
    }

    public float getExpandedTextSize() {
        return this.m;
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z) {
        this.J = z;
    }

    public boolean isRtlTextDirectionHeuristicsEnabled() {
        return this.J;
    }

    @ColorInt
    public int getCurrentCollapsedTextColor() {
        return d(this.p);
    }

    public final int d(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.R;
        if (iArr != null) {
            return colorStateList.getColorForState(iArr, 0);
        }
        return colorStateList.getDefaultColor();
    }

    public void draw(@NonNull Canvas canvas) {
        int iSave = canvas.save();
        if (this.H == null || !this.f3057b) {
            return;
        }
        TextPaint textPaint = this.T;
        textPaint.setTextSize(this.M);
        float f = this.v;
        float f2 = this.w;
        float f3 = this.L;
        if (f3 != 1.0f && !this.d) {
            canvas.scale(f3, f3, f, f2);
        }
        if (this.n0 > 1 && ((!this.I || this.d) && (!this.d || this.c > this.f))) {
            float lineStart = this.v - this.i0.getLineStart(0);
            int alpha = textPaint.getAlpha();
            canvas.translate(lineStart, f2);
            float f4 = alpha;
            textPaint.setAlpha((int) (this.l0 * f4));
            int i = Build.VERSION.SDK_INT;
            if (i >= 31) {
                textPaint.setShadowLayer(this.N, this.O, this.P, MaterialColors.compositeARGBWithAlpha(this.Q, textPaint.getAlpha()));
            }
            this.i0.draw(canvas);
            textPaint.setAlpha((int) (this.k0 * f4));
            if (i >= 31) {
                textPaint.setShadowLayer(this.N, this.O, this.P, MaterialColors.compositeARGBWithAlpha(this.Q, textPaint.getAlpha()));
            }
            int lineBaseline = this.i0.getLineBaseline(0);
            CharSequence charSequence = this.m0;
            float f5 = lineBaseline;
            canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f5, textPaint);
            if (i >= 31) {
                textPaint.setShadowLayer(this.N, this.O, this.P, this.Q);
            }
            if (!this.d) {
                String strTrim = this.m0.toString().trim();
                if (strTrim.endsWith("…")) {
                    strTrim = strTrim.substring(0, strTrim.length() - 1);
                }
                String str = strTrim;
                textPaint.setAlpha(alpha);
                canvas.drawText(str, 0, Math.min(this.i0.getLineEnd(0), str.length()), 0.0f, f5, (Paint) textPaint);
            }
            canvas = canvas;
        } else {
            canvas.translate(f, f2);
            this.i0.draw(canvas);
        }
        canvas.restoreToCount(iSave);
    }

    public final boolean b(CharSequence charSequence) {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat;
        boolean z = ViewCompat.getLayoutDirection(this.f3056a) == 1;
        if (!this.J) {
            return z;
        }
        if (z) {
            textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL;
        } else {
            textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        }
        return textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
    }

    public final void i(float f) throws NoSuchMethodException, SecurityException {
        c(f, false);
        ViewCompat.postInvalidateOnAnimation(this.f3056a);
    }

    public final void c(float f, boolean z) throws NoSuchMethodException, SecurityException {
        boolean z2;
        float f2;
        float f3;
        boolean z3;
        StaticLayout staticLayoutBuild;
        Layout.Alignment alignment;
        if (this.G == null) {
            return;
        }
        float fWidth = this.i.width();
        float fWidth2 = this.h.width();
        if (Math.abs(f - 1.0f) < 1.0E-5f) {
            f2 = this.n;
            f3 = this.f0;
            this.L = 1.0f;
            Typeface typeface = this.D;
            Typeface typeface2 = this.x;
            if (typeface != typeface2) {
                this.D = typeface2;
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            float f4 = this.m;
            float f5 = this.g0;
            Typeface typeface3 = this.D;
            Typeface typeface4 = this.A;
            if (typeface3 != typeface4) {
                this.D = typeface4;
                z2 = true;
            } else {
                z2 = false;
            }
            if (Math.abs(f - 0.0f) < 1.0E-5f) {
                this.L = 1.0f;
            } else {
                this.L = e(this.m, this.n, f, this.W) / this.m;
            }
            float f6 = this.n / this.m;
            fWidth = (!z && fWidth2 * f6 > fWidth) ? Math.min(fWidth / f6, fWidth2) : fWidth2;
            f2 = f4;
            f3 = f5;
            z3 = z2;
        }
        if (fWidth > 0.0f) {
            z3 = ((this.M > f2 ? 1 : (this.M == f2 ? 0 : -1)) != 0) || ((this.h0 > f3 ? 1 : (this.h0 == f3 ? 0 : -1)) != 0) || this.S || z3;
            this.M = f2;
            this.h0 = f3;
            this.S = false;
        }
        if (this.H == null || z3) {
            TextPaint textPaint = this.T;
            textPaint.setTextSize(this.M);
            textPaint.setTypeface(this.D);
            textPaint.setLetterSpacing(this.h0);
            textPaint.setLinearText(this.L != 1.0f);
            boolean zB = b(this.G);
            this.I = zB;
            int i = this.n0;
            if (i <= 1 || (zB && !this.d)) {
                i = 1;
            }
            try {
                if (i == 1) {
                    alignment = Layout.Alignment.ALIGN_NORMAL;
                } else {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(this.k, zB ? 1 : 0) & 7;
                    if (absoluteGravity == 1) {
                        alignment = Layout.Alignment.ALIGN_CENTER;
                    } else if (absoluteGravity == 5) {
                        alignment = this.I ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                    } else {
                        alignment = this.I ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
                    }
                }
                staticLayoutBuild = com.google.android.material.internal.a.obtain(this.G, textPaint, (int) fWidth).setEllipsize(TextUtils.TruncateAt.END).setIsRtl(zB).setAlignment(alignment).setIncludePad(false).setMaxLines(i).setLineSpacing(this.o0, this.p0).setHyphenationFrequency(this.q0).build();
            } catch (a.C0038a e) {
                Log.e("CollapsingTextHelper", e.getCause().getMessage(), e);
                staticLayoutBuild = null;
            }
            StaticLayout staticLayout = (StaticLayout) Preconditions.checkNotNull(staticLayoutBuild);
            this.i0 = staticLayout;
            this.H = staticLayout.getText();
        }
    }

    public void recalculate() {
        recalculate(false);
    }

    public void recalculate(boolean z) throws NoSuchMethodException, SecurityException {
        float fMeasureText;
        float f;
        float fLerp;
        StaticLayout staticLayout;
        View view = this.f3056a;
        if ((view.getHeight() <= 0 || view.getWidth() <= 0) && !z) {
            return;
        }
        c(1.0f, z);
        CharSequence charSequence = this.H;
        TextPaint textPaint = this.T;
        if (charSequence != null && (staticLayout = this.i0) != null) {
            this.m0 = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.m0;
        if (charSequence2 != null) {
            this.j0 = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.j0 = 0.0f;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.l, this.I ? 1 : 0);
        int i = absoluteGravity & 112;
        Rect rect = this.i;
        if (i == 48) {
            this.s = rect.top;
        } else if (i != 80) {
            this.s = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.s = textPaint.ascent() + rect.bottom;
        }
        int i2 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i2 == 1) {
            this.u = rect.centerX() - (this.j0 / 2.0f);
        } else if (i2 == 5) {
            this.u = rect.right - this.j0;
        } else {
            this.u = rect.left;
        }
        c(0.0f, z);
        float height = this.i0 != null ? r1.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.i0;
        if (staticLayout2 != null && this.n0 > 1) {
            fMeasureText = staticLayout2.getWidth();
        } else {
            CharSequence charSequence3 = this.H;
            fMeasureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        }
        StaticLayout staticLayout3 = this.i0;
        this.q = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.k, this.I ? 1 : 0);
        int i3 = absoluteGravity2 & 112;
        Rect rect2 = this.h;
        if (i3 == 48) {
            this.r = rect2.top;
        } else if (i3 != 80) {
            this.r = rect2.centerY() - (height / 2.0f);
        } else {
            this.r = textPaint.descent() + (rect2.bottom - height);
        }
        int i4 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i4 == 1) {
            this.t = rect2.centerX() - (fMeasureText / 2.0f);
        } else if (i4 == 5) {
            this.t = rect2.right - fMeasureText;
        } else {
            this.t = rect2.left;
        }
        Bitmap bitmap = this.K;
        if (bitmap != null) {
            bitmap.recycle();
            this.K = null;
        }
        i(this.c);
        float f2 = this.c;
        boolean z2 = this.d;
        RectF rectF = this.j;
        if (z2) {
            if (f2 < this.f) {
                rect = rect2;
            }
            rectF.set(rect);
        } else {
            rectF.left = e(rect2.left, rect.left, f2, this.V);
            rectF.top = e(this.r, this.s, f2, this.V);
            rectF.right = e(rect2.right, rect.right, f2, this.V);
            rectF.bottom = e(rect2.bottom, rect.bottom, f2, this.V);
        }
        if (!this.d) {
            this.v = e(this.t, this.u, f2, this.V);
            this.w = e(this.r, this.s, f2, this.V);
            i(f2);
            f = f2;
        } else if (f2 < this.f) {
            this.v = this.t;
            this.w = this.r;
            i(0.0f);
            f = 0.0f;
        } else {
            this.v = this.u;
            this.w = this.s - Math.max(0, this.f3058g);
            i(1.0f);
            f = 1.0f;
        }
        TimeInterpolator timeInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
        this.k0 = 1.0f - e(0.0f, 1.0f, 1.0f - f2, timeInterpolator);
        ViewCompat.postInvalidateOnAnimation(view);
        this.l0 = e(1.0f, 0.0f, f2, timeInterpolator);
        ViewCompat.postInvalidateOnAnimation(view);
        ColorStateList colorStateList = this.p;
        ColorStateList colorStateList2 = this.o;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(d(colorStateList2), getCurrentCollapsedTextColor(), f));
        } else {
            textPaint.setColor(getCurrentCollapsedTextColor());
        }
        float f3 = this.f0;
        float f4 = this.g0;
        if (f3 != f4) {
            textPaint.setLetterSpacing(e(f4, f3, f2, timeInterpolator));
        } else {
            textPaint.setLetterSpacing(f3);
        }
        this.N = AnimationUtils.lerp(this.b0, this.X, f2);
        this.O = AnimationUtils.lerp(this.c0, this.Y, f2);
        this.P = AnimationUtils.lerp(this.d0, this.Z, f2);
        int iA = a(d(this.e0), d(this.a0), f2);
        this.Q = iA;
        textPaint.setShadowLayer(this.N, this.O, this.P, iA);
        if (this.d) {
            int alpha = textPaint.getAlpha();
            float f5 = this.f;
            if (f2 <= f5) {
                fLerp = AnimationUtils.lerp(1.0f, 0.0f, this.e, f5, f2);
            } else {
                fLerp = AnimationUtils.lerp(0.0f, 1.0f, f5, 1.0f, f2);
            }
            textPaint.setAlpha((int) (fLerp * alpha));
        }
        ViewCompat.postInvalidateOnAnimation(view);
    }

    public void setText(@Nullable CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.G, charSequence)) {
            this.G = charSequence;
            this.H = null;
            Bitmap bitmap = this.K;
            if (bitmap != null) {
                bitmap.recycle();
                this.K = null;
            }
            recalculate();
        }
    }

    @Nullable
    public CharSequence getText() {
        return this.G;
    }

    public void setMaxLines(int i) {
        if (i != this.n0) {
            this.n0 = i;
            Bitmap bitmap = this.K;
            if (bitmap != null) {
                bitmap.recycle();
                this.K = null;
            }
            recalculate();
        }
    }

    public int getMaxLines() {
        return this.n0;
    }

    public int getLineCount() {
        StaticLayout staticLayout = this.i0;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public int getExpandedLineCount() {
        return this.q;
    }

    @RequiresApi(23)
    public void setLineSpacingAdd(float f) {
        this.o0 = f;
    }

    @RequiresApi(23)
    public float getLineSpacingAdd() {
        return this.i0.getSpacingAdd();
    }

    @RequiresApi(23)
    public void setLineSpacingMultiplier(@FloatRange(from = 0.0d) float f) {
        this.p0 = f;
    }

    @RequiresApi(23)
    public float getLineSpacingMultiplier() {
        return this.i0.getSpacingMultiplier();
    }

    @RequiresApi(23)
    public void setHyphenationFrequency(int i) {
        this.q0 = i;
    }

    @RequiresApi(23)
    public int getHyphenationFrequency() {
        return this.q0;
    }

    public ColorStateList getExpandedTextColor() {
        return this.o;
    }

    public ColorStateList getCollapsedTextColor() {
        return this.p;
    }

    public static int a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb(Math.round((Color.alpha(i2) * f) + (Color.alpha(i) * f2)), Math.round((Color.red(i2) * f) + (Color.red(i) * f2)), Math.round((Color.green(i2) * f) + (Color.green(i) * f2)), Math.round((Color.blue(i2) * f) + (Color.blue(i) * f2)));
    }

    public static float e(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return AnimationUtils.lerp(f, f2, f3);
    }

    public void setCollapsedBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.i;
        if (rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4) {
            return;
        }
        rect.set(i, i2, i3, i4);
        this.S = true;
        f();
    }

    public void setExpandedBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.h;
        if (rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4) {
            return;
        }
        rect.set(i, i2, i3, i4);
        this.S = true;
        f();
    }
}
