package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
class i extends o {
    public final TextWatcher e;
    public final View.OnFocusChangeListener f;

    /* renamed from: g, reason: collision with root package name */
    public final TextInputLayout.AccessibilityDelegate f3317g;
    public final TextInputLayout.OnEditTextAttachedListener h;
    public final TextInputLayout.OnEndIconChangedListener i;
    public final View.OnAttachStateChangeListener j;
    public final AccessibilityManagerCompat.TouchExplorationStateChangeListener k;
    public boolean l;
    public boolean m;
    public long n;
    public StateListDrawable o;
    public MaterialShapeDrawable p;
    public AccessibilityManager q;
    public ValueAnimator r;
    public ValueAnimator s;

    @Override // com.google.android.material.textfield.o
    public final boolean b(int i) {
        return i != 0;
    }

    public static void d(i iVar, AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            iVar.getClass();
            return;
        }
        iVar.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis() - iVar.n;
        if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
            iVar.l = false;
        }
        if (!iVar.l) {
            iVar.h(!iVar.m);
            if (iVar.m) {
                autoCompleteTextView.requestFocus();
                autoCompleteTextView.showDropDown();
                return;
            } else {
                autoCompleteTextView.dismissDropDown();
                return;
            }
        }
        iVar.l = false;
    }

    public class a extends TextWatcherAdapter {
        public a() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            i iVar = i.this;
            EditText editText = iVar.f3334a.getEditText();
            if (!(editText instanceof AutoCompleteTextView)) {
                throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
            }
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (iVar.q.isTouchExplorationEnabled() && i.g(autoCompleteTextView) && !iVar.c.hasFocus()) {
                autoCompleteTextView.dismissDropDown();
            }
            autoCompleteTextView.post(new RunnableC0044a(autoCompleteTextView));
        }

        /* renamed from: com.google.android.material.textfield.i$a$a, reason: collision with other inner class name */
        public class RunnableC0044a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ AutoCompleteTextView f3319a;

            public RunnableC0044a(AutoCompleteTextView autoCompleteTextView) {
                this.f3319a = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zIsPopupShowing = this.f3319a.isPopupShowing();
                a aVar = a.this;
                i.this.h(zIsPopupShowing);
                i.this.l = zIsPopupShowing;
            }
        }
    }

    public class b implements View.OnFocusChangeListener {
        public b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            i iVar = i.this;
            iVar.f3334a.setEndIconActivated(z);
            if (z) {
                return;
            }
            iVar.h(false);
            iVar.l = false;
        }
    }

    public class c extends TextInputLayout.AccessibilityDelegate {
        public c(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!i.g(i.this.f3334a.getEditText())) {
                accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
            }
            if (accessibilityNodeInfoCompat.isShowingHintText()) {
                accessibilityNodeInfoCompat.setHintText(null);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            i iVar = i.this;
            EditText editText = iVar.f3334a.getEditText();
            if (!(editText instanceof AutoCompleteTextView)) {
                throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
            }
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (accessibilityEvent.getEventType() == 1 && iVar.q.isEnabled() && !i.g(iVar.f3334a.getEditText())) {
                i.d(iVar, autoCompleteTextView);
                iVar.l = true;
                iVar.n = System.currentTimeMillis();
            }
        }
    }

    public class d implements TextInputLayout.OnEditTextAttachedListener {
        public d() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        public void onEditTextAttached(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            if (!(editText instanceof AutoCompleteTextView)) {
                throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
            }
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            i iVar = i.this;
            int boxBackgroundMode = iVar.f3334a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(iVar.p);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(iVar.o);
            }
            iVar.e(autoCompleteTextView);
            autoCompleteTextView.setOnTouchListener(new n(iVar, autoCompleteTextView));
            autoCompleteTextView.setOnFocusChangeListener(iVar.f);
            autoCompleteTextView.setOnDismissListener(new j(iVar));
            autoCompleteTextView.setThreshold(0);
            TextWatcher textWatcher = iVar.e;
            autoCompleteTextView.removeTextChangedListener(textWatcher);
            autoCompleteTextView.addTextChangedListener(textWatcher);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (autoCompleteTextView.getKeyListener() == null && iVar.q.isTouchExplorationEnabled()) {
                ViewCompat.setImportantForAccessibility(iVar.c, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(iVar.f3317g);
            textInputLayout.setEndIconVisible(true);
        }
    }

    public class e implements TextInputLayout.OnEndIconChangedListener {
        public e() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        public void onEndIconChanged(@NonNull TextInputLayout textInputLayout, int i) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            i iVar = i.this;
            if (autoCompleteTextView != null && i == 3) {
                autoCompleteTextView.post(new a(autoCompleteTextView));
                if (autoCompleteTextView.getOnFocusChangeListener() == iVar.f) {
                    autoCompleteTextView.setOnFocusChangeListener(null);
                }
                autoCompleteTextView.setOnTouchListener(null);
                autoCompleteTextView.setOnDismissListener(null);
            }
            if (i == 3) {
                textInputLayout.removeOnAttachStateChangeListener(iVar.j);
                AccessibilityManager accessibilityManager = iVar.q;
                if (accessibilityManager != null) {
                    AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, iVar.k);
                }
            }
        }

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ AutoCompleteTextView f3324a;

            public a(AutoCompleteTextView autoCompleteTextView) {
                this.f3324a = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f3324a.removeTextChangedListener(i.this.e);
            }
        }
    }

    public class f implements View.OnAttachStateChangeListener {
        public f() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            i iVar = i.this;
            if (iVar.q == null || !ViewCompat.isAttachedToWindow(iVar.f3334a)) {
                return;
            }
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(iVar.q, iVar.k);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            i iVar = i.this;
            AccessibilityManager accessibilityManager = iVar.q;
            if (accessibilityManager != null) {
                AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, iVar.k);
            }
        }
    }

    public class g implements AccessibilityManagerCompat.TouchExplorationStateChangeListener {
        public g() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            i iVar = i.this;
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) iVar.f3334a.getEditText();
            if (autoCompleteTextView == null || autoCompleteTextView.getKeyListener() != null) {
                return;
            }
            ViewCompat.setImportantForAccessibility(iVar.c, z ? 2 : 1);
        }
    }

    public i(TextInputLayout textInputLayout, int i) {
        super(textInputLayout, i);
        this.e = new a();
        this.f = new b();
        this.f3317g = new c(textInputLayout);
        this.h = new d();
        this.i = new e();
        this.j = new f();
        this.k = new g();
        this.l = false;
        this.m = false;
        this.n = Long.MAX_VALUE;
    }

    @Override // com.google.android.material.textfield.o
    public final void a() throws Resources.NotFoundException {
        TextInputLayout textInputLayout = this.f3334a;
        Context context = this.f3335b;
        float dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        MaterialShapeDrawable materialShapeDrawableF = f(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        MaterialShapeDrawable materialShapeDrawableF2 = f(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.p = materialShapeDrawableF;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.o = stateListDrawable;
        stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, materialShapeDrawableF);
        this.o.addState(new int[0], materialShapeDrawableF2);
        int i = this.d;
        if (i == 0) {
            i = R.drawable.mtrl_dropdown_arrow;
        }
        textInputLayout.setEndIconDrawable(i);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.exposed_dropdown_menu_content_description));
        textInputLayout.setEndIconOnClickListener(new m(this));
        textInputLayout.addOnEditTextAttachedListener(this.h);
        textInputLayout.addOnEndIconChangedListener(this.i);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(67);
        valueAnimatorOfFloat.addUpdateListener(new l(this));
        this.s = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(50);
        valueAnimatorOfFloat2.addUpdateListener(new l(this));
        this.r = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new k(this));
        this.q = (AccessibilityManager) context.getSystemService("accessibility");
        textInputLayout.addOnAttachStateChangeListener(this.j);
        if (this.q == null || !ViewCompat.isAttachedToWindow(textInputLayout)) {
            return;
        }
        AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.q, this.k);
    }

    public final void e(AutoCompleteTextView autoCompleteTextView) {
        if (g(autoCompleteTextView)) {
            return;
        }
        TextInputLayout textInputLayout = this.f3334a;
        int boxBackgroundMode = textInputLayout.getBoxBackgroundMode();
        int i = textInputLayout.L;
        if (i == 1 || i == 2) {
            MaterialShapeDrawable materialShapeDrawable = textInputLayout.F;
            int color = MaterialColors.getColor(autoCompleteTextView, R.attr.colorControlHighlight);
            int[][] iArr = {new int[]{android.R.attr.state_pressed}, new int[0]};
            if (boxBackgroundMode != 2) {
                if (boxBackgroundMode == 1) {
                    int boxBackgroundColor = textInputLayout.getBoxBackgroundColor();
                    ViewCompat.setBackground(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, new int[]{MaterialColors.layer(color, boxBackgroundColor, 0.1f), boxBackgroundColor}), materialShapeDrawable, materialShapeDrawable));
                    return;
                }
                return;
            }
            int color2 = MaterialColors.getColor(autoCompleteTextView, R.attr.colorSurface);
            MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
            int iLayer = MaterialColors.layer(color, color2, 0.1f);
            materialShapeDrawable2.setFillColor(new ColorStateList(iArr, new int[]{iLayer, 0}));
            materialShapeDrawable2.setTint(color2);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iLayer, color2});
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
            materialShapeDrawable3.setTint(-1);
            ViewCompat.setBackground(autoCompleteTextView, new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable}));
            return;
        }
        throw new IllegalStateException();
    }

    public final MaterialShapeDrawable f(float f2, float f3, float f4, int i) {
        ShapeAppearanceModel shapeAppearanceModelBuild = ShapeAppearanceModel.builder().setTopLeftCornerSize(f2).setTopRightCornerSize(f2).setBottomLeftCornerSize(f3).setBottomRightCornerSize(f3).build();
        MaterialShapeDrawable materialShapeDrawableCreateWithElevationOverlay = MaterialShapeDrawable.createWithElevationOverlay(this.f3335b, f4);
        materialShapeDrawableCreateWithElevationOverlay.setShapeAppearanceModel(shapeAppearanceModelBuild);
        materialShapeDrawableCreateWithElevationOverlay.setPadding(0, i, 0, i);
        return materialShapeDrawableCreateWithElevationOverlay;
    }

    public static boolean g(EditText editText) {
        return editText.getKeyListener() != null;
    }

    public final void h(boolean z) {
        if (this.m != z) {
            this.m = z;
            this.s.cancel();
            this.r.start();
        }
    }
}
