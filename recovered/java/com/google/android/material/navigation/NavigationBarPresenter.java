package com.google.android.material.navigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.MenuItem;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.internal.ParcelableSparseArray;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class NavigationBarPresenter implements MenuPresenter {

    /* renamed from: a, reason: collision with root package name */
    public NavigationBarMenuView f3110a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3111b = false;
    public int c;

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(@Nullable MenuBuilder menuBuilder, @Nullable MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(@Nullable MenuBuilder menuBuilder, @Nullable MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(@Nullable MenuBuilder menuBuilder, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(@Nullable SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(@Nullable MenuPresenter.Callback callback) {
    }

    public void setMenuView(@NonNull NavigationBarMenuView navigationBarMenuView) {
        this.f3110a = navigationBarMenuView;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f3110a.initialize(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @Nullable
    public MenuView getMenuView(@Nullable ViewGroup viewGroup) {
        return this.f3110a;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        if (this.f3111b) {
            return;
        }
        if (z) {
            this.f3110a.buildMenuView();
        } else {
            this.f3110a.updateMenuView();
        }
    }

    public void setId(int i) {
        this.c = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    public Parcelable onSaveInstanceState() {
        a aVar = new a();
        aVar.f3112a = this.f3110a.getSelectedItemId();
        aVar.f3113b = BadgeUtils.createParcelableBadgeStates(this.f3110a.q);
        return aVar;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(@NonNull Parcelable parcelable) {
        SparseArray sparseArray;
        if (parcelable instanceof a) {
            NavigationBarMenuView navigationBarMenuView = this.f3110a;
            a aVar = (a) parcelable;
            int i = aVar.f3112a;
            int size = navigationBarMenuView.B.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                MenuItem item = navigationBarMenuView.B.getItem(i2);
                if (i == item.getItemId()) {
                    navigationBarMenuView.f3108g = i;
                    navigationBarMenuView.h = i2;
                    item.setChecked(true);
                    break;
                }
                i2++;
            }
            SparseArray<BadgeDrawable> sparseArrayCreateBadgeDrawablesFromSavedStates = BadgeUtils.createBadgeDrawablesFromSavedStates(this.f3110a.getContext(), aVar.f3113b);
            NavigationBarMenuView navigationBarMenuView2 = this.f3110a;
            navigationBarMenuView2.getClass();
            int i3 = 0;
            while (true) {
                int size2 = sparseArrayCreateBadgeDrawablesFromSavedStates.size();
                sparseArray = navigationBarMenuView2.q;
                if (i3 >= size2) {
                    break;
                }
                int iKeyAt = sparseArrayCreateBadgeDrawablesFromSavedStates.keyAt(i3);
                if (sparseArray.indexOfKey(iKeyAt) < 0) {
                    sparseArray.append(iKeyAt, sparseArrayCreateBadgeDrawablesFromSavedStates.get(iKeyAt));
                }
                i3++;
            }
            NavigationBarItemView[] navigationBarItemViewArr = navigationBarMenuView2.f;
            if (navigationBarItemViewArr != null) {
                for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                    navigationBarItemView.c((BadgeDrawable) sparseArray.get(navigationBarItemView.getId()));
                }
            }
        }
    }

    public void setUpdateSuspended(boolean z) {
        this.f3111b = z;
    }

    public static class a implements Parcelable {
        public static final Parcelable.Creator<a> CREATOR = new C0039a();

        /* renamed from: a, reason: collision with root package name */
        public int f3112a;

        /* renamed from: b, reason: collision with root package name */
        public ParcelableSparseArray f3113b;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.f3112a);
            parcel.writeParcelable(this.f3113b, 0);
        }

        /* renamed from: com.google.android.material.navigation.NavigationBarPresenter$a$a, reason: collision with other inner class name */
        public class C0039a implements Parcelable.Creator<a> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public a createFromParcel(@NonNull Parcel parcel) {
                a aVar = new a();
                aVar.f3112a = parcel.readInt();
                aVar.f3113b = (ParcelableSparseArray) parcel.readParcelable(a.class.getClassLoader());
                return aVar;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public a[] newArray(int i) {
                return new a[i];
            }
        }
    }
}
