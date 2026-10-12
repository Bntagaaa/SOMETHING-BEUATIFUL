package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;

/* loaded from: classes.dex */
public class PagerTabStrip extends PagerTitleStrip {
    public boolean A;
    public final int B;
    public boolean C;
    public float D;
    public float E;
    public final int F;
    public int q;
    public final int r;
    public final int s;
    public final int t;
    public final int u;
    public final int v;
    public final Paint w;
    public final Rect x;
    public int y;
    public boolean z;

    public PagerTabStrip(@NonNull Context context) {
        this(context, null);
    }

    public PagerTabStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.w = paint;
        this.x = new Rect();
        this.y = 255;
        this.z = false;
        this.A = false;
        int i = this.n;
        this.q = i;
        paint.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.r = (int) ((3.0f * f) + 0.5f);
        this.s = (int) ((6.0f * f) + 0.5f);
        this.t = (int) (64.0f * f);
        this.v = (int) ((16.0f * f) + 0.5f);
        this.B = (int) ((1.0f * f) + 0.5f);
        this.u = (int) ((f * 32.0f) + 0.5f);
        this.F = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f2360b.setFocusable(true);
        this.f2360b.setOnClickListener(new a());
        this.d.setFocusable(true);
        this.d.setOnClickListener(new b());
        if (getBackground() == null) {
            this.z = true;
        }
    }

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Resources.NotFoundException {
            PagerTabStrip.this.f2359a.setCurrentItem(r2.getCurrentItem() - 1);
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Resources.NotFoundException {
            ViewPager viewPager = PagerTabStrip.this.f2359a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public void setTabIndicatorColor(@ColorInt int i) {
        this.q = i;
        this.w.setColor(i);
        invalidate();
    }

    public void setTabIndicatorColorResource(@ColorRes int i) {
        setTabIndicatorColor(ContextCompat.getColor(getContext(), i));
    }

    @ColorInt
    public int getTabIndicatorColor() {
        return this.q;
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.s;
        if (i4 < i5) {
            i4 = i5;
        }
        super.setPadding(i, i2, i3, i4);
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i) {
        int i2 = this.t;
        if (i < i2) {
            i = i2;
        }
        super.setTextSpacing(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.A) {
            return;
        }
        this.z = drawable == null;
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        super.setBackgroundColor(i);
        if (this.A) {
            return;
        }
        this.z = (i & (-16777216)) == 0;
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        if (this.A) {
            return;
        }
        this.z = i == 0;
    }

    public void setDrawFullUnderline(boolean z) {
        this.z = z;
        this.A = true;
        invalidate();
    }

    public boolean getDrawFullUnderline() {
        return this.z;
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public final int a() {
        return Math.max(super.a(), this.u);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        int action = motionEvent.getAction();
        if (action != 0 && this.C) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.D = x;
            this.E = y;
            this.C = false;
            return true;
        }
        if (action == 1) {
            int left = this.c.getLeft();
            int i = this.v;
            if (x < left - i) {
                ViewPager viewPager = this.f2359a;
                viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
                return true;
            }
            if (x > r5.getRight() + i) {
                ViewPager viewPager2 = this.f2359a;
                viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
            }
        } else if (action == 2) {
            float fAbs = Math.abs(x - this.D);
            float f = this.F;
            if (fAbs > f || Math.abs(y - this.E) > f) {
                this.C = true;
                return true;
            }
        }
        return true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        TextView textView = this.c;
        int left = textView.getLeft();
        int i = this.v;
        int i2 = left - i;
        int right = textView.getRight() + i;
        int i3 = height - this.r;
        Paint paint = this.w;
        paint.setColor((this.y << 24) | (this.q & 16777215));
        float f = height;
        canvas.drawRect(i2, i3, right, f, paint);
        if (this.z) {
            paint.setColor((this.q & 16777215) | (-16777216));
            canvas.drawRect(getPaddingLeft(), height - this.B, getWidth() - getPaddingRight(), f, paint);
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public final void e(int i, float f, boolean z) {
        int height = getHeight();
        TextView textView = this.c;
        int left = textView.getLeft();
        int i2 = this.v;
        int right = textView.getRight() + i2;
        int i3 = height - this.r;
        Rect rect = this.x;
        rect.set(left - i2, i3, right, height);
        super.e(i, f, z);
        this.y = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(textView.getLeft() - i2, i3, textView.getRight() + i2, height);
        invalidate(rect);
    }
}
