package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum BestFitModel implements OptionList<String> {
    Linear("Linear"),
    Quadratic("Quadratic"),
    Exponential("Exponential"),
    Logarithmic("Logarithmic");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3517b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3518a;

    static {
        for (BestFitModel bestFitModel : values()) {
            f3517b.put(bestFitModel.toUnderlyingValue(), bestFitModel);
        }
    }

    BestFitModel(String str) {
        this.f3518a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3518a;
    }

    public static BestFitModel fromUnderlyingValue(String str) {
        return (BestFitModel) f3517b.get(str);
    }
}
