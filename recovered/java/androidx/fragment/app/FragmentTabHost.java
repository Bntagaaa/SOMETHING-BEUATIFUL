package androidx.fragment.app;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes.dex */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1644a;

    /* renamed from: b, reason: collision with root package name */
    public FrameLayout f1645b;
    public Context c;
    public FragmentManager d;
    public int e;
    public TabHost.OnTabChangeListener f;

    /* renamed from: g, reason: collision with root package name */
    public c f1646g;
    public boolean h;

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final String f1649a;

        /* renamed from: b, reason: collision with root package name */
        public final Class f1650b;
        public final Bundle c;
        public Fragment d;

        public c(Bundle bundle, String str, Class cls) {
            this.f1649a = str;
            this.f1650b = cls;
            this.c = bundle;
        }
    }

    public static class a implements TabHost.TabContentFactory {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1647a;

        public a(Context context) {
            this.f1647a = context;
        }

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.f1647a);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    public static class b extends View.BaseSavedState {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public String f1648a;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f1648a);
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder("FragmentTabHost.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" curTab=");
            return _COROUTINE.a.m(sb, this.f1648a, "}");
        }

        public class a implements Parcelable.Creator<b> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public b createFromParcel(Parcel parcel) {
                b bVar = new b(parcel);
                bVar.f1648a = parcel.readString();
                return bVar;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public b[] newArray(int i) {
                return new b[i];
            }
        }
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context) {
        super(context, null);
        this.f1644a = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.inflatedId}, 0, 0);
        this.e = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1644a = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        this.e = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    public final void c(Context context) {
        if (findViewById(R.id.tabs) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(R.id.tabs);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(R.id.tabcontent);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f1645b = frameLayout2;
            frameLayout2.setId(this.e);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        c(context);
        super.setup();
        this.c = context;
        this.d = fragmentManager;
        b();
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager, int i) {
        c(context);
        super.setup();
        this.c = context;
        this.d = fragmentManager;
        this.e = i;
        b();
        this.f1645b.setId(i);
        if (getId() == -1) {
            setId(R.id.tabhost);
        }
    }

    public final void b() {
        if (this.f1645b == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.e);
            this.f1645b = frameLayout;
            if (frameLayout != null) {
                return;
            }
            throw new IllegalStateException("No tab content FrameLayout found for id " + this.e);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(@Nullable TabHost.OnTabChangeListener onTabChangeListener) {
        this.f = onTabChangeListener;
    }

    @Deprecated
    public void addTab(@NonNull TabHost.TabSpec tabSpec, @NonNull Class<?> cls, @Nullable Bundle bundle) {
        tabSpec.setContent(new a(this.c));
        String tag = tabSpec.getTag();
        c cVar = new c(bundle, tag, cls);
        if (this.h) {
            Fragment fragmentFindFragmentByTag = this.d.findFragmentByTag(tag);
            cVar.d = fragmentFindFragmentByTag;
            if (fragmentFindFragmentByTag != null && !fragmentFindFragmentByTag.isDetached()) {
                FragmentTransaction fragmentTransactionBeginTransaction = this.d.beginTransaction();
                fragmentTransactionBeginTransaction.detach(cVar.d);
                fragmentTransactionBeginTransaction.commit();
            }
        }
        this.f1644a.add(cVar);
        addTab(tabSpec);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        ArrayList arrayList = this.f1644a;
        int size = arrayList.size();
        FragmentTransaction fragmentTransactionBeginTransaction = null;
        for (int i = 0; i < size; i++) {
            c cVar = (c) arrayList.get(i);
            Fragment fragmentFindFragmentByTag = this.d.findFragmentByTag(cVar.f1649a);
            cVar.d = fragmentFindFragmentByTag;
            if (fragmentFindFragmentByTag != null && !fragmentFindFragmentByTag.isDetached()) {
                if (cVar.f1649a.equals(currentTabTag)) {
                    this.f1646g = cVar;
                } else {
                    if (fragmentTransactionBeginTransaction == null) {
                        fragmentTransactionBeginTransaction = this.d.beginTransaction();
                    }
                    fragmentTransactionBeginTransaction.detach(cVar.d);
                }
            }
        }
        this.h = true;
        FragmentTransaction fragmentTransactionA = a(fragmentTransactionBeginTransaction, currentTabTag);
        if (fragmentTransactionA != null) {
            fragmentTransactionA.commit();
            this.d.executePendingTransactions();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.h = false;
    }

    @Override // android.view.View
    @NonNull
    @Deprecated
    public Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f1648a = getCurrentTabTag();
        return bVar;
    }

    @Override // android.view.View
    @Deprecated
    public void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.getSuperState());
        setCurrentTabByTag(bVar.f1648a);
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(@Nullable String str) {
        FragmentTransaction fragmentTransactionA;
        if (this.h && (fragmentTransactionA = a(null, str)) != null) {
            fragmentTransactionA.commit();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    public final FragmentTransaction a(FragmentTransaction fragmentTransaction, String str) {
        c cVar;
        Fragment fragment;
        ArrayList arrayList = this.f1644a;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                cVar = null;
                break;
            }
            cVar = (c) arrayList.get(i);
            if (cVar.f1649a.equals(str)) {
                break;
            }
            i++;
        }
        if (this.f1646g != cVar) {
            if (fragmentTransaction == null) {
                fragmentTransaction = this.d.beginTransaction();
            }
            c cVar2 = this.f1646g;
            if (cVar2 != null && (fragment = cVar2.d) != null) {
                fragmentTransaction.detach(fragment);
            }
            if (cVar != null) {
                Fragment fragment2 = cVar.d;
                if (fragment2 == null) {
                    Fragment fragmentInstantiate = this.d.getFragmentFactory().instantiate(this.c.getClassLoader(), cVar.f1650b.getName());
                    cVar.d = fragmentInstantiate;
                    fragmentInstantiate.setArguments(cVar.c);
                    fragmentTransaction.add(this.e, cVar.d, cVar.f1649a);
                } else {
                    fragmentTransaction.attach(fragment2);
                }
            }
            this.f1646g = cVar;
        }
        return fragmentTransaction;
    }
}
