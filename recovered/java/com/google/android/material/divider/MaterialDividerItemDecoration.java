package com.google.android.material.divider;

import _COROUTINE.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;

/* loaded from: classes.dex */
public class MaterialDividerItemDecoration extends RecyclerView.ItemDecoration {
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    public static final int i = R.style.Widget_MaterialComponents_MaterialDivider;

    /* renamed from: a, reason: collision with root package name */
    public Drawable f2999a;

    /* renamed from: b, reason: collision with root package name */
    public int f3000b;
    public int c;
    public int d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3001g;
    public final Rect h;

    public MaterialDividerItemDecoration(@NonNull Context context, int i2) {
        this(context, null, i2);
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        this(context, attributeSet, R.attr.materialDividerStyle, i2);
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        this.h = new Rect();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.MaterialDivider, i2, i, new int[0]);
        this.c = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.MaterialDivider_dividerColor).getDefaultColor();
        this.f3000b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MaterialDivider_dividerThickness, context.getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetStart, 0);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetEnd, 0);
        this.f3001g = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MaterialDivider_lastItemDecorated, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f2999a = new ShapeDrawable();
        setDividerColor(this.c);
        setOrientation(i3);
    }

    public void setOrientation(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException(a.e(i2, "Invalid orientation: ", ". It should be either HORIZONTAL or VERTICAL"));
        }
        this.d = i2;
    }

    public int getOrientation() {
        return this.d;
    }

    public void setDividerThickness(@Px int i2) {
        this.f3000b = i2;
    }

    public void setDividerThicknessResource(@NonNull Context context, @DimenRes int i2) {
        setDividerThickness(context.getResources().getDimensionPixelSize(i2));
    }

    @Px
    public int getDividerThickness() {
        return this.f3000b;
    }

    public void setDividerColor(@ColorInt int i2) {
        this.c = i2;
        Drawable drawableWrap = DrawableCompat.wrap(this.f2999a);
        this.f2999a = drawableWrap;
        DrawableCompat.setTint(drawableWrap, i2);
    }

    public void setDividerColorResource(@NonNull Context context, @ColorRes int i2) {
        setDividerColor(ContextCompat.getColor(context, i2));
    }

    @ColorInt
    public int getDividerColor() {
        return this.c;
    }

    public void setDividerInsetStart(@Px int i2) {
        this.e = i2;
    }

    public void setDividerInsetStartResource(@NonNull Context context, @DimenRes int i2) {
        setDividerInsetStart(context.getResources().getDimensionPixelOffset(i2));
    }

    @Px
    public int getDividerInsetStart() {
        return this.e;
    }

    public void setDividerInsetEnd(@Px int i2) {
        this.f = i2;
    }

    public void setDividerInsetEndResource(@NonNull Context context, @DimenRes int i2) {
        setDividerInsetEnd(context.getResources().getDimensionPixelOffset(i2));
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f;
    }

    public void setLastItemDecorated(boolean z) {
        this.f3001g = z;
    }

    public boolean isLastItemDecorated() {
        return this.f3001g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        int height;
        int paddingTop;
        int width;
        int paddingLeft;
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        int i2 = this.d;
        Rect rect = this.h;
        int i3 = 0;
        if (i2 == 1) {
            canvas.save();
            if (recyclerView.getClipToPadding()) {
                paddingLeft = recyclerView.getPaddingLeft();
                width = recyclerView.getWidth() - recyclerView.getPaddingRight();
                canvas.clipRect(paddingLeft, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
            } else {
                width = recyclerView.getWidth();
                paddingLeft = 0;
            }
            boolean z = ViewCompat.getLayoutDirection(recyclerView) == 1;
            int i4 = paddingLeft + (z ? this.f : this.e);
            int i5 = width - (z ? this.e : this.f);
            int childCount = recyclerView.getChildCount();
            if (!this.f3001g) {
                childCount--;
            }
            while (i3 < childCount) {
                View childAt = recyclerView.getChildAt(i3);
                recyclerView.getDecoratedBoundsWithMargins(childAt, rect);
                int iRound = Math.round(childAt.getTranslationY()) + rect.bottom;
                this.f2999a.setBounds(i4, (iRound - this.f2999a.getIntrinsicHeight()) - this.f3000b, i5, iRound);
                this.f2999a.draw(canvas);
                i3++;
            }
            canvas.restore();
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingTop = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), paddingTop, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            paddingTop = 0;
        }
        int i6 = paddingTop + this.e;
        int i7 = height - this.f;
        int childCount2 = recyclerView.getChildCount();
        while (i3 < childCount2) {
            View childAt2 = recyclerView.getChildAt(i3);
            recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt2, rect);
            int iRound2 = Math.round(childAt2.getTranslationX()) + rect.right;
            this.f2999a.setBounds((iRound2 - this.f2999a.getIntrinsicWidth()) - this.f3000b, i6, iRound2, i7);
            this.f2999a.draw(canvas);
            i3++;
        }
        canvas.restore();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        rect.set(0, 0, 0, 0);
        if (this.d == 1) {
            rect.bottom = this.f2999a.getIntrinsicHeight() + this.f3000b;
        } else {
            rect.right = this.f2999a.getIntrinsicWidth() + this.f3000b;
        }
    }
}
