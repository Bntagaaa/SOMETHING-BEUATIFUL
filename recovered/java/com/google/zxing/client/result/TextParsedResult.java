package com.google.zxing.client.result;

/* loaded from: classes.dex */
public final class TextParsedResult extends ParsedResult {

    /* renamed from: b, reason: collision with root package name */
    public final String f5157b;
    public final String c;

    public TextParsedResult(String str, String str2) {
        super(ParsedResultType.TEXT);
        this.f5157b = str;
        this.c = str2;
    }

    public String getText() {
        return this.f5157b;
    }

    public String getLanguage() {
        return this.c;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.f5157b;
    }
}
