package com.google.android.material.color;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
final class h {
    private h() {
    }

    public static void a(Context context, int i) {
        View viewPeekDecorView;
        Context context2;
        context.getTheme().applyStyle(i, true);
        if (context instanceof Activity) {
            Window window = ((Activity) context).getWindow();
            Resources.Theme theme = (window == null || (viewPeekDecorView = window.peekDecorView()) == null || (context2 = viewPeekDecorView.getContext()) == null) ? null : context2.getTheme();
            if (theme != null) {
                theme.applyStyle(i, true);
            }
        }
    }
}
