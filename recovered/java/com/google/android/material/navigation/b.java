package com.google.android.material.navigation;

import android.R;
import android.app.Activity;
import android.graphics.Color;
import android.view.ViewTreeObserver;
import com.google.android.material.internal.ContextUtils;

/* loaded from: classes.dex */
class b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NavigationView f3123a;

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        NavigationView navigationView = this.f3123a;
        navigationView.getLocationOnScreen(navigationView.j);
        boolean z = navigationView.j[1] == 0;
        navigationView.f3119g.setBehindStatusBar(z);
        navigationView.setDrawTopInsetForeground(z && navigationView.isTopInsetScrimEnabled());
        Activity activity = ContextUtils.getActivity(navigationView.getContext());
        if (activity != null) {
            navigationView.setDrawBottomInsetForeground((activity.findViewById(R.id.content).getHeight() == navigationView.getHeight()) && (Color.alpha(activity.getWindow().getNavigationBarColor()) != 0) && navigationView.isBottomInsetScrimEnabled());
        }
    }

    public b(NavigationView navigationView) {
        this.f3123a = navigationView;
    }
}
