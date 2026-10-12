package com.google.appinventor.components.runtime.util;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.widget.ImageViewCompat;
import java.util.LinkedList;

/* loaded from: classes.dex */
public final class ImageViewUtil {
    private ImageViewUtil() {
    }

    public static void setMenuButtonColor(Activity activity, int i) {
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{i});
        ImageView imageViewFindOverflowMenuView = findOverflowMenuView(activity);
        if (imageViewFindOverflowMenuView != null) {
            ImageViewCompat.setImageTintMode(imageViewFindOverflowMenuView, PorterDuff.Mode.MULTIPLY);
            ImageViewCompat.setImageTintList(imageViewFindOverflowMenuView, colorStateList);
        }
    }

    private static ImageView findOverflowMenuView(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        LinkedList linkedList = new LinkedList();
        linkedList.add(viewGroup);
        while (linkedList.size() > 0) {
            ViewGroup viewGroup2 = (ViewGroup) linkedList.poll();
            for (int i = 0; i < viewGroup2.getChildCount(); i++) {
                View childAt = viewGroup2.getChildAt(i);
                if (childAt instanceof ImageView) {
                    return (ImageView) childAt;
                }
                if (childAt instanceof ViewGroup) {
                    linkedList.add((ViewGroup) childAt);
                }
            }
        }
        return null;
    }
}
