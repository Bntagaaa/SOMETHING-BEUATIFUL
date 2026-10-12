package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.model.content.ShapePath;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeContent implements b, BaseKeyframeAnimation.AnimationListener {

    /* renamed from: b, reason: collision with root package name */
    public final String f2543b;
    public final boolean c;
    public final LottieDrawable d;
    public final BaseKeyframeAnimation e;
    public boolean f;

    /* renamed from: a, reason: collision with root package name */
    public final Path f2542a = new Path();

    /* renamed from: g, reason: collision with root package name */
    public final CompoundTrimPathContent f2544g = new CompoundTrimPathContent();

    public ShapeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapePath shapePath) {
        this.f2543b = shapePath.getName();
        this.c = shapePath.isHidden();
        this.d = lottieDrawable;
        BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimationCreateAnimation = shapePath.getShapePath().createAnimation();
        this.e = baseKeyframeAnimationCreateAnimation;
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation);
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.f = false;
        this.d.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list.size(); i++) {
            Content content = list.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.d == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f2544g.f2516a.add(trimPathContent);
                    trimPathContent.a(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public Path getPath() {
        boolean z = this.f;
        Path path = this.f2542a;
        if (z) {
            return path;
        }
        path.reset();
        if (this.c) {
            this.f = true;
            return path;
        }
        path.set((Path) this.e.getValue());
        path.setFillType(Path.FillType.EVEN_ODD);
        this.f2544g.apply(path);
        this.f = true;
        return path;
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f2543b;
    }
}
