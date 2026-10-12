package com.google.zxing.client.result;

/* loaded from: classes.dex */
public final class TelParsedResult extends ParsedResult {

    /* renamed from: b, reason: collision with root package name */
    public final String f5156b;
    public final String c;
    public final String d;

    public TelParsedResult(String str, String str2, String str3) {
        super(ParsedResultType.TEL);
        this.f5156b = str;
        this.c = str2;
        this.d = str3;
    }

    public String getNumber() {
        return this.f5156b;
    }

    public String getTelURI() {
        return this.c;
    }

    public String getTitle() {
        return this.d;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(20);
        ParsedResult.maybeAppend(this.f5156b, sb);
        ParsedResult.maybeAppend(this.d, sb);
        return sb.toString();
    }
}
