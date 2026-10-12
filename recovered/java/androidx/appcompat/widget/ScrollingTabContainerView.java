package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.widget.LinearLayoutCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {
    public static final DecelerateInterpolator j = new DecelerateInterpolator();

    /* renamed from: a, reason: collision with root package name */
    public Runnable f391a;

    /* renamed from: b, reason: collision with root package name */
    public c f392b;
    public final LinearLayoutCompat c;
    public AppCompatSpinner d;
    public boolean e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f393g;
    public int h;
    public int i;
    protected final VisibilityAnimListener mVisAnimListener;
    protected ViewPropertyAnimator mVisibilityAnim;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public ScrollingTabContainerView(@NonNull Context context) {
        super(context);
        this.mVisAnimListener = new VisibilityAnimListener();
        setHorizontalScrollBarEnabled(false);
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.f393g = actionBarPolicy.getStackedTabMaxWidth();
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, R.attr.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        this.c = linearLayoutCompat;
        addView(linearLayoutCompat, new ViewGroup.LayoutParams(-2, -1));
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        LinearLayoutCompat linearLayoutCompat = this.c;
        int childCount = linearLayoutCompat.getChildCount();
        if (childCount > 1 && (mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            if (childCount > 2) {
                this.f = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f = View.MeasureSpec.getSize(i) / 2;
            }
            this.f = Math.min(this.f, this.f393g);
        } else {
            this.f = -1;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.h, 1073741824);
        if (!z && this.e) {
            linearLayoutCompat.measure(0, iMakeMeasureSpec);
            if (linearLayoutCompat.getMeasuredWidth() <= View.MeasureSpec.getSize(i)) {
                b();
            } else {
                AppCompatSpinner appCompatSpinner = this.d;
                if (appCompatSpinner == null || appCompatSpinner.getParent() != this) {
                    if (this.d == null) {
                        AppCompatSpinner appCompatSpinner2 = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
                        appCompatSpinner2.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
                        appCompatSpinner2.setOnItemSelectedListener(this);
                        this.d = appCompatSpinner2;
                    }
                    removeView(linearLayoutCompat);
                    addView(this.d, new ViewGroup.LayoutParams(-2, -1));
                    if (this.d.getAdapter() == null) {
                        this.d.setAdapter((SpinnerAdapter) new b());
                    }
                    Runnable runnable = this.f391a;
                    if (runnable != null) {
                        removeCallbacks(runnable);
                        this.f391a = null;
                    }
                    this.d.setSelection(this.i);
                }
            }
        } else {
            b();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.i);
    }

    public final void b() {
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null && appCompatSpinner.getParent() == this) {
            removeView(this.d);
            addView(this.c, new ViewGroup.LayoutParams(-2, -1));
            setTabSelected(this.d.getSelectedItemPosition());
        }
    }

    public void setAllowCollapse(boolean z) {
        this.e = z;
    }

    public void setTabSelected(int i) {
        this.i = i;
        LinearLayoutCompat linearLayoutCompat = this.c;
        int childCount = linearLayoutCompat.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = linearLayoutCompat.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                animateToTab(i);
            }
            i2++;
        }
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner == null || i < 0) {
            return;
        }
        appCompatSpinner.setSelection(i);
    }

    public void setContentHeight(int i) {
        this.h = i;
        requestLayout();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(getContext());
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.f393g = actionBarPolicy.getStackedTabMaxWidth();
    }

    public void animateToVisibility(int i) {
        ViewPropertyAnimator viewPropertyAnimator = this.mVisibilityAnim;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        DecelerateInterpolator decelerateInterpolator = j;
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ViewPropertyAnimator viewPropertyAnimatorAlpha = animate().alpha(1.0f);
            viewPropertyAnimatorAlpha.setDuration(200L);
            viewPropertyAnimatorAlpha.setInterpolator(decelerateInterpolator);
            viewPropertyAnimatorAlpha.setListener(this.mVisAnimListener.withFinalVisibility(viewPropertyAnimatorAlpha, i));
            viewPropertyAnimatorAlpha.start();
            return;
        }
        ViewPropertyAnimator viewPropertyAnimatorAlpha2 = animate().alpha(0.0f);
        viewPropertyAnimatorAlpha2.setDuration(200L);
        viewPropertyAnimatorAlpha2.setInterpolator(decelerateInterpolator);
        viewPropertyAnimatorAlpha2.setListener(this.mVisAnimListener.withFinalVisibility(viewPropertyAnimatorAlpha2, i));
        viewPropertyAnimatorAlpha2.start();
    }

    public void animateToTab(int i) {
        View childAt = this.c.getChildAt(i);
        Runnable runnable = this.f391a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        a aVar = new a(childAt);
        this.f391a = aVar;
        post(aVar);
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f396a;

        public a(View view) {
            this.f396a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = this.f396a;
            int left = view.getLeft();
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.smoothScrollTo(left - ((scrollingTabContainerView.getWidth() - view.getWidth()) / 2), 0);
            scrollingTabContainerView.f391a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f391a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f391a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    public final d a(ActionBar.Tab tab, boolean z) {
        d dVar = new d(getContext(), tab, z);
        if (z) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.h));
            return dVar;
        }
        dVar.setFocusable(true);
        if (this.f392b == null) {
            this.f392b = new c();
        }
        dVar.setOnClickListener(this.f392b);
        return dVar;
    }

    public void addTab(ActionBar.Tab tab, boolean z) {
        d dVarA = a(tab, false);
        this.c.addView(dVarA, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null) {
            ((b) appCompatSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            dVarA.setSelected(true);
        }
        if (this.e) {
            requestLayout();
        }
    }

    public void addTab(ActionBar.Tab tab, int i, boolean z) {
        d dVarA = a(tab, false);
        this.c.addView(dVarA, i, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null) {
            ((b) appCompatSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            dVarA.setSelected(true);
        }
        if (this.e) {
            requestLayout();
        }
    }

    public void updateTab(int i) {
        ((d) this.c.getChildAt(i)).update();
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null) {
            ((b) appCompatSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.e) {
            requestLayout();
        }
    }

    public void removeTabAt(int i) {
        this.c.removeViewAt(i);
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null) {
            ((b) appCompatSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.e) {
            requestLayout();
        }
    }

    public void removeAllTabs() {
        this.c.removeAllViews();
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null) {
            ((b) appCompatSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.e) {
            requestLayout();
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j2) {
        ((d) view).getTab().select();
    }

    public class d extends LinearLayout {

        /* renamed from: a, reason: collision with root package name */
        public ActionBar.Tab f400a;

        /* renamed from: b, reason: collision with root package name */
        public AppCompatTextView f401b;
        public AppCompatImageView c;
        public View d;

        /* JADX WARN: Illegal instructions before constructor call */
        public d(Context context, ActionBar.Tab tab, boolean z) {
            int i = R.attr.actionBarTabStyle;
            super(context, null, i);
            int[] iArr = {android.R.attr.background};
            this.f400a = tab;
            TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, null, iArr, i, 0);
            if (tintTypedArrayObtainStyledAttributes.hasValue(0)) {
                setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(0));
            }
            tintTypedArrayObtainStyledAttributes.recycle();
            if (z) {
                setGravity(8388627);
            }
            update();
        }

        public void bindTab(ActionBar.Tab tab) {
            this.f400a = tab;
            update();
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            if (scrollingTabContainerView.f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = scrollingTabContainerView.f;
                if (measuredWidth > i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        public void update() {
            ActionBar.Tab tab = this.f400a;
            View customView = tab.getCustomView();
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
                    }
                    addView(customView);
                }
                this.d = customView;
                AppCompatTextView appCompatTextView = this.f401b;
                if (appCompatTextView != null) {
                    appCompatTextView.setVisibility(8);
                }
                AppCompatImageView appCompatImageView = this.c;
                if (appCompatImageView != null) {
                    appCompatImageView.setVisibility(8);
                    this.c.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.d;
            if (view != null) {
                removeView(view);
                this.d = null;
            }
            Drawable icon = tab.getIcon();
            CharSequence text = tab.getText();
            if (icon != null) {
                if (this.c == null) {
                    AppCompatImageView appCompatImageView2 = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView2.setLayoutParams(layoutParams);
                    addView(appCompatImageView2, 0);
                    this.c = appCompatImageView2;
                }
                this.c.setImageDrawable(icon);
                this.c.setVisibility(0);
            } else {
                AppCompatImageView appCompatImageView3 = this.c;
                if (appCompatImageView3 != null) {
                    appCompatImageView3.setVisibility(8);
                    this.c.setImageDrawable(null);
                }
            }
            boolean zIsEmpty = TextUtils.isEmpty(text);
            if (!zIsEmpty) {
                if (this.f401b == null) {
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(getContext(), null, R.attr.actionBarTabTextStyle);
                    appCompatTextView2.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView2.setLayoutParams(layoutParams2);
                    addView(appCompatTextView2);
                    this.f401b = appCompatTextView2;
                }
                this.f401b.setText(text);
                this.f401b.setVisibility(0);
            } else {
                AppCompatTextView appCompatTextView3 = this.f401b;
                if (appCompatTextView3 != null) {
                    appCompatTextView3.setVisibility(8);
                    this.f401b.setText((CharSequence) null);
                }
            }
            AppCompatImageView appCompatImageView4 = this.c;
            if (appCompatImageView4 != null) {
                appCompatImageView4.setContentDescription(tab.getContentDescription());
            }
            TooltipCompat.setTooltipText(this, zIsEmpty ? tab.getContentDescription() : null);
        }

        public ActionBar.Tab getTab() {
            return this.f400a;
        }
    }

    public class b extends BaseAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.c.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((d) ScrollingTabContainerView.this.c.getChildAt(i)).getTab();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.a((ActionBar.Tab) getItem(i), true);
            }
            ((d) view).bindTab((ActionBar.Tab) getItem(i));
            return view;
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((d) view).getTab().select();
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            int childCount = scrollingTabContainerView.c.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = scrollingTabContainerView.c.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    public class VisibilityAnimListener extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f394a = false;

        /* renamed from: b, reason: collision with root package name */
        public int f395b;

        public VisibilityAnimListener() {
        }

        public VisibilityAnimListener withFinalVisibility(ViewPropertyAnimator viewPropertyAnimator, int i) {
            this.f395b = i;
            ScrollingTabContainerView.this.mVisibilityAnim = viewPropertyAnimator;
            return this;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f394a = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f394a) {
                return;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.mVisibilityAnim = null;
            scrollingTabContainerView.setVisibility(this.f395b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f394a = true;
        }
    }
}
