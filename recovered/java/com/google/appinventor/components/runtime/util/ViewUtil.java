package com.google.appinventor.components.runtime.util;

import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TableRow;

/* loaded from: classes.dex */
public final class ViewUtil {
    private ViewUtil() {
    }

    private static int calculatePixels(View view, int i) {
        return (int) (view.getContext().getResources().getDisplayMetrics().density * i);
    }

    public static void setChildWidthForHorizontalLayout(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (i == -2) {
                layoutParams2.width = 0;
                layoutParams2.weight = 1.0f;
            } else if (i == -1) {
                layoutParams2.width = -2;
                layoutParams2.weight = 0.0f;
            } else {
                layoutParams2.width = calculatePixels(view, i);
                layoutParams2.weight = 0.0f;
            }
            view.requestLayout();
            return;
        }
        Log.e("ViewUtil", "The view does not have linear layout parameters");
    }

    public static void setChildHeightForHorizontalLayout(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (i == -2) {
                layoutParams2.height = -1;
            } else if (i == -1) {
                layoutParams2.height = -2;
            } else {
                layoutParams2.height = calculatePixels(view, i);
            }
            view.requestLayout();
            return;
        }
        Log.e("ViewUtil", "The view does not have linear layout parameters");
    }

    public static void setChildWidthForVerticalLayout(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (i == -2) {
                layoutParams2.width = -1;
            } else if (i == -1) {
                layoutParams2.width = -2;
            } else {
                layoutParams2.width = calculatePixels(view, i);
            }
            view.requestLayout();
            return;
        }
        Log.e("ViewUtil", "The view does not have linear layout parameters");
    }

    public static void setChildHeightForVerticalLayout(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (i == -2) {
                layoutParams2.height = 0;
                layoutParams2.weight = 1.0f;
            } else if (i == -1) {
                layoutParams2.height = -2;
                layoutParams2.weight = 0.0f;
            } else {
                layoutParams2.height = calculatePixels(view, i);
                layoutParams2.weight = 0.0f;
            }
            view.requestLayout();
            return;
        }
        Log.e("ViewUtil", "The view does not have linear layout parameters");
    }

    public static void setChildWidthForTableLayout(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof TableRow.LayoutParams) {
            TableRow.LayoutParams layoutParams2 = (TableRow.LayoutParams) layoutParams;
            if (i == -2) {
                layoutParams2.width = -1;
            } else if (i == -1) {
                layoutParams2.width = -2;
            } else {
                layoutParams2.width = calculatePixels(view, i);
            }
            view.requestLayout();
            return;
        }
        Log.e("ViewUtil", "The view does not have table layout parameters");
    }

    public static void setChildHeightForTableLayout(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof TableRow.LayoutParams) {
            TableRow.LayoutParams layoutParams2 = (TableRow.LayoutParams) layoutParams;
            if (i == -2) {
                layoutParams2.height = -1;
            } else if (i == -1) {
                layoutParams2.height = -2;
            } else {
                layoutParams2.height = calculatePixels(view, i);
            }
            view.requestLayout();
            return;
        }
        Log.e("ViewUtil", "The view does not have table layout parameters");
    }

    public static void setBackgroundImage(View view, Drawable drawable) {
        view.setBackgroundDrawable(drawable);
        view.requestLayout();
    }

    public static void setImage(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (drawable != null) {
            imageView.setAdjustViewBounds(true);
        }
        imageView.requestLayout();
    }

    public static void setBackgroundDrawable(View view, Drawable drawable) {
        view.setBackgroundDrawable(drawable);
        view.invalidate();
    }
}
