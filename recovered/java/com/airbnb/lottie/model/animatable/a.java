package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.value.Keyframe;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
abstract class a<V, O> implements AnimatableValue<V, O> {

    /* renamed from: a, reason: collision with root package name */
    public final List f2596a;

    public a(Object obj) {
        this(Collections.singletonList(new Keyframe(obj)));
    }

    public a(List list) {
        this.f2596a = list;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public List<Keyframe<V>> getKeyframes() {
        return this.f2596a;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public boolean isStatic() {
        List list = this.f2596a;
        return list.isEmpty() || (list.size() == 1 && ((Keyframe) list.get(0)).isStatic());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        List list = this.f2596a;
        if (!list.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(list.toArray()));
        }
        return sb.toString();
    }
}
