package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.SimpleLottieValueCallback;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class LottieAnimationView extends AppCompatImageView {
    public static final LottieListener w = new a();
    public final LottieListener d;
    public final LottieListener e;
    public LottieListener f;

    /* renamed from: g, reason: collision with root package name */
    public int f2429g;
    public final LottieDrawable h;
    public boolean i;
    public String j;
    public int k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public RenderMode r;
    public final HashSet s;
    public int t;
    public LottieTask u;
    public LottieComposition v;

    public class c implements LottieListener<Throwable> {
        @Override // com.airbnb.lottie.LottieListener
        public void onResult(Throwable th) {
            LottieAnimationView lottieAnimationView = LottieAnimationView.this;
            int i = lottieAnimationView.f2429g;
            if (i != 0) {
                lottieAnimationView.setImageResource(i);
            }
            LottieListener lottieListener = lottieAnimationView.f;
            if (lottieListener == null) {
                lottieListener = LottieAnimationView.w;
            }
            lottieListener.onResult(th);
        }

        public c() {
        }
    }

    public class a implements LottieListener<Throwable> {
        @Override // com.airbnb.lottie.LottieListener
        public void onResult(Throwable th) {
            if (Utils.isNetworkException(th)) {
                Logger.warning("Unable to load composition.", th);
                return;
            }
            throw new IllegalStateException("Unable to parse composition", th);
        }
    }

    public class b implements LottieListener<LottieComposition> {
        public b() {
        }

        @Override // com.airbnb.lottie.LottieListener
        public void onResult(LottieComposition lottieComposition) {
            LottieAnimationView.this.setComposition(lottieComposition);
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.d = new b();
        this.e = new c();
        this.f2429g = 0;
        this.h = new LottieDrawable();
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = true;
        this.r = RenderMode.AUTOMATIC;
        this.s = new HashSet();
        this.t = 0;
        c(null, R.attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new b();
        this.e = new c();
        this.f2429g = 0;
        this.h = new LottieDrawable();
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = true;
        this.r = RenderMode.AUTOMATIC;
        this.s = new HashSet();
        this.t = 0;
        c(attributeSet, R.attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new b();
        this.e = new c();
        this.f2429g = 0;
        this.h = new LottieDrawable();
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = true;
        this.r = RenderMode.AUTOMATIC;
        this.s = new HashSet();
        this.t = 0;
        c(attributeSet, i);
    }

    public final void c(AttributeSet attributeSet, int i) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.LottieAnimationView, i, 0);
        this.q = typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_cacheComposition, true);
        int i2 = R.styleable.LottieAnimationView_lottie_rawRes;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i2);
        int i3 = R.styleable.LottieAnimationView_lottie_fileName;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(i3);
        int i4 = R.styleable.LottieAnimationView_lottie_url;
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(i4);
        if (zHasValue && zHasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(i2, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(i3);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(i4)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(R.styleable.LottieAnimationView_lottie_fallbackRes, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.n = true;
            this.p = true;
        }
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_loop, false);
        LottieDrawable lottieDrawable = this.h;
        if (z) {
            lottieDrawable.setRepeatCount(-1);
        }
        int i5 = R.styleable.LottieAnimationView_lottie_repeatMode;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(i5, 1));
        }
        int i6 = R.styleable.LottieAnimationView_lottie_repeatCount;
        if (typedArrayObtainStyledAttributes.hasValue(i6)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(i6, -1));
        }
        int i7 = R.styleable.LottieAnimationView_lottie_speed;
        if (typedArrayObtainStyledAttributes.hasValue(i7)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(i7, 1.0f));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(R.styleable.LottieAnimationView_lottie_imageAssetsFolder));
        setProgress(typedArrayObtainStyledAttributes.getFloat(R.styleable.LottieAnimationView_lottie_progress, 0.0f));
        enableMergePathsForKitKatAndAbove(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        int i8 = R.styleable.LottieAnimationView_lottie_colorFilter;
        if (typedArrayObtainStyledAttributes.hasValue(i8)) {
            addValueCallback(new KeyPath("**"), (KeyPath) LottieProperty.COLOR_FILTER, (LottieValueCallback<KeyPath>) new LottieValueCallback(new SimpleColorFilter(AppCompatResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes.getResourceId(i8, -1)).getDefaultColor())));
        }
        int i9 = R.styleable.LottieAnimationView_lottie_scale;
        if (typedArrayObtainStyledAttributes.hasValue(i9)) {
            lottieDrawable.setScale(typedArrayObtainStyledAttributes.getFloat(i9, 1.0f));
        }
        int i10 = R.styleable.LottieAnimationView_lottie_renderMode;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            RenderMode renderMode = RenderMode.AUTOMATIC;
            int iOrdinal = typedArrayObtainStyledAttributes.getInt(i10, renderMode.ordinal());
            if (iOrdinal >= RenderMode.values().length) {
                iOrdinal = renderMode.ordinal();
            }
            setRenderMode(RenderMode.values()[iOrdinal]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_ignoreDisabledSystemAnimations, false));
        typedArrayObtainStyledAttributes.recycle();
        boolean z2 = Utils.getAnimationScale(getContext()) != 0.0f;
        lottieDrawable.getClass();
        lottieDrawable.e = z2;
        b();
        this.i = true;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        a();
        super.setImageResource(i);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        a();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        a();
        super.setImageBitmap(bitmap);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        LottieDrawable lottieDrawable;
        if (!this.o && drawable == (lottieDrawable = this.h) && lottieDrawable.isAnimating()) {
            pauseAnimation();
        } else if (!this.o && (drawable instanceof LottieDrawable)) {
            LottieDrawable lottieDrawable2 = (LottieDrawable) drawable;
            if (lottieDrawable2.isAnimating()) {
                lottieDrawable2.pauseAnimation();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        LottieDrawable lottieDrawable = this.h;
        if (drawable2 == lottieDrawable) {
            super.invalidateDrawable(lottieDrawable);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        fVar.f2433a = this.j;
        fVar.f2434b = this.k;
        LottieDrawable lottieDrawable = this.h;
        fVar.c = lottieDrawable.getProgress();
        fVar.d = lottieDrawable.isAnimating() || (!ViewCompat.isAttachedToWindow(this) && this.n);
        fVar.e = lottieDrawable.getImageAssetsFolder();
        fVar.f = lottieDrawable.getRepeatMode();
        fVar.f2435g = lottieDrawable.getRepeatCount();
        return fVar;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        String str = fVar.f2433a;
        this.j = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.j);
        }
        int i = fVar.f2434b;
        this.k = i;
        if (i != 0) {
            setAnimation(i);
        }
        setProgress(fVar.c);
        if (fVar.d) {
            playAnimation();
        }
        this.h.setImagesAssetsFolder(fVar.e);
        setRepeatMode(fVar.f);
        setRepeatCount(fVar.f2435g);
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        if (this.i) {
            if (isShown()) {
                if (this.m) {
                    resumeAnimation();
                } else if (this.l) {
                    playAnimation();
                }
                this.m = false;
                this.l = false;
                return;
            }
            if (isAnimating()) {
                pauseAnimation();
                this.m = true;
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && (this.p || this.n)) {
            playAnimation();
            this.p = false;
            this.n = false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            onVisibilityChanged(this, getVisibility());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        if (isAnimating()) {
            cancelAnimation();
            this.n = true;
        }
        super.onDetachedFromWindow();
    }

    public void setIgnoreDisabledSystemAnimations(boolean z) {
        this.h.setIgnoreDisabledSystemAnimations(z);
    }

    public void enableMergePathsForKitKatAndAbove(boolean z) {
        this.h.enableMergePathsForKitKatAndAbove(z);
    }

    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.h.isMergePathsEnabledForKitKatAndAbove();
    }

    public void setCacheComposition(boolean z) {
        this.q = z;
    }

    public void setOutlineMasksAndMattes(boolean z) {
        this.h.setOutlineMasksAndMattes(z);
    }

    public void setAnimation(@RawRes int i) {
        LottieTask<LottieComposition> lottieTaskFromRawRes;
        this.k = i;
        this.j = null;
        if (isInEditMode()) {
            lottieTaskFromRawRes = new LottieTask<>(new com.airbnb.lottie.a(this, i), true);
        } else {
            lottieTaskFromRawRes = this.q ? LottieCompositionFactory.fromRawRes(getContext(), i) : LottieCompositionFactory.fromRawRes(getContext(), i, null);
        }
        d(lottieTaskFromRawRes);
    }

    public void setAnimation(String str) {
        LottieTask<LottieComposition> lottieTaskFromAsset;
        this.j = str;
        this.k = 0;
        if (isInEditMode()) {
            lottieTaskFromAsset = new LottieTask<>(new com.airbnb.lottie.b(this, str), true);
        } else {
            lottieTaskFromAsset = this.q ? LottieCompositionFactory.fromAsset(getContext(), str) : LottieCompositionFactory.fromAsset(getContext(), str, null);
        }
        d(lottieTaskFromAsset);
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromJson(String str, @Nullable String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setAnimation(InputStream inputStream, @Nullable String str) {
        d(LottieCompositionFactory.fromJsonInputStream(inputStream, str));
    }

    public void setAnimationFromUrl(String str) {
        d(this.q ? LottieCompositionFactory.fromUrl(getContext(), str) : LottieCompositionFactory.fromUrl(getContext(), str, null));
    }

    public void setAnimationFromUrl(String str, @Nullable String str2) {
        d(LottieCompositionFactory.fromUrl(getContext(), str, str2));
    }

    public void setFailureListener(@Nullable LottieListener<Throwable> lottieListener) {
        this.f = lottieListener;
    }

    public void setFallbackResource(@DrawableRes int i) {
        this.f2429g = i;
    }

    public final void a() {
        LottieTask lottieTask = this.u;
        if (lottieTask != null) {
            lottieTask.removeListener(this.d);
            this.u.removeFailureListener(this.e);
        }
    }

    public void setComposition(@NonNull LottieComposition lottieComposition) {
        if (L.DBG) {
            Log.v("LottieAnimationView", "Set Composition \n" + lottieComposition);
        }
        LottieDrawable lottieDrawable = this.h;
        lottieDrawable.setCallback(this);
        this.v = lottieComposition;
        this.o = true;
        boolean composition = lottieDrawable.setComposition(lottieComposition);
        this.o = false;
        b();
        if (getDrawable() != lottieDrawable || composition) {
            if (!composition) {
                boolean zIsAnimating = isAnimating();
                setImageDrawable(null);
                setImageDrawable(lottieDrawable);
                if (zIsAnimating) {
                    lottieDrawable.resumeAnimation();
                }
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it = this.s.iterator();
            while (it.hasNext()) {
                ((LottieOnCompositionLoadedListener) it.next()).onCompositionLoaded(lottieComposition);
            }
        }
    }

    @Nullable
    public LottieComposition getComposition() {
        return this.v;
    }

    public boolean hasMasks() {
        return this.h.hasMasks();
    }

    public boolean hasMatte() {
        return this.h.hasMatte();
    }

    @MainThread
    public void playAnimation() {
        if (isShown()) {
            this.h.playAnimation();
            b();
        } else {
            this.l = true;
        }
    }

    @MainThread
    public void resumeAnimation() {
        if (isShown()) {
            this.h.resumeAnimation();
            b();
        } else {
            this.l = false;
            this.m = true;
        }
    }

    public void setMinFrame(int i) {
        this.h.setMinFrame(i);
    }

    public float getMinFrame() {
        return this.h.getMinFrame();
    }

    public void setMinProgress(float f2) {
        this.h.setMinProgress(f2);
    }

    public void setMaxFrame(int i) {
        this.h.setMaxFrame(i);
    }

    public float getMaxFrame() {
        return this.h.getMaxFrame();
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f2) {
        this.h.setMaxProgress(f2);
    }

    public void setMinFrame(String str) {
        this.h.setMinFrame(str);
    }

    public void setMaxFrame(String str) {
        this.h.setMaxFrame(str);
    }

    public void setMinAndMaxFrame(String str) {
        this.h.setMinAndMaxFrame(str);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z) {
        this.h.setMinAndMaxFrame(str, str2, z);
    }

    public void setMinAndMaxFrame(int i, int i2) {
        this.h.setMinAndMaxFrame(i, i2);
    }

    public void setMinAndMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f2, @FloatRange(from = 0.0d, to = 1.0d) float f3) {
        this.h.setMinAndMaxProgress(f2, f3);
    }

    public void reverseAnimationSpeed() {
        this.h.reverseAnimationSpeed();
    }

    public void setSpeed(float f2) {
        this.h.setSpeed(f2);
    }

    public float getSpeed() {
        return this.h.getSpeed();
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.h.addAnimatorUpdateListener(animatorUpdateListener);
    }

    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.h.removeAnimatorUpdateListener(animatorUpdateListener);
    }

    public void removeAllUpdateListeners() {
        this.h.removeAllUpdateListeners();
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.h.addAnimatorListener(animatorListener);
    }

    public void removeAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.h.removeAnimatorListener(animatorListener);
    }

    public void removeAllAnimatorListeners() {
        this.h.removeAllAnimatorListeners();
    }

    @RequiresApi(api = 19)
    public void addAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.h.addAnimatorPauseListener(animatorPauseListener);
    }

    @RequiresApi(api = 19)
    public void removeAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.h.removeAnimatorPauseListener(animatorPauseListener);
    }

    @Deprecated
    public void loop(boolean z) {
        this.h.setRepeatCount(z ? -1 : 0);
    }

    public void setRepeatMode(int i) {
        this.h.setRepeatMode(i);
    }

    public int getRepeatMode() {
        return this.h.getRepeatMode();
    }

    public void setRepeatCount(int i) {
        this.h.setRepeatCount(i);
    }

    public int getRepeatCount() {
        return this.h.getRepeatCount();
    }

    public boolean isAnimating() {
        return this.h.isAnimating();
    }

    public void setImageAssetsFolder(String str) {
        this.h.setImagesAssetsFolder(str);
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.h.getImageAssetsFolder();
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        return this.h.updateBitmap(str, bitmap);
    }

    public void setImageAssetDelegate(ImageAssetDelegate imageAssetDelegate) {
        this.h.setImageAssetDelegate(imageAssetDelegate);
    }

    public void setFontAssetDelegate(FontAssetDelegate fontAssetDelegate) {
        this.h.setFontAssetDelegate(fontAssetDelegate);
    }

    public void setTextDelegate(TextDelegate textDelegate) {
        this.h.setTextDelegate(textDelegate);
    }

    public List<KeyPath> resolveKeyPath(KeyPath keyPath) {
        return this.h.resolveKeyPath(keyPath);
    }

    public <T> void addValueCallback(KeyPath keyPath, T t, LottieValueCallback<T> lottieValueCallback) {
        this.h.addValueCallback(keyPath, (KeyPath) t, (LottieValueCallback<KeyPath>) lottieValueCallback);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class d<T> extends LottieValueCallback<T> {
        public final /* synthetic */ SimpleLottieValueCallback c;

        public d(SimpleLottieValueCallback simpleLottieValueCallback) {
            this.c = simpleLottieValueCallback;
        }

        @Override // com.airbnb.lottie.value.LottieValueCallback
        public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
            return (T) this.c.getValue(lottieFrameInfo);
        }
    }

    public <T> void addValueCallback(KeyPath keyPath, T t, SimpleLottieValueCallback<T> simpleLottieValueCallback) {
        this.h.addValueCallback(keyPath, (KeyPath) t, (LottieValueCallback<KeyPath>) new d(simpleLottieValueCallback));
    }

    public void setScale(float f2) {
        LottieDrawable lottieDrawable = this.h;
        lottieDrawable.setScale(f2);
        if (getDrawable() == lottieDrawable) {
            boolean zIsAnimating = isAnimating();
            setImageDrawable(null);
            setImageDrawable(lottieDrawable);
            if (zIsAnimating) {
                lottieDrawable.resumeAnimation();
            }
        }
    }

    public float getScale() {
        return this.h.getScale();
    }

    @MainThread
    public void cancelAnimation() {
        this.n = false;
        this.m = false;
        this.l = false;
        this.h.cancelAnimation();
        b();
    }

    @MainThread
    public void pauseAnimation() {
        this.p = false;
        this.n = false;
        this.m = false;
        this.l = false;
        this.h.pauseAnimation();
        b();
    }

    public void setFrame(int i) {
        this.h.setFrame(i);
    }

    public int getFrame() {
        return this.h.getFrame();
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f2) {
        this.h.setProgress(f2);
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.h.getProgress();
    }

    public long getDuration() {
        LottieComposition lottieComposition = this.v;
        if (lottieComposition != null) {
            return (long) lottieComposition.getDuration();
        }
        return 0L;
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        this.h.setPerformanceTrackingEnabled(z);
    }

    @Nullable
    public PerformanceTracker getPerformanceTracker() {
        return this.h.getPerformanceTracker();
    }

    public final void d(LottieTask lottieTask) {
        this.v = null;
        this.h.clearComposition();
        a();
        this.u = lottieTask.addListener(this.d).addFailureListener(this.e);
    }

    public void setSafeMode(boolean z) {
        this.h.setSafeMode(z);
    }

    @Override // android.view.View
    public void buildDrawingCache(boolean z) {
        L.beginSection("buildDrawingCache");
        this.t++;
        super.buildDrawingCache(z);
        if (this.t == 1 && getWidth() > 0 && getHeight() > 0 && getLayerType() == 1 && getDrawingCache(z) == null) {
            setRenderMode(RenderMode.HARDWARE);
        }
        this.t--;
        L.endSection("buildDrawingCache");
    }

    public void setRenderMode(RenderMode renderMode) {
        this.r = renderMode;
        b();
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.h.setApplyingOpacityToLayersEnabled(z);
    }

    public void disableExtraScaleModeInFitXY() {
        this.h.disableExtraScaleModeInFitXY();
    }

    public static /* synthetic */ class e {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2432a;

        static {
            int[] iArr = new int[RenderMode.values().length];
            f2432a = iArr;
            try {
                iArr[RenderMode.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2432a[RenderMode.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2432a[RenderMode.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public final void b() {
        LottieComposition lottieComposition;
        LottieComposition lottieComposition2;
        int i;
        int i2 = e.f2432a[this.r.ordinal()];
        int i3 = 2;
        if (i2 != 1 && (i2 == 2 || i2 != 3 || (((lottieComposition = this.v) != null && lottieComposition.hasDashPattern() && Build.VERSION.SDK_INT < 28) || (((lottieComposition2 = this.v) != null && lottieComposition2.getMaskAndMatteCount() > 4) || (i = Build.VERSION.SDK_INT) == 24 || i == 25)))) {
            i3 = 1;
        }
        if (i3 != getLayerType()) {
            setLayerType(i3, null);
        }
    }

    public boolean addLottieOnCompositionLoadedListener(@NonNull LottieOnCompositionLoadedListener lottieOnCompositionLoadedListener) {
        LottieComposition lottieComposition = this.v;
        if (lottieComposition != null) {
            lottieOnCompositionLoadedListener.onCompositionLoaded(lottieComposition);
        }
        return this.s.add(lottieOnCompositionLoadedListener);
    }

    public boolean removeLottieOnCompositionLoadedListener(@NonNull LottieOnCompositionLoadedListener lottieOnCompositionLoadedListener) {
        return this.s.remove(lottieOnCompositionLoadedListener);
    }

    public void removeAllLottieOnCompositionLoadedListener() {
        this.s.clear();
    }

    public static class f extends View.BaseSavedState {
        public static final Parcelable.Creator<f> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public String f2433a;

        /* renamed from: b, reason: collision with root package name */
        public int f2434b;
        public float c;
        public boolean d;
        public String e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f2435g;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f2433a);
            parcel.writeFloat(this.c);
            parcel.writeInt(this.d ? 1 : 0);
            parcel.writeString(this.e);
            parcel.writeInt(this.f);
            parcel.writeInt(this.f2435g);
        }

        public class a implements Parcelable.Creator<f> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public f createFromParcel(Parcel parcel) {
                f fVar = new f(parcel);
                fVar.f2433a = parcel.readString();
                fVar.c = parcel.readFloat();
                fVar.d = parcel.readInt() == 1;
                fVar.e = parcel.readString();
                fVar.f = parcel.readInt();
                fVar.f2435g = parcel.readInt();
                return fVar;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public f[] newArray(int i) {
                return new f[i];
            }
        }
    }
}
