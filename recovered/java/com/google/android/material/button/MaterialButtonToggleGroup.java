package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {
    public static final int k = R.style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2844a;

    /* renamed from: b, reason: collision with root package name */
    public final d f2845b;
    public final LinkedHashSet c;
    public final Comparator d;
    public Integer[] e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2846g;
    public boolean h;
    public final int i;
    public HashSet j;

    public interface OnButtonCheckedListener {
        void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup, @IdRes int i, boolean z);
    }

    public class a implements Comparator<MaterialButton> {
        public a() {
        }

        @Override // java.util.Comparator
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int iCompareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            if (iCompareTo2 != 0) {
                return iCompareTo2;
            }
            MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
            return Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton)).compareTo(Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton2)));
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context) {
        this(context, null);
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = k;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.f2844a = new ArrayList();
        this.f2845b = new d();
        this.c = new LinkedHashSet();
        this.d = new a();
        this.f = false;
        this.j = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(getContext(), attributeSet, R.styleable.MaterialButtonToggleGroup, i, i2, new int[0]);
        setSingleSelection(typedArrayObtainStyledAttributes.getBoolean(R.styleable.MaterialButtonToggleGroup_singleSelection, false));
        this.i = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialButtonToggleGroup_checkedButton, -1);
        this.h = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        typedArrayObtainStyledAttributes.recycle();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.i;
        if (i != -1) {
            d(Collections.singleton(Integer.valueOf(i)));
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MaterialButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.generateViewId());
        }
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.f = this.f2845b;
        if (materialButton.b()) {
            com.google.android.material.button.a aVar = materialButton.d;
            aVar.n = true;
            aVar.e();
        }
        b(materialButton.getId(), materialButton.isChecked());
        ShapeAppearanceModel shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f2844a.add(new c(shapeAppearanceModel.getTopLeftCornerSize(), shapeAppearanceModel.getBottomLeftCornerSize(), shapeAppearanceModel.getTopRightCornerSize(), shapeAppearanceModel.getBottomRightCornerSize()));
        ViewCompat.setAccessibilityDelegate(materialButton, new b());
    }

    public class b extends AccessibilityDelegateCompat {
        public b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int i;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int i2 = MaterialButtonToggleGroup.k;
            MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
            materialButtonToggleGroup.getClass();
            if (view instanceof MaterialButton) {
                int i3 = 0;
                for (int i4 = 0; i4 < materialButtonToggleGroup.getChildCount(); i4++) {
                    if (materialButtonToggleGroup.getChildAt(i4) == view) {
                        i = i3;
                        break;
                    }
                    if ((materialButtonToggleGroup.getChildAt(i4) instanceof MaterialButton) && materialButtonToggleGroup.c(i4)) {
                        i3++;
                    }
                }
                i = -1;
            } else {
                i = -1;
            }
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, i, 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).f = null;
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f2844a.remove(iIndexOfChild);
        }
        e();
        a();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        e();
        a();
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && c(i2)) {
                i++;
            }
        }
        accessibilityNodeInfoCompatWrap.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, i, false, isSingleSelection() ? 1 : 2));
    }

    public void check(@IdRes int i) {
        b(i, true);
    }

    public void uncheck(@IdRes int i) {
        b(i, false);
    }

    public void clearChecked() {
        d(new HashSet());
    }

    @IdRes
    public int getCheckedButtonId() {
        if (!this.f2846g || this.j.isEmpty()) {
            return -1;
        }
        return ((Integer) this.j.iterator().next()).intValue();
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            int id = ((MaterialButton) getChildAt(i)).getId();
            if (this.j.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    public void addOnButtonCheckedListener(@NonNull OnButtonCheckedListener onButtonCheckedListener) {
        this.c.add(onButtonCheckedListener);
    }

    public void removeOnButtonCheckedListener(@NonNull OnButtonCheckedListener onButtonCheckedListener) {
        this.c.remove(onButtonCheckedListener);
    }

    public void clearOnButtonCheckedListeners() {
        this.c.clear();
    }

    public boolean isSingleSelection() {
        return this.f2846g;
    }

    public void setSingleSelection(boolean z) {
        if (this.f2846g != z) {
            this.f2846g = z;
            clearChecked();
        }
    }

    public void setSelectionRequired(boolean z) {
        this.h = z;
    }

    public boolean isSelectionRequired() {
        return this.h;
    }

    public void setSingleSelection(@BoolRes int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public final void e() {
        int i;
        int childCount = getChildCount();
        int childCount2 = getChildCount();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= childCount2) {
                i2 = -1;
                break;
            } else if (c(i2)) {
                break;
            } else {
                i2++;
            }
        }
        int childCount3 = getChildCount() - 1;
        while (true) {
            if (childCount3 < 0) {
                break;
            }
            if (c(childCount3)) {
                i = childCount3;
                break;
            }
            childCount3--;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i3);
            if (materialButton.getVisibility() != 8) {
                ShapeAppearanceModel.Builder builder = materialButton.getShapeAppearanceModel().toBuilder();
                c cVarEnd = (c) this.f2844a.get(i3);
                if (i2 != i) {
                    boolean z = getOrientation() == 0;
                    if (i3 == i2) {
                        cVarEnd = z ? c.start(cVarEnd, this) : c.top(cVarEnd);
                    } else if (i3 == i) {
                        cVarEnd = z ? c.end(cVarEnd, this) : c.bottom(cVarEnd);
                    } else {
                        cVarEnd = null;
                    }
                }
                if (cVarEnd == null) {
                    builder.setAllCornerSizes(0.0f);
                } else {
                    builder.setTopLeftCornerSize(cVarEnd.f2848a).setBottomLeftCornerSize(cVarEnd.d).setTopRightCornerSize(cVarEnd.f2849b).setBottomRightCornerSize(cVarEnd.c);
                }
                materialButton.setShapeAppearanceModel(builder.build());
            }
        }
    }

    public final void a() {
        LinearLayout.LayoutParams layoutParams;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                i = -1;
                break;
            } else if (c(i)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        for (int i2 = i + 1; i2 < getChildCount(); i2++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i2);
            int iMin = Math.min(materialButton.getStrokeWidth(), ((MaterialButton) getChildAt(i2 - 1)).getStrokeWidth());
            ViewGroup.LayoutParams layoutParams2 = materialButton.getLayoutParams();
            if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                layoutParams = (LinearLayout.LayoutParams) layoutParams2;
            } else {
                layoutParams = new LinearLayout.LayoutParams(layoutParams2.width, layoutParams2.height);
            }
            if (getOrientation() == 0) {
                MarginLayoutParamsCompat.setMarginEnd(layoutParams, 0);
                MarginLayoutParamsCompat.setMarginStart(layoutParams, -iMin);
                layoutParams.topMargin = 0;
            } else {
                layoutParams.bottomMargin = 0;
                layoutParams.topMargin = -iMin;
                MarginLayoutParamsCompat.setMarginStart(layoutParams, 0);
            }
            materialButton.setLayoutParams(layoutParams);
        }
        if (getChildCount() == 0 || i == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(i)).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            MarginLayoutParamsCompat.setMarginEnd(layoutParams3, 0);
            MarginLayoutParamsCompat.setMarginStart(layoutParams3, 0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    public final boolean c(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    public final void b(int i, boolean z) {
        if (i == -1) {
            Log.e("MaterialButtonToggleGroup", "Button ID is not valid: " + i);
            return;
        }
        HashSet hashSet = new HashSet(this.j);
        if (z && !hashSet.contains(Integer.valueOf(i))) {
            if (this.f2846g && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i));
        } else {
            if (z || !hashSet.contains(Integer.valueOf(i))) {
                return;
            }
            if (!this.h || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i));
            }
        }
        d(hashSet);
    }

    public final void d(Set set) {
        HashSet hashSet = this.j;
        this.j = new HashSet(set);
        for (int i = 0; i < getChildCount(); i++) {
            int id = ((MaterialButton) getChildAt(i)).getId();
            boolean zContains = set.contains(Integer.valueOf(id));
            View viewFindViewById = findViewById(id);
            if (viewFindViewById instanceof MaterialButton) {
                this.f = true;
                ((MaterialButton) viewFindViewById).setChecked(zContains);
                this.f = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                boolean zContains2 = set.contains(Integer.valueOf(id));
                Iterator it = this.c.iterator();
                while (it.hasNext()) {
                    ((OnButtonCheckedListener) it.next()).onButtonChecked(this, id, zContains2);
                }
            }
        }
        invalidate();
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.e;
        if (numArr == null || i2 >= numArr.length) {
            Log.w("MaterialButtonToggleGroup", "Child order wasn't updated");
            return i2;
        }
        return numArr[i2].intValue();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(@NonNull Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.d);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put((MaterialButton) getChildAt(i), Integer.valueOf(i));
        }
        this.e = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public class d implements MaterialButton.a {
        public d() {
        }

        @Override // com.google.android.material.button.MaterialButton.a
        public void onPressedChanged(@NonNull MaterialButton materialButton, boolean z) {
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    public static class c {
        public static final AbsoluteCornerSize e = new AbsoluteCornerSize(0.0f);

        /* renamed from: a, reason: collision with root package name */
        public final CornerSize f2848a;

        /* renamed from: b, reason: collision with root package name */
        public final CornerSize f2849b;
        public final CornerSize c;
        public final CornerSize d;

        public c(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
            this.f2848a = cornerSize;
            this.f2849b = cornerSize3;
            this.c = cornerSize4;
            this.d = cornerSize2;
        }

        public static c start(c cVar, View view) {
            return ViewUtils.isLayoutRtl(view) ? right(cVar) : left(cVar);
        }

        public static c end(c cVar, View view) {
            return ViewUtils.isLayoutRtl(view) ? left(cVar) : right(cVar);
        }

        public static c left(c cVar) {
            CornerSize cornerSize = cVar.f2848a;
            AbsoluteCornerSize absoluteCornerSize = e;
            return new c(cornerSize, cVar.d, absoluteCornerSize, absoluteCornerSize);
        }

        public static c right(c cVar) {
            CornerSize cornerSize = cVar.f2849b;
            CornerSize cornerSize2 = cVar.c;
            AbsoluteCornerSize absoluteCornerSize = e;
            return new c(absoluteCornerSize, absoluteCornerSize, cornerSize, cornerSize2);
        }

        public static c top(c cVar) {
            CornerSize cornerSize = cVar.f2848a;
            AbsoluteCornerSize absoluteCornerSize = e;
            return new c(cornerSize, absoluteCornerSize, cVar.f2849b, absoluteCornerSize);
        }

        public static c bottom(c cVar) {
            CornerSize cornerSize = cVar.d;
            CornerSize cornerSize2 = cVar.c;
            AbsoluteCornerSize absoluteCornerSize = e;
            return new c(absoluteCornerSize, cornerSize, absoluteCornerSize, cornerSize2);
        }
    }
}
