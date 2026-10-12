package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;

/* loaded from: classes.dex */
public class ImageLayer extends BaseLayer {
    public final Rect A;
    public final Rect B;
    public ValueCallbackKeyframeAnimation C;
    public final LPaint z;

    public ImageLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.z = new LPaint(3);
        this.A = new Rect();
        this.B = new Rect();
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        if (this.n.getImageAsset(this.o.f2649g) != null) {
            rectF.set(0.0f, 0.0f, Utils.dpScale() * r3.getWidth(), Utils.dpScale() * r3.getHeight());
            this.m.mapRect(rectF);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.addValueCallback(t, lottieValueCallback);
        if (t == LottieProperty.COLOR_FILTER) {
            if (lottieValueCallback == null) {
                this.C = null;
            } else {
                this.C = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public void drawLayer(@NonNull Canvas canvas, Matrix matrix, int i) {
        Bitmap imageAsset = this.n.getImageAsset(this.o.f2649g);
        if (imageAsset == null || imageAsset.isRecycled()) {
            return;
        }
        float fDpScale = Utils.dpScale();
        LPaint lPaint = this.z;
        lPaint.setAlpha(i);
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.C;
        if (valueCallbackKeyframeAnimation != null) {
            lPaint.setColorFilter((ColorFilter) valueCallbackKeyframeAnimation.getValue());
        }
        canvas.save();
        canvas.concat(matrix);
        int width = imageAsset.getWidth();
        int height = imageAsset.getHeight();
        Rect rect = this.A;
        rect.set(0, 0, width, height);
        int width2 = (int) (imageAsset.getWidth() * fDpScale);
        int height2 = (int) (imageAsset.getHeight() * fDpScale);
        Rect rect2 = this.B;
        rect2.set(0, 0, width2, height2);
        canvas.drawBitmap(imageAsset, rect, rect2, lPaint);
        canvas.restore();
    }
}
