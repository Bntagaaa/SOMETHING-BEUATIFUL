package com.google.appinventor.components.runtime.view;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.util.ViewUtil;
import org.osmdroid.views.MapView;

/* loaded from: classes.dex */
public class ZoomControlView extends LinearLayout {
    private float density;
    private final MapView parent;
    private final Button zoomIn;
    private final Button zoomOut;

    public ZoomControlView(MapView mapView) {
        super(mapView.getContext());
        this.density = mapView.getContext().getResources().getDisplayMetrics().density;
        this.parent = mapView;
        setOrientation(1);
        Button button = new Button(mapView.getContext());
        this.zoomIn = button;
        Button button2 = new Button(mapView.getContext());
        this.zoomOut = button2;
        initButton(button, "+");
        initButton(button2, "−");
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.view.ZoomControlView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZoomControlView.this.parent.getController().zoomIn();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.view.ZoomControlView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ZoomControlView.this.parent.getController().zoomOut();
            }
        });
        ViewUtil.setBackgroundDrawable(button, getZoomInDrawable(this.density));
        ViewUtil.setBackgroundDrawable(button2, getZoomOutDrawable(this.density));
        int[][] iArr = {new int[]{-16842910}, new int[]{R.attr.state_enabled}};
        int[] iArr2 = {Component.COLOR_LTGRAY, -16777216};
        button.setTextColor(new ColorStateList(iArr, iArr2));
        button2.setTextColor(new ColorStateList(iArr, iArr2));
        addView(button);
        addView(button2);
        float f = this.density;
        setPadding((int) (f * 12.0f), (int) (f * 12.0f), 0, 0);
        updateButtons();
    }

    public final void updateButtons() {
        this.zoomIn.setEnabled(this.parent.canZoomIn());
        this.zoomOut.setEnabled(this.parent.canZoomOut());
    }

    private void initButton(Button button, String str) {
        button.setText(str);
        button.setTextSize(22.0f);
        button.setPadding(0, 0, 0, 0);
        button.setWidth((int) (this.density * 30.0f));
        button.setHeight((int) (this.density * 30.0f));
        button.setSingleLine();
        button.setGravity(17);
    }

    private static Drawable getZoomInDrawable(float f) {
        float f2 = (int) (f * 4.0f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f2, f2, f2, f2, 0.0f, 0.0f, 0.0f, 0.0f}, null, null));
        shapeDrawable.getPaint().setColor(-1);
        return shapeDrawable;
    }

    private static Drawable getZoomOutDrawable(float f) {
        float f2 = (int) (f * 4.0f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{0.0f, 0.0f, 0.0f, 0.0f, f2, f2, f2, f2}, null, null));
        shapeDrawable.getPaint().setColor(-1);
        return shapeDrawable;
    }
}
