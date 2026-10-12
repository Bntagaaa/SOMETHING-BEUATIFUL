package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum LOBFValues implements OptionList<String> {
    CorrCoef("correlation coefficient"),
    Slope("slope"),
    Yintercept("Yintercept"),
    Predictions("predictions"),
    AllValues("all values"),
    QuadraticCoefficient("Quadratic Coefficient"),
    LinearCoefficient("slope"),
    ExponentialCoefficient("a"),
    ExponentialBase("b"),
    LogarithmCoefficient("b"),
    LogarithmConstant("a"),
    XIntercepts("Xintercepts"),
    RSquared("r^2");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3555b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3556a;

    static {
        for (LOBFValues lOBFValues : values()) {
            f3555b.put(lOBFValues.toUnderlyingValue(), lOBFValues);
        }
    }

    LOBFValues(String str) {
        this.f3556a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3556a;
    }

    public static LOBFValues fromUnderlyingValue(String str) {
        return (LOBFValues) f3555b.get(str);
    }
}
