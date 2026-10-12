package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;

@ViewPager.DecorView
/* loaded from: classes.dex */
public class PagerTitleStrip extends ViewGroup {
    public static final int[] o = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};
    public static final int[] p = {R.attr.textAllCaps};

    /* renamed from: a, reason: collision with root package name */
    public ViewPager f2359a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f2360b;
    public final TextView c;
    public final TextView d;
    public int e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public int f2361g;
    public int h;
    public boolean i;
    public boolean j;
    public final a k;
    public WeakReference l;
    public int m;
    public int n;

    public static class b extends SingleLineTransformationMethod {

        /* renamed from: a, reason: collision with root package name */
        public Locale f2364a;

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f2364a);
            }
            return null;
        }
    }

    public static void b(TextView textView) {
        Context context = textView.getContext();
        b bVar = new b();
        bVar.f2364a = context.getResources().getConfiguration().locale;
        textView.setTransformationMethod(bVar);
    }

    public PagerTitleStrip(@NonNull Context context) {
        this(context, null);
    }

    public PagerTitleStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        this.e = -1;
        this.f = -1.0f;
        this.k = new a();
        TextView textView = new TextView(context);
        this.f2360b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.d = textView3;
        addView(textView3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o);
        boolean z = false;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            TextViewCompat.setTextAppearance(textView, resourceId);
            TextViewCompat.setTextAppearance(textView2, resourceId);
            TextViewCompat.setTextAppearance(textView3, resourceId);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            int color = typedArrayObtainStyledAttributes.getColor(2, 0);
            textView.setTextColor(color);
            textView2.setTextColor(color);
            textView3.setTextColor(color);
        }
        this.h = typedArrayObtainStyledAttributes.getInteger(3, 80);
        typedArrayObtainStyledAttributes.recycle();
        this.n = textView2.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView2.setEllipsize(truncateAt);
        textView3.setEllipsize(truncateAt);
        if (resourceId != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, p);
            z = typedArrayObtainStyledAttributes2.getBoolean(0, false);
            typedArrayObtainStyledAttributes2.recycle();
        }
        if (z) {
            b(textView);
            b(textView2);
            b(textView3);
        } else {
            textView.setSingleLine();
            textView2.setSingleLine();
            textView3.setSingleLine();
        }
        this.f2361g = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    public void setTextSpacing(int i) {
        this.f2361g = i;
        requestLayout();
    }

    public int getTextSpacing() {
        return this.f2361g;
    }

    public void setNonPrimaryAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        int i = ((int) (f * 255.0f)) & 255;
        this.m = i;
        int i2 = (i << 24) | (this.n & 16777215);
        this.f2360b.setTextColor(i2);
        this.d.setTextColor(i2);
    }

    public void setTextColor(@ColorInt int i) {
        this.n = i;
        this.c.setTextColor(i);
        int i2 = (this.m << 24) | (this.n & 16777215);
        this.f2360b.setTextColor(i2);
        this.d.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.f2360b.setTextSize(i, f);
        this.c.setTextSize(i, f);
        this.d.setTextSize(i, f);
    }

    public void setGravity(int i) {
        this.h = i;
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        PagerAdapter adapter = viewPager.getAdapter();
        a aVar = this.k;
        viewPager.V = aVar;
        viewPager.addOnAdapterChangeListener(aVar);
        this.f2359a = viewPager;
        WeakReference weakReference = this.l;
        c(weakReference != null ? (PagerAdapter) weakReference.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f2359a;
        if (viewPager != null) {
            c(viewPager.getAdapter(), null);
            ViewPager viewPager2 = this.f2359a;
            ViewPager.OnPageChangeListener onPageChangeListener = viewPager2.V;
            viewPager2.V = null;
            viewPager2.removeOnAdapterChangeListener(this.k);
            this.f2359a = null;
        }
    }

    public final void d(int i, PagerAdapter pagerAdapter) {
        int count = pagerAdapter != null ? pagerAdapter.getCount() : 0;
        this.i = true;
        CharSequence pageTitle = null;
        CharSequence pageTitle2 = (i < 1 || pagerAdapter == null) ? null : pagerAdapter.getPageTitle(i - 1);
        TextView textView = this.f2360b;
        textView.setText(pageTitle2);
        TextView textView2 = this.c;
        textView2.setText((pagerAdapter == null || i >= count) ? null : pagerAdapter.getPageTitle(i));
        int i2 = i + 1;
        if (i2 < count && pagerAdapter != null) {
            pageTitle = pagerAdapter.getPageTitle(i2);
        }
        TextView textView3 = this.d;
        textView3.setText(pageTitle);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        textView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        textView2.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        textView3.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.e = i;
        if (!this.j) {
            e(i, this.f, false);
        }
        this.i = false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.i) {
            return;
        }
        super.requestLayout();
    }

    public final void c(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        a aVar = this.k;
        if (pagerAdapter != null) {
            pagerAdapter.unregisterDataSetObserver(aVar);
            this.l = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.registerDataSetObserver(aVar);
            this.l = new WeakReference(pagerAdapter2);
        }
        ViewPager viewPager = this.f2359a;
        if (viewPager != null) {
            this.e = -1;
            this.f = -1.0f;
            d(viewPager.getCurrentItem(), pagerAdapter2);
            requestLayout();
        }
    }

    public void e(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.e) {
            d(i, this.f2359a.getAdapter());
        } else if (!z && f == this.f) {
            return;
        }
        this.j = true;
        TextView textView = this.f2360b;
        int measuredWidth = textView.getMeasuredWidth();
        TextView textView2 = this.c;
        int measuredWidth2 = textView2.getMeasuredWidth();
        TextView textView3 = this.d;
        int measuredWidth3 = textView3.getMeasuredWidth();
        int i6 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i7 = paddingRight + i6;
        int i8 = (width - (paddingLeft + i6)) - i7;
        float f2 = f + 0.5f;
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        }
        int i9 = ((width - i7) - ((int) (i8 * f2))) - i6;
        int i10 = measuredWidth2 + i9;
        int baseline = textView.getBaseline();
        int baseline2 = textView2.getBaseline();
        int baseline3 = textView3.getBaseline();
        int iMax = Math.max(Math.max(baseline, baseline2), baseline3);
        int i11 = iMax - baseline;
        int i12 = iMax - baseline2;
        int i13 = iMax - baseline3;
        int iMax2 = Math.max(Math.max(textView.getMeasuredHeight() + i11, textView2.getMeasuredHeight() + i12), textView3.getMeasuredHeight() + i13);
        int i14 = this.h & 112;
        if (i14 == 16) {
            i2 = (((height - paddingTop) - paddingBottom) - iMax2) / 2;
        } else {
            if (i14 != 80) {
                i3 = i11 + paddingTop;
                i4 = paddingTop + i12;
                i5 = paddingTop + i13;
                textView2.layout(i9, i4, i10, textView2.getMeasuredHeight() + i4);
                int iMin = Math.min(paddingLeft, (i9 - this.f2361g) - measuredWidth);
                textView.layout(iMin, i3, iMin + measuredWidth, textView.getMeasuredHeight() + i3);
                int iMax3 = Math.max((width - paddingRight) - measuredWidth3, i10 + this.f2361g);
                textView3.layout(iMax3, i5, iMax3 + measuredWidth3, textView3.getMeasuredHeight() + i5);
                this.f = f;
                this.j = false;
            }
            i2 = (height - paddingBottom) - iMax2;
        }
        i3 = i11 + i2;
        i4 = i2 + i12;
        i5 = i2 + i13;
        textView2.layout(i9, i4, i10, textView2.getMeasuredHeight() + i4);
        int iMin2 = Math.min(paddingLeft, (i9 - this.f2361g) - measuredWidth);
        textView.layout(iMin2, i3, iMin2 + measuredWidth, textView.getMeasuredHeight() + i3);
        int iMax32 = Math.max((width - paddingRight) - measuredWidth3, i10 + this.f2361g);
        textView3.layout(iMax32, i5, iMax32 + measuredWidth3, textView3.getMeasuredHeight() + i5);
        this.f = f;
        this.j = false;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int iMax;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int size = View.MeasureSpec.getSize(i);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i, (int) (size * 0.2f), -2);
        this.f2360b.measure(childMeasureSpec2, childMeasureSpec);
        TextView textView = this.c;
        textView.measure(childMeasureSpec2, childMeasureSpec);
        this.d.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            iMax = View.MeasureSpec.getSize(i2);
        } else {
            iMax = Math.max(a(), textView.getMeasuredHeight() + paddingBottom);
        }
        setMeasuredDimension(size, View.resolveSizeAndState(iMax, i2, textView.getMeasuredState() << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f2359a != null) {
            float f = this.f;
            if (f < 0.0f) {
                f = 0.0f;
            }
            e(this.e, f, true);
        }
    }

    public int a() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public class a extends DataSetObserver implements ViewPager.OnPageChangeListener, ViewPager.OnAdapterChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public int f2362a;

        public a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            if (f > 0.5f) {
                i++;
            }
            PagerTitleStrip.this.e(i, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (this.f2362a == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.d(pagerTitleStrip.f2359a.getCurrentItem(), pagerTitleStrip.f2359a.getAdapter());
                float f = pagerTitleStrip.f;
                if (f < 0.0f) {
                    f = 0.0f;
                }
                pagerTitleStrip.e(pagerTitleStrip.f2359a.getCurrentItem(), f, true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.f2362a = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            PagerTitleStrip.this.c(pagerAdapter, pagerAdapter2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.d(pagerTitleStrip.f2359a.getCurrentItem(), pagerTitleStrip.f2359a.getAdapter());
            float f = pagerTitleStrip.f;
            if (f < 0.0f) {
                f = 0.0f;
            }
            pagerTitleStrip.e(pagerTitleStrip.f2359a.getCurrentItem(), f, true);
        }
    }
}
