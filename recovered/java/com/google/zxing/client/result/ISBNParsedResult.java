package com.google.zxing.client.result;

/* loaded from: classes.dex */
public final class ISBNParsedResult extends ParsedResult {

    /* renamed from: b, reason: collision with root package name */
    public final String f5149b;

    public ISBNParsedResult(String str) {
        super(ParsedResultType.ISBN);
        this.f5149b = str;
    }

    public String getISBN() {
        return this.f5149b;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.f5149b;
    }
}
