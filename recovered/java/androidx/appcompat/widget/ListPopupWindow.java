package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ListPopupWindow implements ShowableListMenu {
    public static final Method G;
    public static final Method H;
    public static final Method I;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    public static final int WRAP_CONTENT = -2;
    public Runnable A;
    public final Handler B;
    public final Rect C;
    public Rect D;
    public boolean E;
    public final PopupWindow F;

    /* renamed from: a, reason: collision with root package name */
    public final Context f375a;

    /* renamed from: b, reason: collision with root package name */
    public ListAdapter f376b;
    public t c;
    public int d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f377g;
    public int h;
    public boolean i;
    public boolean j;
    public boolean k;
    public int l;
    public boolean m;
    public boolean n;
    public final int o;
    public View p;
    public int q;
    public DataSetObserver r;
    public View s;
    public Drawable t;
    public AdapterView.OnItemClickListener u;
    public AdapterView.OnItemSelectedListener v;
    public final h w;
    public final g x;
    public final f y;
    public final d z;

    static {
        int i = Build.VERSION.SDK_INT;
        Class cls = Boolean.TYPE;
        if (i <= 28) {
            try {
                G = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", cls);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                I = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                H = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, cls);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(@NonNull Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        this.d = -2;
        this.e = -2;
        this.h = 1002;
        this.l = 0;
        this.m = false;
        this.n = false;
        this.o = Integer.MAX_VALUE;
        this.q = 0;
        this.w = new h();
        this.x = new g();
        this.y = new f();
        this.z = new d();
        this.C = new Rect();
        this.f375a = context;
        this.B = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i, i2);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f377g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        i iVar = new i(context, attributeSet, i, i2);
        this.F = iVar;
        iVar.setInputMethodMode(1);
    }

    public void setAdapter(@Nullable ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.r;
        if (dataSetObserver == null) {
            this.r = new e();
        } else {
            ListAdapter listAdapter2 = this.f376b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f376b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.r);
        }
        t tVar = this.c;
        if (tVar != null) {
            tVar.setAdapter(this.f376b);
        }
    }

    public void setPromptPosition(int i) {
        this.q = i;
    }

    public int getPromptPosition() {
        return this.q;
    }

    public void setModal(boolean z) {
        this.E = z;
        this.F.setFocusable(z);
    }

    public boolean isModal() {
        return this.E;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setForceIgnoreOutsideTouch(boolean z) {
        this.n = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setDropDownAlwaysVisible(boolean z) {
        this.m = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isDropDownAlwaysVisible() {
        return this.m;
    }

    public void setSoftInputMode(int i) {
        this.F.setSoftInputMode(i);
    }

    public int getSoftInputMode() {
        return this.F.getSoftInputMode();
    }

    public void setListSelector(Drawable drawable) {
        this.t = drawable;
    }

    @Nullable
    public Drawable getBackground() {
        return this.F.getBackground();
    }

    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        this.F.setBackgroundDrawable(drawable);
    }

    public void setAnimationStyle(@StyleRes int i) {
        this.F.setAnimationStyle(i);
    }

    @StyleRes
    public int getAnimationStyle() {
        return this.F.getAnimationStyle();
    }

    @Nullable
    public View getAnchorView() {
        return this.s;
    }

    public void setAnchorView(@Nullable View view) {
        this.s = view;
    }

    public int getHorizontalOffset() {
        return this.f;
    }

    public void setHorizontalOffset(int i) {
        this.f = i;
    }

    public int getVerticalOffset() {
        if (this.i) {
            return this.f377g;
        }
        return 0;
    }

    public void setVerticalOffset(int i) {
        this.f377g = i;
        this.i = true;
    }

    public void setEpicenterBounds(@Nullable Rect rect) {
        this.D = rect != null ? new Rect(rect) : null;
    }

    @Nullable
    public Rect getEpicenterBounds() {
        if (this.D != null) {
            return new Rect(this.D);
        }
        return null;
    }

    public void setDropDownGravity(int i) {
        this.l = i;
    }

    public int getWidth() {
        return this.e;
    }

    public void setWidth(int i) {
        this.e = i;
    }

    public void setContentWidth(int i) {
        Drawable background = this.F.getBackground();
        if (background != null) {
            Rect rect = this.C;
            background.getPadding(rect);
            this.e = rect.left + rect.right + i;
            return;
        }
        setWidth(i);
    }

    public int getHeight() {
        return this.d;
    }

    public void setHeight(int i) {
        if (i < 0 && -2 != i && -1 != i) {
            throw new IllegalArgumentException("Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT.");
        }
        this.d = i;
    }

    public void setWindowLayoutType(int i) {
        this.h = i;
    }

    public void setOnItemClickListener(@Nullable AdapterView.OnItemClickListener onItemClickListener) {
        this.u = onItemClickListener;
    }

    public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.v = onItemSelectedListener;
    }

    public void setPromptView(@Nullable View view) {
        View view2;
        boolean zIsShowing = isShowing();
        if (zIsShowing && (view2 = this.p) != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.p);
            }
        }
        this.p = view;
        if (zIsShowing) {
            show();
        }
    }

    public void postShow() {
        this.B.post(this.A);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        PopupWindow popupWindow = this.F;
        popupWindow.dismiss();
        View view = this.p;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.p);
            }
        }
        popupWindow.setContentView(null);
        this.c = null;
        this.B.removeCallbacks(this.w);
    }

    public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.F.setOnDismissListener(onDismissListener);
    }

    public void setInputMethodMode(int i) {
        this.F.setInputMethodMode(i);
    }

    public int getInputMethodMode() {
        return this.F.getInputMethodMode();
    }

    public void setSelection(int i) {
        t tVar = this.c;
        if (!isShowing() || tVar == null) {
            return;
        }
        tVar.h = false;
        tVar.setSelection(i);
        if (tVar.getChoiceMode() != 0) {
            tVar.setItemChecked(i, true);
        }
    }

    public void clearListSelection() {
        t tVar = this.c;
        if (tVar != null) {
            tVar.h = true;
            tVar.requestLayout();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return this.F.isShowing();
    }

    public boolean isInputMethodNotNeeded() {
        return this.F.getInputMethodMode() == 2;
    }

    public boolean performItemClick(int i) {
        if (!isShowing()) {
            return false;
        }
        if (this.u == null) {
            return true;
        }
        t tVar = this.c;
        this.u.onItemClick(tVar, tVar.getChildAt(i - tVar.getFirstVisiblePosition()), i, tVar.getAdapter().getItemId(i));
        return true;
    }

    @Nullable
    public Object getSelectedItem() {
        if (isShowing()) {
            return this.c.getSelectedItem();
        }
        return null;
    }

    public int getSelectedItemPosition() {
        if (isShowing()) {
            return this.c.getSelectedItemPosition();
        }
        return -1;
    }

    public long getSelectedItemId() {
        if (isShowing()) {
            return this.c.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    @Nullable
    public View getSelectedView() {
        if (isShowing()) {
            return this.c.getSelectedView();
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    @Nullable
    public ListView getListView() {
        return this.c;
    }

    public t a(Context context, boolean z) {
        return new t(context, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x009a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009b A[ADDED_TO_REGION, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r13, @androidx.annotation.NonNull android.view.KeyEvent r14) {
        /*
            r12 = this;
            boolean r0 = r12.isShowing()
            r1 = 0
            if (r0 == 0) goto L9b
            r0 = 62
            if (r13 == r0) goto L9b
            androidx.appcompat.widget.t r0 = r12.c
            int r0 = r0.getSelectedItemPosition()
            r2 = 23
            r3 = 66
            if (r0 >= 0) goto L1c
            if (r13 == r3) goto L1b
            if (r13 != r2) goto L1c
        L1b:
            return r1
        L1c:
            androidx.appcompat.widget.t r0 = r12.c
            int r0 = r0.getSelectedItemPosition()
            android.widget.PopupWindow r4 = r12.F
            boolean r5 = r4.isAboveAnchor()
            android.widget.ListAdapter r6 = r12.f376b
            r7 = 1
            if (r6 == 0) goto L4f
            boolean r8 = r6.areAllItemsEnabled()
            if (r8 == 0) goto L35
            r9 = 0
            goto L3b
        L35:
            androidx.appcompat.widget.t r9 = r12.c
            int r9 = r9.lookForSelectablePosition(r1, r7)
        L3b:
            if (r8 == 0) goto L43
            int r6 = r6.getCount()
            int r6 = r6 - r7
            goto L54
        L43:
            androidx.appcompat.widget.t r8 = r12.c
            int r6 = r6.getCount()
            int r6 = r6 - r7
            int r6 = r8.lookForSelectablePosition(r6, r1)
            goto L54
        L4f:
            r9 = 2147483647(0x7fffffff, float:NaN)
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
        L54:
            r8 = 19
            if (r5 != 0) goto L5c
            if (r13 != r8) goto L5c
            if (r0 <= r9) goto L64
        L5c:
            r10 = 20
            if (r5 == 0) goto L6e
            if (r13 != r10) goto L6e
            if (r0 < r6) goto L6e
        L64:
            r12.clearListSelection()
            r4.setInputMethodMode(r7)
            r12.show()
            return r7
        L6e:
            androidx.appcompat.widget.t r11 = r12.c
            r11.h = r1
            boolean r14 = r11.onKeyDown(r13, r14)
            if (r14 == 0) goto L8d
            r14 = 2
            r4.setInputMethodMode(r14)
            androidx.appcompat.widget.t r14 = r12.c
            r14.requestFocusFromTouch()
            r12.show()
            if (r13 == r8) goto L9a
            if (r13 == r10) goto L9a
            if (r13 == r2) goto L9a
            if (r13 == r3) goto L9a
            goto L9b
        L8d:
            if (r5 != 0) goto L94
            if (r13 != r10) goto L94
            if (r0 != r6) goto L9b
            goto L9a
        L94:
            if (r5 == 0) goto L9b
            if (r13 != r8) goto L9b
            if (r0 != r9) goto L9b
        L9a:
            return r7
        L9b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ListPopupWindow.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    public boolean onKeyUp(int i, @NonNull KeyEvent keyEvent) {
        if (!isShowing() || this.c.getSelectedItemPosition() < 0) {
            return false;
        }
        boolean zOnKeyUp = this.c.onKeyUp(i, keyEvent);
        if (!zOnKeyUp || (i != 66 && i != 23)) {
            return zOnKeyUp;
        }
        dismiss();
        return zOnKeyUp;
    }

    public boolean onKeyPreIme(int i, @NonNull KeyEvent keyEvent) {
        if (i != 4 || !isShowing()) {
            return false;
        }
        View view = this.s;
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
            KeyEvent.DispatcherState keyDispatcherState = view.getKeyDispatcherState();
            if (keyDispatcherState != null) {
                keyDispatcherState.startTracking(keyEvent, this);
            }
            return true;
        }
        if (keyEvent.getAction() != 1) {
            return false;
        }
        KeyEvent.DispatcherState keyDispatcherState2 = view.getKeyDispatcherState();
        if (keyDispatcherState2 != null) {
            keyDispatcherState2.handleUpEvent(keyEvent);
        }
        if (!keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        dismiss();
        return true;
    }

    public class a extends ForwardingListener {
        public a(View view) {
            super(view);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public ListPopupWindow getPopup() {
            return ListPopupWindow.this;
        }
    }

    public View.OnTouchListener createDragToOpenListener(View view) {
        return new a(view);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01ba  */
    @Override // androidx.appcompat.view.menu.ShowableListMenu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void show() {
        /*
            Method dump skipped, instructions count: 717
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ListPopupWindow.show():void");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setOverlapAnchor(boolean z) {
        this.k = true;
        this.j = z;
    }

    public class e extends DataSetObserver {
        public e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (listPopupWindow.isShowing()) {
                listPopupWindow.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.clearListSelection();
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            t tVar = listPopupWindow.c;
            if (tVar == null || !ViewCompat.isAttachedToWindow(tVar) || listPopupWindow.c.getCount() <= listPopupWindow.c.getChildCount() || listPopupWindow.c.getChildCount() > listPopupWindow.o) {
                return;
            }
            listPopupWindow.F.setInputMethodMode(2);
            listPopupWindow.show();
        }
    }

    public class g implements View.OnTouchListener {
        public g() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (action == 0 && (popupWindow = listPopupWindow.F) != null && popupWindow.isShowing() && x >= 0 && x < listPopupWindow.F.getWidth() && y >= 0 && y < listPopupWindow.F.getHeight()) {
                listPopupWindow.B.postDelayed(listPopupWindow.w, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            listPopupWindow.B.removeCallbacks(listPopupWindow.w);
            return false;
        }
    }

    public class f implements AbsListView.OnScrollListener {
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        public f() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                if (listPopupWindow.isInputMethodNotNeeded() || listPopupWindow.F.getContentView() == null) {
                    return;
                }
                listPopupWindow.B.removeCallbacks(listPopupWindow.w);
                listPopupWindow.w.run();
            }
        }
    }

    @RequiresApi(29)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static void a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        @DoNotInline
        public static void b(PopupWindow popupWindow, boolean z) {
            popupWindow.setIsClippedToScreen(z);
        }
    }

    @RequiresApi(24)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static int a(PopupWindow popupWindow, View view, int i, boolean z) {
            return popupWindow.getMaxAvailableHeight(view, i, z);
        }
    }
}
