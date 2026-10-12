package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.XmlRes;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.Locale;

/* loaded from: classes.dex */
public class BadgeDrawable extends Drawable implements TextDrawableHelper.TextDrawableDelegate {
    public static final int BOTTOM_END = 8388693;
    public static final int BOTTOM_START = 8388691;
    public static final int TOP_END = 8388661;
    public static final int TOP_START = 8388659;
    public static final int n = R.style.Widget_MaterialComponents_Badge;
    public static final int o = R.attr.badgeStyle;

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f2779a;

    /* renamed from: b, reason: collision with root package name */
    public final MaterialShapeDrawable f2780b;
    public final TextDrawableHelper c;
    public final Rect d;
    public final BadgeState e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f2781g;
    public int h;
    public float i;
    public float j;
    public float k;
    public WeakReference l;
    public WeakReference m;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BadgeGravity {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @NonNull
    public static BadgeDrawable create(@NonNull Context context) {
        return new BadgeDrawable(context, 0, null);
    }

    @NonNull
    public static BadgeDrawable createFromResource(@NonNull Context context, @XmlRes int i) {
        return new BadgeDrawable(context, i, null);
    }

    public void setVisible(boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        BadgeState badgeState = this.e;
        badgeState.f2782a.l = boolValueOf;
        badgeState.f2783b.l = Boolean.valueOf(z);
        d();
    }

    public BadgeDrawable(Context context, int i, BadgeState.State state) {
        TextAppearance textAppearance;
        Context context2;
        WeakReference weakReference = new WeakReference(context);
        this.f2779a = weakReference;
        ThemeEnforcement.checkMaterialTheme(context);
        this.d = new Rect();
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.f2780b = materialShapeDrawable;
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.c = textDrawableHelper;
        textDrawableHelper.getTextPaint().setTextAlign(Paint.Align.CENTER);
        int i2 = R.style.TextAppearance_MaterialComponents_Badge;
        Context context3 = (Context) weakReference.get();
        if (context3 != null && textDrawableHelper.getTextAppearance() != (textAppearance = new TextAppearance(context3, i2)) && (context2 = (Context) weakReference.get()) != null) {
            textDrawableHelper.setTextAppearance(textAppearance, context2);
            e();
        }
        BadgeState badgeState = new BadgeState(context, i, state);
        this.e = badgeState;
        c();
        textDrawableHelper.setTextWidthDirty(true);
        e();
        invalidateSelf();
        textDrawableHelper.getTextPaint().setAlpha(getAlpha());
        invalidateSelf();
        BadgeState.State state2 = badgeState.f2783b;
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(state2.f2785b.intValue());
        if (materialShapeDrawable.getFillColor() != colorStateListValueOf) {
            materialShapeDrawable.setFillColor(colorStateListValueOf);
            invalidateSelf();
        }
        textDrawableHelper.getTextPaint().setColor(state2.c.intValue());
        invalidateSelf();
        b();
        e();
        d();
    }

    public void setBackgroundColor(@ColorInt int i) {
        Integer numValueOf = Integer.valueOf(i);
        BadgeState badgeState = this.e;
        badgeState.f2782a.f2785b = numValueOf;
        badgeState.f2783b.f2785b = Integer.valueOf(i);
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(badgeState.f2783b.f2785b.intValue());
        MaterialShapeDrawable materialShapeDrawable = this.f2780b;
        if (materialShapeDrawable.getFillColor() != colorStateListValueOf) {
            materialShapeDrawable.setFillColor(colorStateListValueOf);
            invalidateSelf();
        }
    }

    @Deprecated
    public void updateBadgeCoordinates(@NonNull View view, @Nullable ViewGroup viewGroup) {
        if (!(viewGroup instanceof FrameLayout)) {
            throw new IllegalArgumentException("customBadgeParent must be a FrameLayout");
        }
        updateBadgeCoordinates(view, (FrameLayout) viewGroup);
    }

    public void updateBadgeCoordinates(@NonNull View view) {
        updateBadgeCoordinates(view, (FrameLayout) null);
    }

    public void setHorizontalOffsetWithoutText(@Px int i) {
        Integer numValueOf = Integer.valueOf(i);
        BadgeState badgeState = this.e;
        badgeState.f2782a.m = numValueOf;
        badgeState.f2783b.m = Integer.valueOf(i);
        e();
    }

    public void updateBadgeCoordinates(@NonNull View view, @Nullable FrameLayout frameLayout) {
        WeakReference weakReference;
        this.l = new WeakReference(view);
        boolean z = BadgeUtils.USE_COMPAT_PARENT;
        if (!z || frameLayout != null) {
            this.m = new WeakReference(frameLayout);
        } else {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if ((viewGroup == null || viewGroup.getId() != R.id.mtrl_anchor_parent) && ((weakReference = this.m) == null || weakReference.get() != viewGroup)) {
                ViewGroup viewGroup2 = (ViewGroup) view.getParent();
                viewGroup2.setClipChildren(false);
                viewGroup2.setClipToPadding(false);
                FrameLayout frameLayout2 = new FrameLayout(view.getContext());
                frameLayout2.setId(R.id.mtrl_anchor_parent);
                frameLayout2.setClipChildren(false);
                frameLayout2.setClipToPadding(false);
                frameLayout2.setLayoutParams(view.getLayoutParams());
                frameLayout2.setMinimumWidth(view.getWidth());
                frameLayout2.setMinimumHeight(view.getHeight());
                int iIndexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(iIndexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout2.addView(view);
                viewGroup.addView(frameLayout2, iIndexOfChild);
                this.m = new WeakReference(frameLayout2);
                frameLayout2.post(new a(this, view, frameLayout2));
            }
        }
        if (!z) {
            ViewGroup viewGroup3 = (ViewGroup) view.getParent();
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
        e();
        invalidateSelf();
    }

    public void setVerticalOffsetWithoutText(@Px int i) {
        Integer numValueOf = Integer.valueOf(i);
        BadgeState badgeState = this.e;
        badgeState.f2782a.n = numValueOf;
        badgeState.f2783b.n = Integer.valueOf(i);
        e();
    }

    public void setHorizontalOffsetWithText(@Px int i) {
        Integer numValueOf = Integer.valueOf(i);
        BadgeState badgeState = this.e;
        badgeState.f2782a.o = numValueOf;
        badgeState.f2783b.o = Integer.valueOf(i);
        e();
    }

    @Nullable
    public FrameLayout getCustomBadgeParent() {
        WeakReference weakReference = this.m;
        if (weakReference != null) {
            return (FrameLayout) weakReference.get();
        }
        return null;
    }

    public void setVerticalOffsetWithText(@Px int i) {
        Integer numValueOf = Integer.valueOf(i);
        BadgeState badgeState = this.e;
        badgeState.f2782a.p = numValueOf;
        badgeState.f2783b.p = Integer.valueOf(i);
        e();
    }

    @ColorInt
    public int getBackgroundColor() {
        return this.f2780b.getFillColor().getDefaultColor();
    }

    public final void d() {
        boolean zBooleanValue = this.e.f2783b.l.booleanValue();
        setVisible(zBooleanValue, false);
        if (!BadgeUtils.USE_COMPAT_PARENT || getCustomBadgeParent() == null || zBooleanValue) {
            return;
        }
        ((ViewGroup) getCustomBadgeParent().getParent()).invalidate();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.e.f2783b.d;
    }

    public int getBadgeGravity() {
        return this.e.f2783b.k.intValue();
    }

    @NonNull
    public Locale getBadgeNumberLocale() {
        return this.e.f2783b.f2786g;
    }

    public int getHorizontalOffset() {
        return this.e.f2783b.m.intValue();
    }

    @Px
    public int getHorizontalOffsetWithText() {
        return this.e.f2783b.o.intValue();
    }

    @Px
    public int getHorizontalOffsetWithoutText() {
        return this.e.f2783b.m.intValue();
    }

    public int getMaxCharacterCount() {
        return this.e.f2783b.f;
    }

    public int getVerticalOffset() {
        return this.e.f2783b.n.intValue();
    }

    @Px
    public int getVerticalOffsetWithText() {
        return this.e.f2783b.p.intValue();
    }

    @Px
    public int getVerticalOffsetWithoutText() {
        return this.e.f2783b.n.intValue();
    }

    public boolean hasNumber() {
        return this.e.f2783b.e != -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        BadgeState badgeState = this.e;
        badgeState.f2782a.d = i;
        badgeState.f2783b.d = i;
        this.c.getTextPaint().setAlpha(getAlpha());
        invalidateSelf();
    }

    public void setBadgeGravity(int i) {
        BadgeState badgeState = this.e;
        if (badgeState.f2783b.k.intValue() != i) {
            badgeState.f2782a.k = Integer.valueOf(i);
            badgeState.f2783b.k = Integer.valueOf(i);
            b();
        }
    }

    public void setBadgeNumberLocale(@NonNull Locale locale) {
        BadgeState badgeState = this.e;
        if (locale.equals(badgeState.f2783b.f2786g)) {
            return;
        }
        badgeState.f2782a.f2786g = locale;
        badgeState.f2783b.f2786g = locale;
        invalidateSelf();
    }

    public void setContentDescriptionExceedsMaxBadgeNumberStringResource(@StringRes int i) {
        BadgeState badgeState = this.e;
        badgeState.f2782a.j = i;
        badgeState.f2783b.j = i;
    }

    public void setContentDescriptionNumberless(CharSequence charSequence) {
        BadgeState badgeState = this.e;
        badgeState.f2782a.h = charSequence;
        badgeState.f2783b.h = charSequence;
    }

    public void setContentDescriptionQuantityStringsResource(@PluralsRes int i) {
        BadgeState badgeState = this.e;
        badgeState.f2782a.i = i;
        badgeState.f2783b.i = i;
    }

    public void setMaxCharacterCount(int i) {
        BadgeState badgeState = this.e;
        BadgeState.State state = badgeState.f2783b;
        if (state.f != i) {
            badgeState.f2782a.f = i;
            state.f = i;
            c();
        }
    }

    @ColorInt
    public int getBadgeTextColor() {
        return this.c.getTextPaint().getColor();
    }

    public void setBadgeTextColor(@ColorInt int i) {
        TextDrawableHelper textDrawableHelper = this.c;
        if (textDrawableHelper.getTextPaint().getColor() != i) {
            Integer numValueOf = Integer.valueOf(i);
            BadgeState badgeState = this.e;
            badgeState.f2782a.c = numValueOf;
            badgeState.f2783b.c = Integer.valueOf(i);
            textDrawableHelper.getTextPaint().setColor(badgeState.f2783b.c.intValue());
            invalidateSelf();
        }
    }

    public int getNumber() {
        if (hasNumber()) {
            return this.e.f2783b.e;
        }
        return 0;
    }

    public void setNumber(int i) {
        int iMax = Math.max(0, i);
        BadgeState badgeState = this.e;
        BadgeState.State state = badgeState.f2783b;
        if (state.e != iMax) {
            badgeState.f2782a.e = iMax;
            state.e = iMax;
            this.c.setTextWidthDirty(true);
            e();
            invalidateSelf();
        }
    }

    public void clearNumber() {
        if (hasNumber()) {
            BadgeState badgeState = this.e;
            badgeState.f2782a.e = -1;
            badgeState.f2783b.e = -1;
            this.c.setTextWidthDirty(true);
            e();
            invalidateSelf();
        }
    }

    public final void b() {
        WeakReference weakReference = this.l;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.l.get();
        WeakReference weakReference2 = this.m;
        updateBadgeCoordinates(view, weakReference2 != null ? (FrameLayout) weakReference2.get() : null);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.d.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.d.width();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f2780b.draw(canvas);
        if (hasNumber()) {
            Rect rect = new Rect();
            String strA = a();
            TextDrawableHelper textDrawableHelper = this.c;
            textDrawableHelper.getTextPaint().getTextBounds(strA, 0, strA.length(), rect);
            canvas.drawText(strA, this.f, this.f2781g + (rect.height() / 2), textDrawableHelper.getTextPaint());
        }
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onTextSizeChange() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Nullable
    public CharSequence getContentDescription() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        boolean zHasNumber = hasNumber();
        BadgeState badgeState = this.e;
        if (!zHasNumber) {
            return badgeState.f2783b.h;
        }
        if (badgeState.f2783b.i == 0 || (context = (Context) this.f2779a.get()) == null) {
            return null;
        }
        int number = getNumber();
        int i = this.h;
        return number <= i ? context.getResources().getQuantityString(badgeState.f2783b.i, getNumber(), Integer.valueOf(getNumber())) : context.getString(badgeState.f2783b.j, Integer.valueOf(i));
    }

    public void setHorizontalOffset(int i) {
        setHorizontalOffsetWithoutText(i);
        setHorizontalOffsetWithText(i);
    }

    public void setVerticalOffset(int i) {
        setVerticalOffsetWithoutText(i);
        setVerticalOffsetWithText(i);
    }

    public final void e() {
        Context context = (Context) this.f2779a.get();
        WeakReference weakReference = this.l;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        Rect rect2 = this.d;
        rect.set(rect2);
        Rect rect3 = new Rect();
        view.getDrawingRect(rect3);
        WeakReference weakReference2 = this.m;
        ViewGroup viewGroup = weakReference2 != null ? (FrameLayout) weakReference2.get() : null;
        if (viewGroup != null || BadgeUtils.USE_COMPAT_PARENT) {
            if (viewGroup == null) {
                viewGroup = (ViewGroup) view.getParent();
            }
            viewGroup.offsetDescendantRectToMyCoords(view, rect3);
        }
        boolean zHasNumber = hasNumber();
        BadgeState badgeState = this.e;
        int iIntValue = badgeState.f2783b.r.intValue() + (zHasNumber ? badgeState.f2783b.p.intValue() : badgeState.f2783b.n.intValue());
        BadgeState.State state = badgeState.f2783b;
        int iIntValue2 = state.k.intValue();
        if (iIntValue2 == 8388691 || iIntValue2 == 8388693) {
            this.f2781g = rect3.bottom - iIntValue;
        } else {
            this.f2781g = rect3.top + iIntValue;
        }
        int number = getNumber();
        float f = badgeState.d;
        if (number <= 9) {
            if (!hasNumber()) {
                f = badgeState.c;
            }
            this.i = f;
            this.k = f;
            this.j = f;
        } else {
            this.i = f;
            this.k = f;
            this.j = (this.c.getTextWidth(a()) / 2.0f) + badgeState.e;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(hasNumber() ? R.dimen.mtrl_badge_text_horizontal_edge_offset : R.dimen.mtrl_badge_horizontal_edge_offset);
        int iIntValue3 = state.q.intValue() + (hasNumber() ? state.o.intValue() : state.m.intValue());
        int iIntValue4 = state.k.intValue();
        if (iIntValue4 == 8388659 || iIntValue4 == 8388691) {
            this.f = ViewCompat.getLayoutDirection(view) == 0 ? (rect3.left - this.j) + dimensionPixelSize + iIntValue3 : ((rect3.right + this.j) - dimensionPixelSize) - iIntValue3;
        } else {
            this.f = ViewCompat.getLayoutDirection(view) == 0 ? ((rect3.right + this.j) - dimensionPixelSize) - iIntValue3 : (rect3.left - this.j) + dimensionPixelSize + iIntValue3;
        }
        BadgeUtils.updateBadgeBounds(rect2, this.f, this.f2781g, this.j, this.k);
        float f2 = this.i;
        MaterialShapeDrawable materialShapeDrawable = this.f2780b;
        materialShapeDrawable.setCornerSize(f2);
        if (rect.equals(rect2)) {
            return;
        }
        materialShapeDrawable.setBounds(rect2);
    }

    public final String a() {
        int number = getNumber();
        int i = this.h;
        BadgeState badgeState = this.e;
        if (number <= i) {
            return NumberFormat.getInstance(badgeState.f2783b.f2786g).format(getNumber());
        }
        Context context = (Context) this.f2779a.get();
        return context == null ? "" : String.format(badgeState.f2783b.f2786g, context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.h), "+");
    }

    public final void c() {
        this.h = ((int) Math.pow(10.0d, getMaxCharacterCount() - 1.0d)) - 1;
        this.c.setTextWidthDirty(true);
        e();
        invalidateSelf();
    }
}
