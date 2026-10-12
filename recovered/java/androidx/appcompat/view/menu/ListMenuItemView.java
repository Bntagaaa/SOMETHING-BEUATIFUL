package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.ViewCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements MenuView.ItemView, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a, reason: collision with root package name */
    public MenuItemImpl f241a;

    /* renamed from: b, reason: collision with root package name */
    public ImageView f242b;
    public RadioButton c;
    public TextView d;
    public CheckBox e;
    public TextView f;

    /* renamed from: g, reason: collision with root package name */
    public ImageView f243g;
    public ImageView h;
    public LinearLayout i;
    public final Drawable j;
    public final int k;
    public final Context l;
    public boolean m;
    public final Drawable n;
    public final boolean o;
    public LayoutInflater p;
    public boolean q;

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, R.styleable.MenuView, i, 0);
        this.j = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.MenuView_android_itemBackground);
        this.k = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuView_android_itemTextAppearance, -1);
        this.m = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuView_preserveIconSpacing, false);
        this.l = context;
        this.n = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.MenuView_subMenuArrow);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.o = typedArrayObtainStyledAttributes.hasValue(0);
        tintTypedArrayObtainStyledAttributes.recycle();
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        ViewCompat.setBackground(this, this.j);
        TextView textView = (TextView) findViewById(R.id.title);
        this.d = textView;
        int i = this.k;
        if (i != -1) {
            textView.setTextAppearance(this.l, i);
        }
        this.f = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f243g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.n);
        }
        this.h = (ImageView) findViewById(R.id.group_divider);
        this.i = (LinearLayout) findViewById(R.id.content);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initialize(androidx.appcompat.view.menu.MenuItemImpl r4, int r5) {
        /*
            r3 = this;
            r3.f241a = r4
            boolean r5 = r4.isVisible()
            r0 = 8
            r1 = 0
            if (r5 == 0) goto Ld
            r5 = 0
            goto Lf
        Ld:
            r5 = 8
        Lf:
            r3.setVisibility(r5)
            boolean r5 = r3.prefersCondensedTitle()
            if (r5 == 0) goto L1d
            java.lang.CharSequence r5 = r4.getTitleCondensed()
            goto L21
        L1d:
            java.lang.CharSequence r5 = r4.getTitle()
        L21:
            r3.setTitle(r5)
            boolean r5 = r4.isCheckable()
            r3.setCheckable(r5)
            androidx.appcompat.view.menu.MenuBuilder r5 = r4.n
            boolean r5 = r5.isShortcutsVisible()
            if (r5 == 0) goto L44
            androidx.appcompat.view.menu.MenuBuilder r5 = r4.n
            boolean r5 = r5.isQwertyMode()
            if (r5 == 0) goto L3e
            char r5 = r4.j
            goto L40
        L3e:
            char r5 = r4.h
        L40:
            if (r5 == 0) goto L44
            r5 = 1
            goto L45
        L44:
            r5 = 0
        L45:
            androidx.appcompat.view.menu.MenuBuilder r2 = r4.n
            boolean r2 = r2.isQwertyMode()
            if (r2 == 0) goto L50
            char r2 = r4.j
            goto L52
        L50:
            char r2 = r4.h
        L52:
            r3.setShortcut(r5, r2)
            android.graphics.drawable.Drawable r5 = r4.getIcon()
            r3.setIcon(r5)
            boolean r5 = r4.isEnabled()
            r3.setEnabled(r5)
            boolean r5 = r4.hasSubMenu()
            android.widget.ImageView r2 = r3.f243g
            if (r2 == 0) goto L71
            if (r5 == 0) goto L6e
            r0 = 0
        L6e:
            r2.setVisibility(r0)
        L71:
            java.lang.CharSequence r4 = r4.getContentDescription()
            r3.setContentDescription(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ListMenuItemView.initialize(androidx.appcompat.view.menu.MenuItemImpl, int):void");
    }

    public void setForceShowIcon(boolean z) {
        this.q = z;
        this.m = z;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.d.setText(charSequence);
            if (this.d.getVisibility() != 0) {
                this.d.setVisibility(0);
                return;
            }
            return;
        }
        if (this.d.getVisibility() != 8) {
            this.d.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f241a;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        View view;
        if (!z && this.c == null && this.e == null) {
            return;
        }
        if (this.f241a.isExclusiveCheckable()) {
            if (this.c == null) {
                if (this.p == null) {
                    this.p = LayoutInflater.from(getContext());
                }
                RadioButton radioButton = (RadioButton) this.p.inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.c = radioButton;
                LinearLayout linearLayout = this.i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.c;
            view = this.e;
        } else {
            if (this.e == null) {
                if (this.p == null) {
                    this.p = LayoutInflater.from(getContext());
                }
                CheckBox checkBox = (CheckBox) this.p.inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.e = checkBox;
                LinearLayout linearLayout2 = this.i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.e;
            view = this.c;
        }
        if (z) {
            compoundButton.setChecked(this.f241a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.c;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f241a.isExclusiveCheckable()) {
            if (this.c == null) {
                if (this.p == null) {
                    this.p = LayoutInflater.from(getContext());
                }
                RadioButton radioButton = (RadioButton) this.p.inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.c = radioButton;
                LinearLayout linearLayout = this.i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.c;
        } else {
            if (this.e == null) {
                if (this.p == null) {
                    this.p = LayoutInflater.from(getContext());
                }
                CheckBox checkBox = (CheckBox) this.p.inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.e = checkBox;
                LinearLayout linearLayout2 = this.i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.e;
        }
        compoundButton.setChecked(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setShortcut(boolean r9, char r10) {
        /*
            r8 = this;
            r10 = 1
            r0 = 8
            if (r9 == 0) goto L25
            androidx.appcompat.view.menu.MenuItemImpl r9 = r8.f241a
            androidx.appcompat.view.menu.MenuBuilder r1 = r9.n
            boolean r1 = r1.isShortcutsVisible()
            r2 = 0
            if (r1 == 0) goto L21
            androidx.appcompat.view.menu.MenuBuilder r1 = r9.n
            boolean r1 = r1.isQwertyMode()
            if (r1 == 0) goto L1b
            char r9 = r9.j
            goto L1d
        L1b:
            char r9 = r9.h
        L1d:
            if (r9 == 0) goto L21
            r9 = 1
            goto L22
        L21:
            r9 = 0
        L22:
            if (r9 == 0) goto L25
            goto L27
        L25:
            r2 = 8
        L27:
            if (r2 != 0) goto Ldf
            android.widget.TextView r9 = r8.f
            androidx.appcompat.view.menu.MenuItemImpl r1 = r8.f241a
            androidx.appcompat.view.menu.MenuBuilder r3 = r1.n
            boolean r3 = r3.isQwertyMode()
            if (r3 == 0) goto L38
            char r3 = r1.j
            goto L3a
        L38:
            char r3 = r1.h
        L3a:
            if (r3 != 0) goto L40
            java.lang.String r10 = ""
            goto Ldc
        L40:
            androidx.appcompat.view.menu.MenuBuilder r4 = r1.n
            android.content.Context r5 = r4.getContext()
            android.content.res.Resources r5 = r5.getResources()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            android.content.Context r7 = r4.getContext()
            android.view.ViewConfiguration r7 = android.view.ViewConfiguration.get(r7)
            boolean r7 = r7.hasPermanentMenuKey()
            if (r7 == 0) goto L66
            int r7 = androidx.appcompat.R.string.abc_prepend_shortcut_label
            java.lang.String r7 = r5.getString(r7)
            r6.append(r7)
        L66:
            boolean r4 = r4.isQwertyMode()
            if (r4 == 0) goto L6f
            int r1 = r1.k
            goto L71
        L6f:
            int r1 = r1.i
        L71:
            int r4 = androidx.appcompat.R.string.abc_menu_meta_shortcut_label
            java.lang.String r4 = r5.getString(r4)
            r7 = 65536(0x10000, float:9.1835E-41)
            androidx.appcompat.view.menu.MenuItemImpl.a(r1, r7, r4, r6)
            int r4 = androidx.appcompat.R.string.abc_menu_ctrl_shortcut_label
            java.lang.String r4 = r5.getString(r4)
            r7 = 4096(0x1000, float:5.74E-42)
            androidx.appcompat.view.menu.MenuItemImpl.a(r1, r7, r4, r6)
            int r4 = androidx.appcompat.R.string.abc_menu_alt_shortcut_label
            java.lang.String r4 = r5.getString(r4)
            r7 = 2
            androidx.appcompat.view.menu.MenuItemImpl.a(r1, r7, r4, r6)
            int r4 = androidx.appcompat.R.string.abc_menu_shift_shortcut_label
            java.lang.String r4 = r5.getString(r4)
            androidx.appcompat.view.menu.MenuItemImpl.a(r1, r10, r4, r6)
            int r10 = androidx.appcompat.R.string.abc_menu_sym_shortcut_label
            java.lang.String r10 = r5.getString(r10)
            r4 = 4
            androidx.appcompat.view.menu.MenuItemImpl.a(r1, r4, r10, r6)
            int r10 = androidx.appcompat.R.string.abc_menu_function_shortcut_label
            java.lang.String r10 = r5.getString(r10)
            androidx.appcompat.view.menu.MenuItemImpl.a(r1, r0, r10, r6)
            if (r3 == r0) goto Lcf
            r10 = 10
            if (r3 == r10) goto Lc5
            r10 = 32
            if (r3 == r10) goto Lbb
            r6.append(r3)
            goto Ld8
        Lbb:
            int r10 = androidx.appcompat.R.string.abc_menu_space_shortcut_label
            java.lang.String r10 = r5.getString(r10)
            r6.append(r10)
            goto Ld8
        Lc5:
            int r10 = androidx.appcompat.R.string.abc_menu_enter_shortcut_label
            java.lang.String r10 = r5.getString(r10)
            r6.append(r10)
            goto Ld8
        Lcf:
            int r10 = androidx.appcompat.R.string.abc_menu_delete_shortcut_label
            java.lang.String r10 = r5.getString(r10)
            r6.append(r10)
        Ld8:
            java.lang.String r10 = r6.toString()
        Ldc:
            r9.setText(r10)
        Ldf:
            android.widget.TextView r9 = r8.f
            int r9 = r9.getVisibility()
            if (r9 == r2) goto Lec
            android.widget.TextView r9 = r8.f
            r9.setVisibility(r2)
        Lec:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ListMenuItemView.setShortcut(boolean, char):void");
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        boolean z = this.f241a.shouldShowIcon() || this.q;
        if (z || this.m) {
            ImageView imageView = this.f242b;
            if (imageView == null && drawable == null && !this.m) {
                return;
            }
            if (imageView == null) {
                if (this.p == null) {
                    this.p = LayoutInflater.from(getContext());
                }
                ImageView imageView2 = (ImageView) this.p.inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f242b = imageView2;
                LinearLayout linearLayout = this.i;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable != null || this.m) {
                ImageView imageView3 = this.f242b;
                if (!z) {
                    drawable = null;
                }
                imageView3.setImageDrawable(drawable);
                if (this.f242b.getVisibility() != 0) {
                    this.f242b.setVisibility(0);
                    return;
                }
                return;
            }
            this.f242b.setVisibility(8);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f242b != null && this.m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f242b.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return this.q;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.h;
        if (imageView != null) {
            imageView.setVisibility((this.o || !z) ? 8 : 0);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.h.getLayoutParams();
        rect.top = this.h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }
}
