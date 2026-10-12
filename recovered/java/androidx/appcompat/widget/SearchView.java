package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.core.view.ViewCompat;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.customview.view.AbsSavedState;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import gnu.expr.Declaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {
    public static final l k0;
    public final Rect A;
    public final int[] B;
    public final int[] C;
    public final ImageView D;
    public final Drawable E;
    public final int F;
    public final int G;
    public final Intent H;
    public final Intent I;
    public final CharSequence J;
    public OnQueryTextListener K;
    public OnCloseListener L;
    public View.OnFocusChangeListener M;
    public OnSuggestionListener N;
    public View.OnClickListener O;
    public boolean P;
    public boolean Q;
    public CursorAdapter R;
    public boolean S;
    public CharSequence T;
    public boolean U;
    public boolean V;
    public int W;
    public boolean a0;
    public String b0;
    public CharSequence c0;
    public boolean d0;
    public int e0;
    public SearchableInfo f0;
    public Bundle g0;
    public final Runnable h0;
    public final Runnable i0;
    public final WeakHashMap j0;
    public final SearchAutoComplete p;
    public final View q;
    public final View r;
    public final View s;
    public final ImageView t;
    public final ImageView u;
    public final ImageView v;
    public final ImageView w;
    public final View x;
    public n y;
    public final Rect z;

    public interface OnCloseListener {
        boolean onClose();
    }

    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    public interface OnSuggestionListener {
        boolean onSuggestionClick(int i);

        boolean onSuggestionSelect(int i);
    }

    static {
        k0 = Build.VERSION.SDK_INT < 29 ? new l() : null;
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.k();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CursorAdapter cursorAdapter = SearchView.this.R;
            if (cursorAdapter instanceof y) {
                cursorAdapter.changeCursor(null);
            }
        }
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.z = new Rect();
        this.A = new Rect();
        this.B = new int[2];
        this.C = new int[2];
        this.h0 = new b();
        this.i0 = new c();
        this.j0 = new WeakHashMap();
        f fVar = new f();
        g gVar = new g();
        h hVar = new h();
        i iVar = new i();
        j jVar = new j();
        a aVar = new a();
        int[] iArr = R.styleable.SearchView;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i2, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        LayoutInflater.from(context).inflate(tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.SearchView_layout, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.p = searchAutoComplete;
        searchAutoComplete.f = this;
        this.q = findViewById(R.id.search_edit_frame);
        View viewFindViewById = findViewById(R.id.search_plate);
        this.r = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.submit_area);
        this.s = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.t = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.u = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.v = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.w = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.D = imageView5;
        ViewCompat.setBackground(viewFindViewById, tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_queryBackground));
        ViewCompat.setBackground(viewFindViewById2, tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_submitBackground));
        int i3 = R.styleable.SearchView_searchIcon;
        imageView.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(i3));
        imageView2.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_goIcon));
        imageView3.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(i3));
        this.E = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.SearchView_searchHintIcon);
        TooltipCompat.setTooltipText(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.F = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
        this.G = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(fVar);
        imageView3.setOnClickListener(fVar);
        imageView2.setOnClickListener(fVar);
        imageView4.setOnClickListener(fVar);
        searchAutoComplete.setOnClickListener(fVar);
        searchAutoComplete.addTextChangedListener(aVar);
        searchAutoComplete.setOnEditorActionListener(hVar);
        searchAutoComplete.setOnItemClickListener(iVar);
        searchAutoComplete.setOnItemSelectedListener(jVar);
        searchAutoComplete.setOnKeyListener(gVar);
        searchAutoComplete.setOnFocusChangeListener(new d());
        setIconifiedByDefault(tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.SearchView_iconifiedByDefault, true));
        int dimensionPixelSize = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SearchView_android_maxWidth, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.J = tintTypedArrayObtainStyledAttributes.getText(R.styleable.SearchView_defaultQueryHint);
        this.T = tintTypedArrayObtainStyledAttributes.getText(R.styleable.SearchView_queryHint);
        int i4 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.SearchView_android_imeOptions, -1);
        if (i4 != -1) {
            setImeOptions(i4);
        }
        int i5 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.SearchView_android_inputType, -1);
        if (i5 != -1) {
            setInputType(i5);
        }
        setFocusable(tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.SearchView_android_focusable, true));
        tintTypedArrayObtainStyledAttributes.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.H = intent;
        intent.addFlags(Declaration.IS_DYNAMIC);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.I = intent2;
        intent2.addFlags(Declaration.IS_DYNAMIC);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.x = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new e());
        }
        o(this.P);
        l();
    }

    public class d implements View.OnFocusChangeListener {
        public d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.M;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    public class e implements View.OnLayoutChangeListener {
        public e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) throws Resources.NotFoundException {
            int dimensionPixelSize;
            int i9;
            SearchView searchView = SearchView.this;
            View view2 = searchView.x;
            if (view2.getWidth() > 1) {
                Resources resources = searchView.getContext().getResources();
                int paddingLeft = searchView.r.getPaddingLeft();
                Rect rect = new Rect();
                boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(searchView);
                if (searchView.P) {
                    dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width);
                } else {
                    dimensionPixelSize = 0;
                }
                SearchAutoComplete searchAutoComplete = searchView.p;
                searchAutoComplete.getDropDownBackground().getPadding(rect);
                if (zIsLayoutRtl) {
                    i9 = -rect.left;
                } else {
                    i9 = paddingLeft - (rect.left + dimensionPixelSize);
                }
                searchAutoComplete.setDropDownHorizontalOffset(i9);
                searchAutoComplete.setDropDownWidth((((view2.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSearchableInfo(android.app.SearchableInfo r7) {
        /*
            r6 = this;
            r6.f0 = r7
            r0 = 0
            r1 = 1
            androidx.appcompat.widget.SearchView$SearchAutoComplete r2 = r6.p
            if (r7 == 0) goto L66
            int r7 = r7.getSuggestThreshold()
            r2.setThreshold(r7)
            android.app.SearchableInfo r7 = r6.f0
            int r7 = r7.getImeOptions()
            r2.setImeOptions(r7)
            android.app.SearchableInfo r7 = r6.f0
            int r7 = r7.getInputType()
            r3 = r7 & 15
            if (r3 != r1) goto L31
            r3 = -65537(0xfffffffffffeffff, float:NaN)
            r7 = r7 & r3
            android.app.SearchableInfo r3 = r6.f0
            java.lang.String r3 = r3.getSuggestAuthority()
            if (r3 == 0) goto L31
            r3 = 589824(0x90000, float:8.2652E-40)
            r7 = r7 | r3
        L31:
            r2.setInputType(r7)
            androidx.cursoradapter.widget.CursorAdapter r7 = r6.R
            if (r7 == 0) goto L3b
            r7.changeCursor(r0)
        L3b:
            android.app.SearchableInfo r7 = r6.f0
            java.lang.String r7 = r7.getSuggestAuthority()
            if (r7 == 0) goto L63
            androidx.appcompat.widget.y r7 = new androidx.appcompat.widget.y
            android.content.Context r3 = r6.getContext()
            android.app.SearchableInfo r4 = r6.f0
            java.util.WeakHashMap r5 = r6.j0
            r7.<init>(r3, r6, r4, r5)
            r6.R = r7
            r2.setAdapter(r7)
            androidx.cursoradapter.widget.CursorAdapter r7 = r6.R
            androidx.appcompat.widget.y r7 = (androidx.appcompat.widget.y) r7
            boolean r3 = r6.U
            if (r3 == 0) goto L5f
            r3 = 2
            goto L60
        L5f:
            r3 = 1
        L60:
            r7.setQueryRefinement(r3)
        L63:
            r6.l()
        L66:
            android.app.SearchableInfo r7 = r6.f0
            r3 = 0
            if (r7 == 0) goto L99
            boolean r7 = r7.getVoiceSearchEnabled()
            if (r7 == 0) goto L99
            android.app.SearchableInfo r7 = r6.f0
            boolean r7 = r7.getVoiceSearchLaunchWebSearch()
            if (r7 == 0) goto L7c
            android.content.Intent r0 = r6.H
            goto L86
        L7c:
            android.app.SearchableInfo r7 = r6.f0
            boolean r7 = r7.getVoiceSearchLaunchRecognizer()
            if (r7 == 0) goto L86
            android.content.Intent r0 = r6.I
        L86:
            if (r0 == 0) goto L99
            android.content.Context r7 = r6.getContext()
            android.content.pm.PackageManager r7 = r7.getPackageManager()
            r4 = 65536(0x10000, float:9.1835E-41)
            android.content.pm.ResolveInfo r7 = r7.resolveActivity(r0, r4)
            if (r7 == 0) goto L99
            goto L9a
        L99:
            r1 = 0
        L9a:
            r6.a0 = r1
            if (r1 == 0) goto La3
            java.lang.String r7 = "nm"
            r2.setPrivateImeOptions(r7)
        La3:
            boolean r7 = r6.isIconified()
            r6.o(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.setSearchableInfo(android.app.SearchableInfo):void");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAppSearchData(Bundle bundle) {
        this.g0 = bundle;
    }

    public void setImeOptions(int i2) {
        this.p.setImeOptions(i2);
    }

    public int getImeOptions() {
        return this.p.getImeOptions();
    }

    public void setInputType(int i2) {
        this.p.setInputType(i2);
    }

    public int getInputType() {
        return this.p.getInputType();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        if (this.V || !isFocusable()) {
            return false;
        }
        if (!isIconified()) {
            boolean zRequestFocus = this.p.requestFocus(i2, rect);
            if (zRequestFocus) {
                o(false);
            }
            return zRequestFocus;
        }
        return super.requestFocus(i2, rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.V = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.p;
        searchAutoComplete.clearFocus();
        searchAutoComplete.b(false);
        this.V = false;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.K = onQueryTextListener;
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.L = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.M = onFocusChangeListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.N = onSuggestionListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.O = onClickListener;
    }

    public CharSequence getQuery() {
        return this.p.getText();
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        SearchAutoComplete searchAutoComplete = this.p;
        searchAutoComplete.setText(charSequence);
        if (charSequence != null) {
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.c0 = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        h();
    }

    public void setQueryHint(@Nullable CharSequence charSequence) {
        this.T = charSequence;
        l();
    }

    @Nullable
    public CharSequence getQueryHint() {
        CharSequence charSequence = this.T;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f0;
        if (searchableInfo != null && searchableInfo.getHintId() != 0) {
            return getContext().getText(this.f0.getHintId());
        }
        return this.J;
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.P == z) {
            return;
        }
        this.P = z;
        o(z);
        l();
    }

    public boolean isIconfiedByDefault() {
        return this.P;
    }

    public void setIconified(boolean z) {
        if (z) {
            f();
            return;
        }
        o(false);
        SearchAutoComplete searchAutoComplete = this.p;
        searchAutoComplete.requestFocus();
        searchAutoComplete.b(true);
        View.OnClickListener onClickListener = this.O;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public boolean isIconified() {
        return this.Q;
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.S = z;
        o(isIconified());
    }

    public boolean isSubmitButtonEnabled() {
        return this.S;
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.U = z;
        CursorAdapter cursorAdapter = this.R;
        if (cursorAdapter instanceof y) {
            ((y) cursorAdapter).setQueryRefinement(z ? 2 : 1);
        }
    }

    public boolean isQueryRefinementEnabled() {
        return this.U;
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.R = cursorAdapter;
        this.p.setAdapter(cursorAdapter);
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.R;
    }

    public void setMaxWidth(int i2) {
        this.W = i2;
        requestLayout();
    }

    public int getMaxWidth() {
        return this.W;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i2, int i3) throws Resources.NotFoundException {
        int i4;
        if (isIconified()) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i5 = this.W;
            size = i5 > 0 ? Math.min(i5, size) : Math.min(getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width), size);
        } else if (mode == 0) {
            size = this.W;
            if (size <= 0) {
                size = getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
            }
        } else if (mode == 1073741824 && (i4 = this.W) > 0) {
            size = Math.min(i4, size);
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height), size2);
        } else if (mode2 == 0) {
            size2 = getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.p;
            int[] iArr = this.B;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.C;
            getLocationInWindow(iArr2);
            int i6 = iArr[1] - iArr2[1];
            int i7 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i7;
            int height = searchAutoComplete.getHeight() + i6;
            Rect rect = this.z;
            rect.set(i7, i6, width, height);
            int i8 = rect.left;
            int i9 = rect.right;
            int i10 = i5 - i3;
            Rect rect2 = this.A;
            rect2.set(i8, 0, i9, i10);
            n nVar = this.y;
            if (nVar == null) {
                n nVar2 = new n(rect2, rect, searchAutoComplete);
                this.y = nVar2;
                setTouchDelegate(nVar2);
                return;
            }
            nVar.setBounds(rect2, rect);
        }
    }

    public final void o(boolean z) {
        this.Q = z;
        int i2 = 8;
        int i3 = z ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.p.getText());
        this.t.setVisibility(i3);
        n(!zIsEmpty);
        this.q.setVisibility(z ? 8 : 0);
        ImageView imageView = this.D;
        if (imageView.getDrawable() != null && !this.P) {
            i2 = 0;
        }
        imageView.setVisibility(i2);
        j();
        p(zIsEmpty);
        m();
    }

    public final void m() {
        this.s.setVisibility(((this.S || this.a0) && !isIconified() && (this.u.getVisibility() == 0 || this.w.getVisibility() == 0)) ? 0 : 8);
    }

    public final void n(boolean z) {
        boolean z2 = this.S;
        this.u.setVisibility((!z2 || !(z2 || this.a0) || isIconified() || !hasFocus() || (!z && this.a0)) ? 8 : 0);
    }

    public final void j() {
        boolean zIsEmpty = TextUtils.isEmpty(this.p.getText());
        int i2 = (!zIsEmpty || (this.P && !this.d0)) ? 0 : 8;
        ImageView imageView = this.v;
        imageView.setVisibility(i2);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(!zIsEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public final void k() {
        int[] iArr = this.p.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.r.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.s.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.h0);
        post(this.i0);
        super.onDetachedFromWindow();
    }

    public void onQueryRefine(@Nullable CharSequence charSequence) {
        i(charSequence);
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            SearchView searchView = SearchView.this;
            ImageView imageView = searchView.t;
            SearchAutoComplete searchAutoComplete = searchView.p;
            if (view != imageView) {
                if (view == searchView.v) {
                    searchView.f();
                    return;
                }
                if (view == searchView.u) {
                    searchView.h();
                    return;
                }
                if (view != searchView.w) {
                    if (view == searchAutoComplete) {
                        searchView.e();
                        return;
                    }
                    return;
                }
                SearchableInfo searchableInfo = searchView.f0;
                if (searchableInfo == null) {
                    return;
                }
                try {
                    if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                        if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                            searchView.getContext().startActivity(searchView.d(searchView.I, searchableInfo));
                            return;
                        }
                        return;
                    } else {
                        Intent intent = new Intent(searchView.H);
                        ComponentName searchActivity = searchableInfo.getSearchActivity();
                        intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                        searchView.getContext().startActivity(intent);
                        return;
                    }
                } catch (ActivityNotFoundException unused) {
                    Log.w("SearchView", "Could not find voice search activity");
                    return;
                }
            }
            searchView.o(false);
            searchAutoComplete.requestFocus();
            searchAutoComplete.b(true);
            View.OnClickListener onClickListener = searchView.O;
            if (onClickListener != null) {
                onClickListener.onClick(searchView);
            }
        }
    }

    public class g implements View.OnKeyListener {
        public g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            SearchView searchView = SearchView.this;
            if (searchView.f0 != null) {
                SearchAutoComplete searchAutoComplete = searchView.p;
                if (searchAutoComplete.isPopupShowing() && searchAutoComplete.getListSelection() != -1) {
                    if (searchView.f0 != null && searchView.R != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
                        if (i == 66 || i == 84 || i == 61) {
                            return searchView.g(searchAutoComplete.getListSelection());
                        }
                        if (i == 21 || i == 22) {
                            searchAutoComplete.setSelection(i == 21 ? 0 : searchAutoComplete.length());
                            searchAutoComplete.setListSelection(0);
                            searchAutoComplete.clearListSelection();
                            searchAutoComplete.a();
                            return true;
                        }
                        if (i == 19) {
                            searchAutoComplete.getListSelection();
                            return false;
                        }
                    }
                } else if (TextUtils.getTrimmedLength(searchAutoComplete.getText()) != 0 && keyEvent.hasNoModifiers() && keyEvent.getAction() == 1 && i == 66) {
                    view.cancelLongPress();
                    searchView.getContext().startActivity(searchView.c("android.intent.action.SEARCH", null, null, searchAutoComplete.getText().toString()));
                    return true;
                }
            }
            return false;
        }
    }

    public final void l() {
        Drawable drawable;
        CharSequence queryHint = getQueryHint();
        if (queryHint == null) {
            queryHint = "";
        }
        boolean z = this.P;
        SearchAutoComplete searchAutoComplete = this.p;
        if (z && (drawable = this.E) != null) {
            int textSize = (int) (searchAutoComplete.getTextSize() * 1.25d);
            drawable.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
            spannableStringBuilder.append(queryHint);
            queryHint = spannableStringBuilder;
        }
        searchAutoComplete.setHint(queryHint);
    }

    public final void p(boolean z) {
        int i2 = 8;
        if (this.a0 && !isIconified() && z) {
            this.u.setVisibility(8);
            i2 = 0;
        }
        this.w.setVisibility(i2);
    }

    public class h implements TextView.OnEditorActionListener {
        public h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.h();
            return true;
        }
    }

    public class a implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView searchView = SearchView.this;
            Editable text = searchView.p.getText();
            searchView.c0 = text;
            boolean zIsEmpty = TextUtils.isEmpty(text);
            searchView.n(!zIsEmpty);
            searchView.p(zIsEmpty);
            searchView.j();
            searchView.m();
            if (searchView.K != null && !TextUtils.equals(charSequence, searchView.b0)) {
                searchView.K.onQueryTextChange(charSequence.toString());
            }
            searchView.b0 = charSequence.toString();
        }

        public a() {
        }
    }

    public final void h() {
        SearchAutoComplete searchAutoComplete = this.p;
        Editable text = searchAutoComplete.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        OnQueryTextListener onQueryTextListener = this.K;
        if (onQueryTextListener == null || !onQueryTextListener.onQueryTextSubmit(text.toString())) {
            if (this.f0 != null) {
                getContext().startActivity(c("android.intent.action.SEARCH", null, null, text.toString()));
            }
            searchAutoComplete.b(false);
            searchAutoComplete.dismissDropDown();
        }
    }

    public final void f() {
        SearchAutoComplete searchAutoComplete = this.p;
        if (TextUtils.isEmpty(searchAutoComplete.getText())) {
            if (this.P) {
                OnCloseListener onCloseListener = this.L;
                if (onCloseListener == null || !onCloseListener.onClose()) {
                    clearFocus();
                    o(true);
                    return;
                }
                return;
            }
            return;
        }
        searchAutoComplete.setText("");
        searchAutoComplete.requestFocus();
        searchAutoComplete.b(true);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.h0);
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public void onActionViewCollapsed() {
        setQuery("", false);
        clearFocus();
        o(true);
        this.p.setImeOptions(this.e0);
        this.d0 = false;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public void onActionViewExpanded() {
        if (this.d0) {
            return;
        }
        this.d0 = true;
        SearchAutoComplete searchAutoComplete = this.p;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.e0 = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | Declaration.PROTECTED_ACCESS);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    public static class m extends AbsSavedState {
        public static final Parcelable.Creator<m> CREATOR = new a();

        /* renamed from: b, reason: collision with root package name */
        public boolean f416b;

        public m(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f416b = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f416b));
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f416b + "}";
        }

        public class a implements Parcelable.ClassLoaderCreator<m> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public m createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new m(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public m createFromParcel(Parcel parcel) {
                return new m(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public m[] newArray(int i) {
                return new m[i];
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        m mVar = new m(super.onSaveInstanceState());
        mVar.f416b = isIconified();
        return mVar;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof m)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        m mVar = (m) parcelable;
        super.onRestoreInstanceState(mVar.getSuperState());
        o(mVar.f416b);
        requestLayout();
    }

    public final boolean g(int i2) {
        int position;
        String columnString;
        OnSuggestionListener onSuggestionListener = this.N;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionClick(i2)) {
            return false;
        }
        Cursor cursor = this.R.getCursor();
        if (cursor != null && cursor.moveToPosition(i2)) {
            Intent intentC = null;
            try {
                String columnString2 = y.getColumnString(cursor, "suggest_intent_action");
                if (columnString2 == null) {
                    columnString2 = this.f0.getSuggestIntentAction();
                }
                if (columnString2 == null) {
                    columnString2 = "android.intent.action.SEARCH";
                }
                String columnString3 = y.getColumnString(cursor, "suggest_intent_data");
                if (columnString3 == null) {
                    columnString3 = this.f0.getSuggestIntentData();
                }
                if (columnString3 != null && (columnString = y.getColumnString(cursor, "suggest_intent_data_id")) != null) {
                    columnString3 = columnString3 + "/" + Uri.encode(columnString);
                }
                intentC = c(columnString2, columnString3 == null ? null : Uri.parse(columnString3), y.getColumnString(cursor, "suggest_intent_extra_data"), y.getColumnString(cursor, "suggest_intent_query"));
            } catch (RuntimeException e2) {
                try {
                    position = cursor.getPosition();
                } catch (RuntimeException unused) {
                    position = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e2);
            }
            if (intentC != null) {
                try {
                    getContext().startActivity(intentC);
                } catch (RuntimeException e3) {
                    Log.e("SearchView", "Failed launch activity: " + intentC, e3);
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.p;
        searchAutoComplete.b(false);
        searchAutoComplete.dismissDropDown();
        return true;
    }

    public class j implements AdapterView.OnItemSelectedListener {
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView searchView = SearchView.this;
            OnSuggestionListener onSuggestionListener = searchView.N;
            if (onSuggestionListener == null || !onSuggestionListener.onSuggestionSelect(i)) {
                Editable text = searchView.p.getText();
                Cursor cursor = searchView.R.getCursor();
                if (cursor == null) {
                    return;
                }
                if (cursor.moveToPosition(i)) {
                    CharSequence charSequenceConvertToString = searchView.R.convertToString(cursor);
                    if (charSequenceConvertToString != null) {
                        searchView.i(charSequenceConvertToString);
                        return;
                    } else {
                        searchView.i(text);
                        return;
                    }
                }
                searchView.i(text);
            }
        }

        public j() {
        }
    }

    public class i implements AdapterView.OnItemClickListener {
        public i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.g(i);
        }
    }

    public final void i(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.p;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    public final Intent c(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(Declaration.IS_DYNAMIC);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.c0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.g0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.f0.getSearchActivity());
        return intent;
    }

    public final Intent d(Intent intent, SearchableInfo searchableInfo) throws Resources.NotFoundException {
        String string;
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.g0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        if (searchableInfo.getVoiceLanguageModeId() == 0) {
            string = "free_form";
        } else {
            string = resources.getString(searchableInfo.getVoiceLanguageModeId());
        }
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void e() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i2 = Build.VERSION.SDK_INT;
        SearchAutoComplete searchAutoComplete = this.p;
        if (i2 >= 29) {
            k.a(searchAutoComplete);
            return;
        }
        l lVar = k0;
        lVar.getClass();
        l.a();
        Method method = lVar.f414a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception unused) {
            }
        }
        lVar.getClass();
        l.a();
        Method method2 = lVar.f415b;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception unused2) {
            }
        }
    }

    public static class n extends TouchDelegate {

        /* renamed from: a, reason: collision with root package name */
        public final View f417a;

        /* renamed from: b, reason: collision with root package name */
        public final Rect f418b;
        public final Rect c;
        public final Rect d;
        public final int e;
        public boolean f;

        public n(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f418b = new Rect();
            this.d = new Rect();
            this.c = new Rect();
            setBounds(rect, rect2);
            this.f417a = view;
        }

        public void setBounds(Rect rect, Rect rect2) {
            this.f418b.set(rect);
            Rect rect3 = this.d;
            rect3.set(rect);
            int i = this.e;
            rect3.inset(-i, -i);
            this.c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z2 = this.f;
                    if (z2 && !this.d.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f;
                        this.f = false;
                    }
                    z = true;
                    z3 = false;
                }
                z3 = z2;
                z = true;
            } else {
                if (this.f418b.contains(x, y)) {
                    this.f = true;
                    z = true;
                }
                z = true;
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            Rect rect = this.c;
            View view = this.f417a;
            if (z && !rect.contains(x, y)) {
                motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
            } else {
                motionEvent.setLocation(x - rect.left, y - rect.top);
            }
            return view.dispatchTouchEvent(motionEvent);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {
        public int e;
        public SearchView f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f402g;
        public final Runnable h;

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(CharSequence charSequence) {
        }

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                if (searchAutoComplete.f402g) {
                    ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                    searchAutoComplete.f402g = false;
                }
            }
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.h = new a();
            this.e = getThreshold();
        }

        @Override // android.view.View
        public void onFinishInflate() {
            super.onFinishInflate();
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            setMinWidth((int) TypedValue.applyDimension(1, (i < 960 || i2 < 720 || configuration.orientation != 2) ? (i >= 600 || (i >= 640 && i2 >= 480)) ? FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE : ComponentConstants.TEXTBOX_PREFERRED_WIDTH : 256, displayMetrics));
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.e = i;
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            super.onWindowFocusChanged(z);
            if (z && this.f.hasFocus() && getVisibility() == 0) {
                this.f402g = true;
                Context context = getContext();
                l lVar = SearchView.k0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z, int i, Rect rect) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            super.onFocusChanged(z, i, rect);
            SearchView searchView = this.f;
            searchView.o(searchView.isIconified());
            searchView.post(searchView.h0);
            if (searchView.p.hasFocus()) {
                searchView.e();
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.e <= 0 || super.enoughToFilter();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f.clearFocus();
                        b(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f402g) {
                Runnable runnable = this.h;
                removeCallbacks(runnable);
                post(runnable);
            }
            return inputConnectionOnCreateInputConnection;
        }

        public final void b(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            Runnable runnable = this.h;
            if (!z) {
                this.f402g = false;
                removeCallbacks(runnable);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (inputMethodManager.isActive(this)) {
                    this.f402g = false;
                    removeCallbacks(runnable);
                    inputMethodManager.showSoftInput(this, 0);
                    return;
                }
                this.f402g = true;
            }
        }

        public final void a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (Build.VERSION.SDK_INT >= 29) {
                k.b(this, 1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            l lVar = SearchView.k0;
            lVar.getClass();
            l.a();
            Method method = lVar.c;
            if (method != null) {
                try {
                    method.invoke(this, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    public static class l {

        /* renamed from: a, reason: collision with root package name */
        public final Method f414a;

        /* renamed from: b, reason: collision with root package name */
        public final Method f415b;
        public final Method c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        public l() throws NoSuchMethodException, SecurityException {
            this.f414a = null;
            this.f415b = null;
            this.c = null;
            a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f414a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f415b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        public static void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }
    }

    @RequiresApi(29)
    public static class k {
        private k() {
        }

        @DoNotInline
        public static void b(SearchAutoComplete searchAutoComplete, int i) {
            searchAutoComplete.setInputMethodMode(i);
        }

        @DoNotInline
        public static void a(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }
    }
}
