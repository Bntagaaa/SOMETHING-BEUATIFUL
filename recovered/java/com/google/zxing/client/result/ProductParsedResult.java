package com.google.zxing.client.result;

/* loaded from: classes.dex */
public final class ProductParsedResult extends ParsedResult {

    /* renamed from: b, reason: collision with root package name */
    public final String f5152b;
    public final String c;

    public ProductParsedResult(String str, String str2) {
        super(ParsedResultType.PRODUCT);
        this.f5152b = str;
        this.c = str2;
    }

    public String getProductID() {
        return this.f5152b;
    }

    public String getNormalizedProductID() {
        return this.c;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.f5152b;
    }
}
