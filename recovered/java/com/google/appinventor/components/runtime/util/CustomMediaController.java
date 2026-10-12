package com.google.appinventor.components.runtime.util;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.MediaController;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;

/* loaded from: classes.dex */
public class CustomMediaController extends MediaController implements View.OnTouchListener {
    private View mAnchorView;
    private int mShowTime;

    public CustomMediaController(Context context) {
        super(context);
        this.mShowTime = PathInterpolatorCompat.MAX_NUM_POINTS;
    }

    @Override // android.widget.MediaController
    public void show(int i) {
        setVisibility(0);
        super.show(i);
    }

    @Override // android.widget.MediaController
    public void show() {
        setVisibility(0);
        super.show();
    }

    public boolean addTo(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams) {
        ViewParent parent = getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(this);
            viewGroup.addView(this, layoutParams);
            return true;
        }
        Log.e("CustomMediaController.addTo", "MediaController not available in fullscreen.");
        return false;
    }

    @Override // android.widget.MediaController
    public void setAnchorView(View view) {
        this.mAnchorView = view;
        view.setOnTouchListener(this);
        super.setAnchorView(view);
    }

    @Override // android.widget.MediaController
    public void hide() {
        super.hide();
        setVisibility(4);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view != this.mAnchorView) {
            return false;
        }
        show(this.mShowTime);
        return false;
    }
}
