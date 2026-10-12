package com.google.zxing.client.android;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.camera.CameraManager;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ViewfinderView extends View {
    public static final int[] k = {0, 64, 128, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE, 255, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_PAUSE, 128, 64};

    /* renamed from: a, reason: collision with root package name */
    public CameraManager f5113a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f5114b;
    public Bitmap c;
    public final int d;
    public final int e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f5115g;
    public int h;
    public ArrayList i;
    public ArrayList j;

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5114b = new Paint(1);
        this.d = 1610612736;
        this.e = -1;
        this.f = -3407872;
        this.f5115g = -1063662592;
        this.h = 0;
        this.i = new ArrayList(5);
        this.j = null;
    }

    public void setCameraManager(CameraManager cameraManager) {
        this.f5113a = cameraManager;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Rect framingRect;
        CameraManager cameraManager = this.f5113a;
        if (cameraManager == null || (framingRect = cameraManager.getFramingRect()) == null) {
            return;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        this.f5114b.setColor(this.c != null ? this.e : this.d);
        float f = width;
        canvas.drawRect(0.0f, 0.0f, f, framingRect.top, this.f5114b);
        canvas.drawRect(0.0f, framingRect.top, framingRect.left, framingRect.bottom + 1, this.f5114b);
        canvas.drawRect(framingRect.right + 1, framingRect.top, f, framingRect.bottom + 1, this.f5114b);
        canvas.drawRect(0.0f, framingRect.bottom + 1, f, height, this.f5114b);
        if (this.c != null) {
            this.f5114b.setAlpha(ComponentConstants.TEXTBOX_PREFERRED_WIDTH);
            canvas.drawBitmap(this.c, (Rect) null, framingRect, this.f5114b);
            return;
        }
        this.f5114b.setColor(this.f);
        this.f5114b.setAlpha(k[this.h]);
        this.h = (this.h + 1) % 8;
        int iHeight = (framingRect.height() / 2) + framingRect.top;
        canvas.drawRect(framingRect.left + 2, iHeight - 1, framingRect.right - 1, iHeight + 2, this.f5114b);
        Rect framingRectInPreview = this.f5113a.getFramingRectInPreview();
        float fWidth = framingRect.width() / framingRectInPreview.width();
        float fHeight = framingRect.height() / framingRectInPreview.height();
        ArrayList arrayList = this.i;
        ArrayList arrayList2 = this.j;
        int i = framingRect.left;
        int i2 = framingRect.top;
        if (arrayList.isEmpty()) {
            this.j = null;
        } else {
            this.i = new ArrayList(5);
            this.j = arrayList;
            this.f5114b.setAlpha(ComponentConstants.TEXTBOX_PREFERRED_WIDTH);
            this.f5114b.setColor(this.f5115g);
            synchronized (arrayList) {
                try {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ResultPoint resultPoint = (ResultPoint) it.next();
                        canvas.drawCircle(((int) (resultPoint.getX() * fWidth)) + i, ((int) (resultPoint.getY() * fHeight)) + i2, 6.0f, this.f5114b);
                    }
                } finally {
                }
            }
        }
        if (arrayList2 != null) {
            this.f5114b.setAlpha(80);
            this.f5114b.setColor(this.f5115g);
            synchronized (arrayList2) {
                try {
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ResultPoint resultPoint2 = (ResultPoint) it2.next();
                        canvas.drawCircle(((int) (resultPoint2.getX() * fWidth)) + i, ((int) (resultPoint2.getY() * fHeight)) + i2, 3.0f, this.f5114b);
                    }
                } finally {
                }
            }
        }
        postInvalidateDelayed(80L, framingRect.left - 6, framingRect.top - 6, framingRect.right + 6, framingRect.bottom + 6);
    }

    public void drawViewfinder() {
        Bitmap bitmap = this.c;
        this.c = null;
        if (bitmap != null) {
            bitmap.recycle();
        }
        invalidate();
    }

    public void drawResultBitmap(Bitmap bitmap) {
        this.c = bitmap;
        invalidate();
    }

    public void addPossibleResultPoint(ResultPoint resultPoint) {
        ArrayList arrayList = this.i;
        synchronized (arrayList) {
            try {
                arrayList.add(resultPoint);
                int size = arrayList.size();
                if (size > 20) {
                    arrayList.subList(0, size - 10).clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
