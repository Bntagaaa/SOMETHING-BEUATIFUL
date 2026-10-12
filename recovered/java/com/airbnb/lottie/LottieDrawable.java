package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.airbnb.lottie.manager.FontAssetManager;
import com.airbnb.lottie.manager.ImageAssetManager;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.airbnb.lottie.parser.LayerParser;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.LottieValueAnimator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.SimpleLottieValueCallback;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    public static final int INFINITE = -1;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f2465a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public LottieComposition f2466b;
    public final LottieValueAnimator c;
    public float d;
    public boolean e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2467g;
    public final ArrayList h;
    public final ValueAnimator.AnimatorUpdateListener i;
    public ImageAssetManager j;
    public String k;
    public ImageAssetDelegate l;
    public FontAssetManager m;
    public FontAssetDelegate n;
    public TextDelegate o;
    public boolean p;
    public CompositionLayer q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;

    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatMode {
    }

    public interface r {
        void run(LottieComposition lottieComposition);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public class i implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            LottieDrawable lottieDrawable = LottieDrawable.this;
            CompositionLayer compositionLayer = lottieDrawable.q;
            if (compositionLayer != null) {
                compositionLayer.setProgress(lottieDrawable.c.getAnimatedValueAbsolute());
            }
        }

        public i() {
        }
    }

    public LottieDrawable() {
        LottieValueAnimator lottieValueAnimator = new LottieValueAnimator();
        this.c = lottieValueAnimator;
        this.d = 1.0f;
        this.e = true;
        this.f = false;
        this.f2467g = false;
        this.h = new ArrayList();
        i iVar = new i();
        this.i = iVar;
        this.r = 255;
        this.v = true;
        this.w = false;
        lottieValueAnimator.addUpdateListener(iVar);
    }

    public boolean hasMasks() {
        CompositionLayer compositionLayer = this.q;
        return compositionLayer != null && compositionLayer.hasMasks();
    }

    public boolean hasMatte() {
        CompositionLayer compositionLayer = this.q;
        return compositionLayer != null && compositionLayer.hasMatte();
    }

    public boolean enableMergePathsForKitKatAndAbove() {
        return this.p;
    }

    public void enableMergePathsForKitKatAndAbove(boolean z) {
        if (this.p == z) {
            return;
        }
        this.p = z;
        if (this.f2466b != null) {
            b();
        }
    }

    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.p;
    }

    public void setImagesAssetsFolder(@Nullable String str) {
        this.k = str;
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.k;
    }

    public boolean setComposition(LottieComposition lottieComposition) {
        if (this.f2466b == lottieComposition) {
            return false;
        }
        this.w = false;
        clearComposition();
        this.f2466b = lottieComposition;
        b();
        LottieValueAnimator lottieValueAnimator = this.c;
        lottieValueAnimator.setComposition(lottieComposition);
        setProgress(lottieValueAnimator.getAnimatedFraction());
        setScale(this.d);
        ArrayList arrayList = this.h;
        Iterator it = new ArrayList(arrayList).iterator();
        while (it.hasNext()) {
            r rVar = (r) it.next();
            if (rVar != null) {
                rVar.run(lottieComposition);
            }
            it.remove();
        }
        arrayList.clear();
        lottieComposition.setPerformanceTrackingEnabled(this.s);
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof ImageView)) {
            return true;
        }
        ImageView imageView = (ImageView) callback;
        imageView.setImageDrawable(null);
        imageView.setImageDrawable(this);
        return true;
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        this.s = z;
        LottieComposition lottieComposition = this.f2466b;
        if (lottieComposition != null) {
            lottieComposition.setPerformanceTrackingEnabled(z);
        }
    }

    public void setOutlineMasksAndMattes(boolean z) {
        if (this.t == z) {
            return;
        }
        this.t = z;
        CompositionLayer compositionLayer = this.q;
        if (compositionLayer != null) {
            compositionLayer.setOutlineMasksAndMattes(z);
        }
    }

    @Nullable
    public PerformanceTracker getPerformanceTracker() {
        LottieComposition lottieComposition = this.f2466b;
        if (lottieComposition != null) {
            return lottieComposition.getPerformanceTracker();
        }
        return null;
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.u = z;
    }

    public void disableExtraScaleModeInFitXY() {
        this.v = false;
    }

    public boolean isApplyingOpacityToLayersEnabled() {
        return this.u;
    }

    public final void b() {
        CompositionLayer compositionLayer = new CompositionLayer(this, LayerParser.parse(this.f2466b), this.f2466b.getLayers(), this.f2466b);
        this.q = compositionLayer;
        if (this.t) {
            compositionLayer.setOutlineMasksAndMattes(true);
        }
    }

    public void clearComposition() {
        LottieValueAnimator lottieValueAnimator = this.c;
        if (lottieValueAnimator.isRunning()) {
            lottieValueAnimator.cancel();
        }
        this.f2466b = null;
        this.q = null;
        this.j = null;
        lottieValueAnimator.clearComposition();
        invalidateSelf();
    }

    public void setSafeMode(boolean z) {
        this.f2467g = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.w) {
            return;
        }
        this.w = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i2) {
        this.r = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.r;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        Logger.warning("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.w = false;
        L.beginSection("Drawable#draw");
        if (this.f2467g) {
            try {
                c(canvas);
            } catch (Throwable th) {
                Logger.error("Lottie crashed in draw!", th);
            }
        } else {
            c(canvas);
        }
        L.endSection("Drawable#draw");
    }

    public final void c(Canvas canvas) {
        float f2;
        float f3;
        LottieComposition lottieComposition = this.f2466b;
        Matrix matrix = this.f2465a;
        int iSave = -1;
        if (lottieComposition != null && !getBounds().isEmpty()) {
            Rect bounds = getBounds();
            float fWidth = bounds.width() / bounds.height();
            Rect bounds2 = lottieComposition.getBounds();
            if (fWidth != bounds2.width() / bounds2.height()) {
                if (this.q == null) {
                    return;
                }
                Rect bounds3 = getBounds();
                float fWidth2 = bounds3.width() / this.f2466b.getBounds().width();
                float fHeight = bounds3.height() / this.f2466b.getBounds().height();
                if (this.v) {
                    float fMin = Math.min(fWidth2, fHeight);
                    if (fMin < 1.0f) {
                        f3 = 1.0f / fMin;
                        fWidth2 /= f3;
                        fHeight /= f3;
                    } else {
                        f3 = 1.0f;
                    }
                    if (f3 > 1.0f) {
                        iSave = canvas.save();
                        float fWidth3 = bounds3.width() / 2.0f;
                        float fHeight2 = bounds3.height() / 2.0f;
                        float f4 = fWidth3 * fMin;
                        float f5 = fMin * fHeight2;
                        canvas.translate(fWidth3 - f4, fHeight2 - f5);
                        canvas.scale(f3, f3, f4, f5);
                    }
                }
                matrix.reset();
                matrix.preScale(fWidth2, fHeight);
                this.q.draw(canvas, matrix, this.r);
                if (iSave > 0) {
                    canvas.restoreToCount(iSave);
                    return;
                }
                return;
            }
        }
        if (this.q == null) {
            return;
        }
        float f6 = this.d;
        float fMin2 = Math.min(canvas.getWidth() / this.f2466b.getBounds().width(), canvas.getHeight() / this.f2466b.getBounds().height());
        if (f6 > fMin2) {
            f2 = this.d / fMin2;
        } else {
            fMin2 = f6;
            f2 = 1.0f;
        }
        if (f2 > 1.0f) {
            iSave = canvas.save();
            float fWidth4 = this.f2466b.getBounds().width() / 2.0f;
            float fHeight3 = this.f2466b.getBounds().height() / 2.0f;
            float f7 = fWidth4 * fMin2;
            float f8 = fHeight3 * fMin2;
            canvas.translate((getScale() * fWidth4) - f7, (getScale() * fHeight3) - f8);
            canvas.scale(f2, f2, f7, f8);
        }
        matrix.reset();
        matrix.preScale(fMin2, fMin2);
        this.q.draw(canvas, matrix, this.r);
        if (iSave > 0) {
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void start() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View) || ((View) callback).isInEditMode()) {
            return;
        }
        playAnimation();
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void stop() {
        endAnimation();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return isAnimating();
    }

    public class j implements r {
        public j() {
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.playAnimation();
        }
    }

    @MainThread
    public void playAnimation() {
        if (this.q == null) {
            this.h.add(new j());
            return;
        }
        boolean zA = a();
        LottieValueAnimator lottieValueAnimator = this.c;
        if (zA || getRepeatCount() == 0) {
            lottieValueAnimator.playAnimation();
        }
        if (a()) {
            return;
        }
        setFrame((int) (getSpeed() < 0.0f ? getMinFrame() : getMaxFrame()));
        lottieValueAnimator.endAnimation();
    }

    @MainThread
    public void endAnimation() {
        this.h.clear();
        this.c.endAnimation();
    }

    public class k implements r {
        public k() {
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.resumeAnimation();
        }
    }

    @MainThread
    public void resumeAnimation() {
        if (this.q == null) {
            this.h.add(new k());
            return;
        }
        boolean zA = a();
        LottieValueAnimator lottieValueAnimator = this.c;
        if (zA || getRepeatCount() == 0) {
            lottieValueAnimator.resumeAnimation();
        }
        if (a()) {
            return;
        }
        setFrame((int) (getSpeed() < 0.0f ? getMinFrame() : getMaxFrame()));
        lottieValueAnimator.endAnimation();
    }

    public class l implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2485a;

        public l(int i) {
            this.f2485a = i;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setMinFrame(this.f2485a);
        }
    }

    public void setMinFrame(int i2) {
        if (this.f2466b == null) {
            this.h.add(new l(i2));
        } else {
            this.c.setMinFrame(i2);
        }
    }

    public float getMinFrame() {
        return this.c.getMinFrame();
    }

    public class m implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f2487a;

        public m(float f) {
            this.f2487a = f;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setMinProgress(this.f2487a);
        }
    }

    public void setMinProgress(float f2) {
        LottieComposition lottieComposition = this.f2466b;
        if (lottieComposition == null) {
            this.h.add(new m(f2));
        } else {
            setMinFrame((int) MiscUtils.lerp(lottieComposition.getStartFrame(), this.f2466b.getEndFrame(), f2));
        }
    }

    public class n implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2489a;

        public n(int i) {
            this.f2489a = i;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setMaxFrame(this.f2489a);
        }
    }

    public void setMaxFrame(int i2) {
        if (this.f2466b == null) {
            this.h.add(new n(i2));
        } else {
            this.c.setMaxFrame(i2 + 0.99f);
        }
    }

    public float getMaxFrame() {
        return this.c.getMaxFrame();
    }

    public class o implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f2491a;

        public o(float f) {
            this.f2491a = f;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setMaxProgress(this.f2491a);
        }
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f2) {
        LottieComposition lottieComposition = this.f2466b;
        if (lottieComposition == null) {
            this.h.add(new o(f2));
        } else {
            setMaxFrame((int) MiscUtils.lerp(lottieComposition.getStartFrame(), this.f2466b.getEndFrame(), f2));
        }
    }

    public class p implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f2493a;

        public p(String str) {
            this.f2493a = str;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setMinFrame(this.f2493a);
        }
    }

    public void setMinFrame(String str) {
        LottieComposition lottieComposition = this.f2466b;
        if (lottieComposition == null) {
            this.h.add(new p(str));
            return;
        }
        Marker marker = lottieComposition.getMarker(str);
        if (marker == null) {
            throw new IllegalArgumentException(_COROUTINE.a.A("Cannot find marker with name ", str, "."));
        }
        setMinFrame((int) marker.startFrame);
    }

    public class q implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f2495a;

        public q(String str) {
            this.f2495a = str;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setMaxFrame(this.f2495a);
        }
    }

    public void setMaxFrame(String str) {
        LottieComposition lottieComposition = this.f2466b;
        if (lottieComposition == null) {
            this.h.add(new q(str));
            return;
        }
        Marker marker = lottieComposition.getMarker(str);
        if (marker == null) {
            throw new IllegalArgumentException(_COROUTINE.a.A("Cannot find marker with name ", str, "."));
        }
        setMaxFrame((int) (marker.startFrame + marker.durationFrames));
    }

    public class a implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f2468a;

        public a(String str) {
            this.f2468a = str;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setMinAndMaxFrame(this.f2468a);
        }
    }

    public void setMinAndMaxFrame(String str) {
        LottieComposition lottieComposition = this.f2466b;
        if (lottieComposition == null) {
            this.h.add(new a(str));
            return;
        }
        Marker marker = lottieComposition.getMarker(str);
        if (marker == null) {
            throw new IllegalArgumentException(_COROUTINE.a.A("Cannot find marker with name ", str, "."));
        }
        int i2 = (int) marker.startFrame;
        setMinAndMaxFrame(i2, ((int) marker.durationFrames) + i2);
    }

    public class b implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f2470a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f2471b;
        public final /* synthetic */ boolean c;

        public b(String str, String str2, boolean z) {
            this.f2470a = str;
            this.f2471b = str2;
            this.c = z;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setMinAndMaxFrame(this.f2470a, this.f2471b, this.c);
        }
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z) {
        LottieComposition lottieComposition = this.f2466b;
        if (lottieComposition == null) {
            this.h.add(new b(str, str2, z));
            return;
        }
        Marker marker = lottieComposition.getMarker(str);
        if (marker == null) {
            throw new IllegalArgumentException(_COROUTINE.a.A("Cannot find marker with name ", str, "."));
        }
        int i2 = (int) marker.startFrame;
        Marker marker2 = this.f2466b.getMarker(str2);
        if (marker2 == null) {
            throw new IllegalArgumentException(_COROUTINE.a.A("Cannot find marker with name ", str2, "."));
        }
        setMinAndMaxFrame(i2, (int) (marker2.startFrame + (z ? 1.0f : 0.0f)));
    }

    public class c implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2472a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f2473b;

        public c(int i, int i2) {
            this.f2472a = i;
            this.f2473b = i2;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setMinAndMaxFrame(this.f2472a, this.f2473b);
        }
    }

    public void setMinAndMaxFrame(int i2, int i3) {
        if (this.f2466b == null) {
            this.h.add(new c(i2, i3));
        } else {
            this.c.setMinAndMaxFrames(i2, i3 + 0.99f);
        }
    }

    public class d implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f2474a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ float f2475b;

        public d(float f, float f2) {
            this.f2474a = f;
            this.f2475b = f2;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setMinAndMaxProgress(this.f2474a, this.f2475b);
        }
    }

    public void setMinAndMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f2, @FloatRange(from = 0.0d, to = 1.0d) float f3) {
        LottieComposition lottieComposition = this.f2466b;
        if (lottieComposition == null) {
            this.h.add(new d(f2, f3));
        } else {
            setMinAndMaxFrame((int) MiscUtils.lerp(lottieComposition.getStartFrame(), this.f2466b.getEndFrame(), f2), (int) MiscUtils.lerp(this.f2466b.getStartFrame(), this.f2466b.getEndFrame(), f3));
        }
    }

    public void reverseAnimationSpeed() {
        this.c.reverseAnimationSpeed();
    }

    public void setSpeed(float f2) {
        this.c.setSpeed(f2);
    }

    public float getSpeed() {
        return this.c.getSpeed();
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.c.addUpdateListener(animatorUpdateListener);
    }

    public void removeAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.c.removeUpdateListener(animatorUpdateListener);
    }

    public void removeAllUpdateListeners() {
        LottieValueAnimator lottieValueAnimator = this.c;
        lottieValueAnimator.removeAllUpdateListeners();
        lottieValueAnimator.addUpdateListener(this.i);
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.c.addListener(animatorListener);
    }

    public void removeAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.c.removeListener(animatorListener);
    }

    public void removeAllAnimatorListeners() {
        this.c.removeAllListeners();
    }

    @RequiresApi(api = 19)
    public void addAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.c.addPauseListener(animatorPauseListener);
    }

    @RequiresApi(api = 19)
    public void removeAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.c.removePauseListener(animatorPauseListener);
    }

    public class e implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2476a;

        public e(int i) {
            this.f2476a = i;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setFrame(this.f2476a);
        }
    }

    public void setFrame(int i2) {
        if (this.f2466b == null) {
            this.h.add(new e(i2));
        } else {
            this.c.setFrame(i2);
        }
    }

    public int getFrame() {
        return (int) this.c.getFrame();
    }

    public class f implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f2478a;

        public f(float f) {
            this.f2478a = f;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.setProgress(this.f2478a);
        }
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f2) {
        if (this.f2466b == null) {
            this.h.add(new f(f2));
            return;
        }
        L.beginSection("Drawable#setProgress");
        this.c.setFrame(MiscUtils.lerp(this.f2466b.getStartFrame(), this.f2466b.getEndFrame(), f2));
        L.endSection("Drawable#setProgress");
    }

    @Deprecated
    public void loop(boolean z) {
        this.c.setRepeatCount(z ? -1 : 0);
    }

    public void setRepeatMode(int i2) {
        this.c.setRepeatMode(i2);
    }

    public int getRepeatMode() {
        return this.c.getRepeatMode();
    }

    public void setRepeatCount(int i2) {
        this.c.setRepeatCount(i2);
    }

    public int getRepeatCount() {
        return this.c.getRepeatCount();
    }

    public boolean isLooping() {
        return this.c.getRepeatCount() == -1;
    }

    public boolean isAnimating() {
        LottieValueAnimator lottieValueAnimator = this.c;
        if (lottieValueAnimator == null) {
            return false;
        }
        return lottieValueAnimator.isRunning();
    }

    public final boolean a() {
        return this.e || this.f;
    }

    public void setIgnoreDisabledSystemAnimations(boolean z) {
        this.f = z;
    }

    public void setScale(float f2) {
        this.d = f2;
    }

    public void setImageAssetDelegate(ImageAssetDelegate imageAssetDelegate) {
        this.l = imageAssetDelegate;
        ImageAssetManager imageAssetManager = this.j;
        if (imageAssetManager != null) {
            imageAssetManager.setDelegate(imageAssetDelegate);
        }
    }

    public void setFontAssetDelegate(FontAssetDelegate fontAssetDelegate) {
        this.n = fontAssetDelegate;
        FontAssetManager fontAssetManager = this.m;
        if (fontAssetManager != null) {
            fontAssetManager.setDelegate(fontAssetDelegate);
        }
    }

    public void setTextDelegate(TextDelegate textDelegate) {
        this.o = textDelegate;
    }

    @Nullable
    public TextDelegate getTextDelegate() {
        return this.o;
    }

    public boolean useTextGlyphs() {
        return this.o == null && this.f2466b.getCharacters().size() > 0;
    }

    public float getScale() {
        return this.d;
    }

    public LottieComposition getComposition() {
        return this.f2466b;
    }

    public void cancelAnimation() {
        this.h.clear();
        this.c.cancel();
    }

    public void pauseAnimation() {
        this.h.clear();
        this.c.pauseAnimation();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.c.getAnimatedValueAbsolute();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f2466b == null) {
            return -1;
        }
        return (int) (getScale() * r0.getBounds().width());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f2466b == null) {
            return -1;
        }
        return (int) (getScale() * r0.getBounds().height());
    }

    public List<KeyPath> resolveKeyPath(KeyPath keyPath) {
        if (this.q == null) {
            Logger.warning("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        this.q.resolveKeyPath(keyPath, 0, arrayList, new KeyPath(new String[0]));
        return arrayList;
    }

    public class g implements r {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ KeyPath f2480a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f2481b;
        public final /* synthetic */ LottieValueCallback c;

        public g(KeyPath keyPath, Object obj, LottieValueCallback lottieValueCallback) {
            this.f2480a = keyPath;
            this.f2481b = obj;
            this.c = lottieValueCallback;
        }

        @Override // com.airbnb.lottie.LottieDrawable.r
        public void run(LottieComposition lottieComposition) {
            LottieDrawable.this.addValueCallback(this.f2480a, (KeyPath) this.f2481b, (LottieValueCallback<KeyPath>) this.c);
        }
    }

    public <T> void addValueCallback(KeyPath keyPath, T t, LottieValueCallback<T> lottieValueCallback) {
        CompositionLayer compositionLayer = this.q;
        if (compositionLayer == null) {
            this.h.add(new g(keyPath, t, lottieValueCallback));
            return;
        }
        boolean zIsEmpty = true;
        if (keyPath == KeyPath.COMPOSITION) {
            compositionLayer.addValueCallback(t, lottieValueCallback);
        } else if (keyPath.getResolvedElement() != null) {
            keyPath.getResolvedElement().addValueCallback(t, lottieValueCallback);
        } else {
            List<KeyPath> listResolveKeyPath = resolveKeyPath(keyPath);
            for (int i2 = 0; i2 < listResolveKeyPath.size(); i2++) {
                listResolveKeyPath.get(i2).getResolvedElement().addValueCallback(t, lottieValueCallback);
            }
            zIsEmpty = true ^ listResolveKeyPath.isEmpty();
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (t == LottieProperty.TIME_REMAP) {
                setProgress(getProgress());
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class h<T> extends LottieValueCallback<T> {
        public final /* synthetic */ SimpleLottieValueCallback c;

        public h(SimpleLottieValueCallback simpleLottieValueCallback) {
            this.c = simpleLottieValueCallback;
        }

        @Override // com.airbnb.lottie.value.LottieValueCallback
        public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
            return (T) this.c.getValue(lottieFrameInfo);
        }
    }

    public <T> void addValueCallback(KeyPath keyPath, T t, SimpleLottieValueCallback<T> simpleLottieValueCallback) {
        addValueCallback(keyPath, (KeyPath) t, (LottieValueCallback<KeyPath>) new h(simpleLottieValueCallback));
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        ImageAssetManager imageAssetManagerD = d();
        if (imageAssetManagerD == null) {
            Logger.warning("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
            return null;
        }
        Bitmap bitmapUpdateBitmap = imageAssetManagerD.updateBitmap(str, bitmap);
        invalidateSelf();
        return bitmapUpdateBitmap;
    }

    @Nullable
    public Bitmap getImageAsset(String str) {
        ImageAssetManager imageAssetManagerD = d();
        if (imageAssetManagerD != null) {
            return imageAssetManagerD.bitmapForId(str);
        }
        return null;
    }

    public final ImageAssetManager d() {
        if (getCallback() == null) {
            return null;
        }
        ImageAssetManager imageAssetManager = this.j;
        if (imageAssetManager != null) {
            Drawable.Callback callback = getCallback();
            if (!imageAssetManager.hasSameContext((callback != null && (callback instanceof View)) ? ((View) callback).getContext() : null)) {
                this.j = null;
            }
        }
        if (this.j == null) {
            this.j = new ImageAssetManager(getCallback(), this.k, this.l, this.f2466b.getImages());
        }
        return this.j;
    }

    @Nullable
    public Typeface getTypeface(String str, String str2) {
        FontAssetManager fontAssetManager;
        if (getCallback() == null) {
            fontAssetManager = null;
        } else {
            if (this.m == null) {
                this.m = new FontAssetManager(getCallback(), this.n);
            }
            fontAssetManager = this.m;
        }
        if (fontAssetManager != null) {
            return fontAssetManager.getTypeface(str, str2);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }
}
