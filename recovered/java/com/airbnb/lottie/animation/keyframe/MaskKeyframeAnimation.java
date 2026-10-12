package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.ShapeData;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MaskKeyframeAnimation {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2555a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f2556b;
    public final List c;

    public MaskKeyframeAnimation(List<Mask> list) {
        this.c = list;
        this.f2555a = new ArrayList(list.size());
        this.f2556b = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            this.f2555a.add(list.get(i).getMaskPath().createAnimation());
            this.f2556b.add(list.get(i).getOpacity().createAnimation());
        }
    }

    public List<Mask> getMasks() {
        return this.c;
    }

    public List<BaseKeyframeAnimation<ShapeData, Path>> getMaskAnimations() {
        return this.f2555a;
    }

    public List<BaseKeyframeAnimation<Integer, Integer>> getOpacityAnimations() {
        return this.f2556b;
    }
}
