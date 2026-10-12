package com.google.zxing.client.result;

import java.util.Map;

/* loaded from: classes.dex */
public final class ExpandedProductParsedResult extends ParsedResult {
    public static final String KILOGRAM = "KG";
    public static final String POUND = "LB";

    /* renamed from: b, reason: collision with root package name */
    public final String f5146b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f5147g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final Map o;

    public ExpandedProductParsedResult(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, Map<String, String> map) {
        super(ParsedResultType.PRODUCT);
        this.f5146b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.f5147g = str6;
        this.h = str7;
        this.i = str8;
        this.j = str9;
        this.k = str10;
        this.l = str11;
        this.m = str12;
        this.n = str13;
        this.o = map;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ExpandedProductParsedResult)) {
            return false;
        }
        ExpandedProductParsedResult expandedProductParsedResult = (ExpandedProductParsedResult) obj;
        return a(this.f5146b, expandedProductParsedResult.f5146b) && a(this.c, expandedProductParsedResult.c) && a(this.d, expandedProductParsedResult.d) && a(this.e, expandedProductParsedResult.e) && a(this.f5147g, expandedProductParsedResult.f5147g) && a(this.h, expandedProductParsedResult.h) && a(this.i, expandedProductParsedResult.i) && a(this.j, expandedProductParsedResult.j) && a(this.k, expandedProductParsedResult.k) && a(this.l, expandedProductParsedResult.l) && a(this.m, expandedProductParsedResult.m) && a(this.n, expandedProductParsedResult.n) && a(this.o, expandedProductParsedResult.o);
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public int hashCode() {
        return (((((((((((b(this.f5146b) ^ b(this.c)) ^ b(this.d)) ^ b(this.e)) ^ b(this.f5147g)) ^ b(this.h)) ^ b(this.i)) ^ b(this.j)) ^ b(this.k)) ^ b(this.l)) ^ b(this.m)) ^ b(this.n)) ^ b(this.o);
    }

    public static int b(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String getProductID() {
        return this.f5146b;
    }

    public String getSscc() {
        return this.c;
    }

    public String getLotNumber() {
        return this.d;
    }

    public String getProductionDate() {
        return this.e;
    }

    public String getPackagingDate() {
        return this.f;
    }

    public String getBestBeforeDate() {
        return this.f5147g;
    }

    public String getExpirationDate() {
        return this.h;
    }

    public String getWeight() {
        return this.i;
    }

    public String getWeightType() {
        return this.j;
    }

    public String getWeightIncrement() {
        return this.k;
    }

    public String getPrice() {
        return this.l;
    }

    public String getPriceIncrement() {
        return this.m;
    }

    public String getPriceCurrency() {
        return this.n;
    }

    public Map<String, String> getUncommonAIs() {
        return this.o;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return String.valueOf(this.f5146b);
    }
}
