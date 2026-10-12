package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup implements ActivityChooserModel.ActivityChooserModelClient {

    /* renamed from: a, reason: collision with root package name */
    public final f f299a;

    /* renamed from: b, reason: collision with root package name */
    public final g f300b;
    public final View c;
    public final Drawable d;
    public final FrameLayout e;
    public final ImageView f;

    /* renamed from: g, reason: collision with root package name */
    public final FrameLayout f301g;
    public final ImageView h;
    public final int i;
    public ActionProvider j;
    public final DataSetObserver k;
    public final ViewTreeObserver.OnGlobalLayoutListener l;
    public ListPopupWindow m;
    public PopupWindow.OnDismissListener n;
    public boolean o;
    public int p;
    public boolean q;
    public int r;

    public class a extends DataSetObserver {
        public a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.f299a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.f299a.notifyDataSetInvalidated();
        }
    }

    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (activityChooserView.isShowingPopup()) {
                if (!activityChooserView.isShown()) {
                    activityChooserView.a().dismiss();
                    return;
                }
                activityChooserView.a().show();
                ActionProvider actionProvider = activityChooserView.j;
                if (actionProvider != null) {
                    actionProvider.subUiVisibilityChanged(true);
                }
            }
        }
    }

    public ActivityChooserView(@NonNull Context context) {
        this(context, null);
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = new a();
        this.l = new b();
        this.p = 4;
        int[] iArr = R.styleable.ActivityChooserView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i, 0);
        this.p = typedArrayObtainStyledAttributes.getInt(R.styleable.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(R.layout.abc_activity_chooser_view, (ViewGroup) this, true);
        g gVar = new g();
        this.f300b = gVar;
        View viewFindViewById = findViewById(R.id.activity_chooser_view_content);
        this.c = viewFindViewById;
        this.d = viewFindViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.default_activity_button);
        this.f301g = frameLayout;
        frameLayout.setOnClickListener(gVar);
        frameLayout.setOnLongClickListener(gVar);
        int i2 = R.id.image;
        this.h = (ImageView) frameLayout.findViewById(i2);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R.id.expand_activities_button);
        frameLayout2.setOnClickListener(gVar);
        frameLayout2.setAccessibilityDelegate(new c());
        frameLayout2.setOnTouchListener(new d(frameLayout2));
        this.e = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(i2);
        this.f = imageView;
        imageView.setImageDrawable(drawable);
        f fVar = new f();
        this.f299a = fVar;
        fVar.registerDataSetObserver(new e());
        Resources resources = context.getResources();
        this.i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    }

    public class c extends View.AccessibilityDelegate {
        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCanOpenPopup(true);
        }
    }

    public class d extends ForwardingListener {
        public d(FrameLayout frameLayout) {
            super(frameLayout);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public ShowableListMenu getPopup() {
            return ActivityChooserView.this.a();
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public boolean onForwardingStarted() {
            ActivityChooserView.this.showPopup();
            return true;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public boolean onForwardingStopped() {
            ActivityChooserView.this.dismissPopup();
            return true;
        }
    }

    public class e extends DataSetObserver {
        public e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            f fVar = activityChooserView.f299a;
            int count = fVar.getCount();
            FrameLayout frameLayout = activityChooserView.e;
            if (count > 0) {
                frameLayout.setEnabled(true);
            } else {
                frameLayout.setEnabled(false);
            }
            int activityCount = fVar.getActivityCount();
            int historySize = fVar.getHistorySize();
            FrameLayout frameLayout2 = activityChooserView.f301g;
            if (activityCount == 1 || (activityCount > 1 && historySize > 0)) {
                frameLayout2.setVisibility(0);
                ResolveInfo defaultActivity = fVar.getDefaultActivity();
                PackageManager packageManager = activityChooserView.getContext().getPackageManager();
                activityChooserView.h.setImageDrawable(defaultActivity.loadIcon(packageManager));
                if (activityChooserView.r != 0) {
                    frameLayout2.setContentDescription(activityChooserView.getContext().getString(activityChooserView.r, defaultActivity.loadLabel(packageManager)));
                }
            } else {
                frameLayout2.setVisibility(8);
            }
            int visibility = frameLayout2.getVisibility();
            View view = activityChooserView.c;
            if (visibility == 0) {
                view.setBackgroundDrawable(activityChooserView.d);
            } else {
                view.setBackgroundDrawable(null);
            }
        }
    }

    @Override // androidx.appcompat.widget.ActivityChooserModel.ActivityChooserModelClient
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setActivityChooserModel(ActivityChooserModel activityChooserModel) {
        this.f299a.setDataModel(activityChooserModel);
        if (isShowingPopup()) {
            dismissPopup();
            showPopup();
        }
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f.setImageDrawable(drawable);
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f.setContentDescription(getContext().getString(i));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setProvider(ActionProvider actionProvider) {
        this.j = actionProvider;
    }

    public boolean showPopup() {
        if (isShowingPopup() || !this.q) {
            return false;
        }
        this.o = false;
        b(this.p);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    public final void b(int i) {
        f fVar = this.f299a;
        if (fVar.getDataModel() == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.l);
        ?? r1 = this.f301g.getVisibility() == 0 ? 1 : 0;
        int activityCount = fVar.getActivityCount();
        if (i != Integer.MAX_VALUE && activityCount > i + r1) {
            fVar.setShowFooterView(true);
            fVar.setMaxActivityCount(i - 1);
        } else {
            fVar.setShowFooterView(false);
            fVar.setMaxActivityCount(i);
        }
        ListPopupWindow listPopupWindowA = a();
        if (listPopupWindowA.isShowing()) {
            return;
        }
        if (this.o || r1 == 0) {
            fVar.setShowDefaultActivity(true, r1);
        } else {
            fVar.setShowDefaultActivity(false, false);
        }
        listPopupWindowA.setContentWidth(Math.min(fVar.measureContentWidth(), this.i));
        listPopupWindowA.show();
        ActionProvider actionProvider = this.j;
        if (actionProvider != null) {
            actionProvider.subUiVisibilityChanged(true);
        }
        listPopupWindowA.getListView().setContentDescription(getContext().getString(R.string.abc_activitychooserview_choose_application));
        listPopupWindowA.getListView().setSelector(new ColorDrawable(0));
    }

    public boolean dismissPopup() {
        if (!isShowingPopup()) {
            return true;
        }
        a().dismiss();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.l);
        return true;
    }

    public boolean isShowingPopup() {
        return a().isShowing();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ActivityChooserModel dataModel = this.f299a.getDataModel();
        if (dataModel != null) {
            dataModel.registerObserver(this.k);
        }
        this.q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActivityChooserModel dataModel = this.f299a.getDataModel();
        if (dataModel != null) {
            dataModel.unregisterObserver(this.k);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.l);
        }
        if (isShowingPopup()) {
            dismissPopup();
        }
        this.q = false;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f301g.getVisibility() != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        View view = this.c;
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.c.layout(0, 0, i3 - i, i4 - i2);
        if (isShowingPopup()) {
            return;
        }
        dismissPopup();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public ActivityChooserModel getDataModel() {
        return this.f299a.getDataModel();
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.n = onDismissListener;
    }

    public void setInitialActivityCount(int i) {
        this.p = i;
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.r = i;
    }

    public final ListPopupWindow a() {
        if (this.m == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.m = listPopupWindow;
            listPopupWindow.setAdapter(this.f299a);
            this.m.setAnchorView(this);
            this.m.setModal(true);
            ListPopupWindow listPopupWindow2 = this.m;
            g gVar = this.f300b;
            listPopupWindow2.setOnItemClickListener(gVar);
            this.m.setOnDismissListener(gVar);
        }
        return this.m;
    }

    public class g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        public g() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((f) adapterView.getAdapter()).getItemViewType(i);
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    activityChooserView.b(Integer.MAX_VALUE);
                    return;
                }
                throw new IllegalArgumentException();
            }
            activityChooserView.dismissPopup();
            boolean z = activityChooserView.o;
            f fVar = activityChooserView.f299a;
            if (z) {
                if (i > 0) {
                    fVar.getDataModel().setDefaultActivity(i);
                    return;
                }
                return;
            }
            if (!fVar.getShowDefaultActivity()) {
                i++;
            }
            Intent intentChooseActivity = fVar.getDataModel().chooseActivity(i);
            if (intentChooseActivity != null) {
                intentChooseActivity.addFlags(524288);
                activityChooserView.getContext().startActivity(intentChooseActivity);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f301g) {
                activityChooserView.dismissPopup();
                Intent intentChooseActivity = activityChooserView.f299a.getDataModel().chooseActivity(activityChooserView.f299a.getDataModel().getActivityIndex(activityChooserView.f299a.getDefaultActivity()));
                if (intentChooseActivity != null) {
                    intentChooseActivity.addFlags(524288);
                    activityChooserView.getContext().startActivity(intentChooseActivity);
                    return;
                }
                return;
            }
            if (view == activityChooserView.e) {
                activityChooserView.o = false;
                activityChooserView.b(activityChooserView.p);
                return;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f301g) {
                if (activityChooserView.f299a.getCount() > 0) {
                    activityChooserView.o = true;
                    activityChooserView.b(activityChooserView.p);
                }
                return true;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            PopupWindow.OnDismissListener onDismissListener = activityChooserView.n;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
            ActionProvider actionProvider = activityChooserView.j;
            if (actionProvider != null) {
                actionProvider.subUiVisibilityChanged(false);
            }
        }
    }

    public class f extends BaseAdapter {

        /* renamed from: a, reason: collision with root package name */
        public ActivityChooserModel f306a;

        /* renamed from: b, reason: collision with root package name */
        public int f307b = 4;
        public boolean c;
        public boolean d;
        public boolean e;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        public f() {
        }

        public void setDataModel(ActivityChooserModel activityChooserModel) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            ActivityChooserModel dataModel = activityChooserView.f299a.getDataModel();
            if (dataModel != null && activityChooserView.isShown()) {
                dataModel.unregisterObserver(activityChooserView.k);
            }
            this.f306a = activityChooserModel;
            if (activityChooserModel != null && activityChooserView.isShown()) {
                activityChooserModel.registerObserver(activityChooserView.k);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (this.e && i == getCount() - 1) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int activityCount = this.f306a.getActivityCount();
            if (!this.c && this.f306a.getDefaultActivity() != null) {
                activityCount--;
            }
            int iMin = Math.min(activityCount, this.f307b);
            return this.e ? iMin + 1 : iMin;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    return null;
                }
                throw new IllegalArgumentException();
            }
            if (!this.c && this.f306a.getDefaultActivity() != null) {
                i++;
            }
            return this.f306a.getActivity(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i);
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    if (view != null && view.getId() == 1) {
                        return view;
                    }
                    View viewInflate = LayoutInflater.from(activityChooserView.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                    viewInflate.setId(1);
                    ((TextView) viewInflate.findViewById(R.id.title)).setText(activityChooserView.getContext().getString(R.string.abc_activity_chooser_view_see_all));
                    return viewInflate;
                }
                throw new IllegalArgumentException();
            }
            if (view == null || view.getId() != R.id.list_item) {
                view = LayoutInflater.from(activityChooserView.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            PackageManager packageManager = activityChooserView.getContext().getPackageManager();
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
            imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
            ((TextView) view.findViewById(R.id.title)).setText(resolveInfo.loadLabel(packageManager));
            if (this.c && i == 0 && this.d) {
                view.setActivated(true);
                return view;
            }
            view.setActivated(false);
            return view;
        }

        public int measureContentWidth() {
            int i = this.f307b;
            this.f307b = Integer.MAX_VALUE;
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            View view = null;
            int iMax = 0;
            for (int i2 = 0; i2 < count; i2++) {
                view = getView(i2, view, null);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                iMax = Math.max(iMax, view.getMeasuredWidth());
            }
            this.f307b = i;
            return iMax;
        }

        public void setMaxActivityCount(int i) {
            if (this.f307b != i) {
                this.f307b = i;
                notifyDataSetChanged();
            }
        }

        public ResolveInfo getDefaultActivity() {
            return this.f306a.getDefaultActivity();
        }

        public void setShowFooterView(boolean z) {
            if (this.e != z) {
                this.e = z;
                notifyDataSetChanged();
            }
        }

        public int getActivityCount() {
            return this.f306a.getActivityCount();
        }

        public int getHistorySize() {
            return this.f306a.getHistorySize();
        }

        public ActivityChooserModel getDataModel() {
            return this.f306a;
        }

        public void setShowDefaultActivity(boolean z, boolean z2) {
            if (this.c == z && this.d == z2) {
                return;
            }
            this.c = z;
            this.d = z2;
            notifyDataSetChanged();
        }

        public boolean getShowDefaultActivity() {
            return this.c;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a, reason: collision with root package name */
        public static final int[] f302a = {android.R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, f302a);
            setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(0));
            tintTypedArrayObtainStyledAttributes.recycle();
        }
    }
}
