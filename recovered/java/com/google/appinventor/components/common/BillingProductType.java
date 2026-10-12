package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum BillingProductType implements OptionList<Integer> {
    Product(0),
    Subscription(1);


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3519b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3520a;

    static {
        for (BillingProductType billingProductType : values()) {
            f3519b.put(billingProductType.toUnderlyingValue(), billingProductType);
        }
    }

    BillingProductType(Integer num) {
        this.f3520a = num;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return this.f3520a;
    }

    public static BillingProductType fromUnderlyingValue(Integer num) {
        return (BillingProductType) f3519b.get(num);
    }
}
