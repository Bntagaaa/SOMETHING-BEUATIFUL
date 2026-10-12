package com.google.zxing.client.result;

/* loaded from: classes.dex */
public final class WifiParsedResult extends ParsedResult {

    /* renamed from: b, reason: collision with root package name */
    public final String f5161b;
    public final String c;
    public final String d;
    public final boolean e;

    public WifiParsedResult(String str, String str2, String str3) {
        this(str, str2, str3, false);
    }

    public WifiParsedResult(String str, String str2, String str3, boolean z) {
        super(ParsedResultType.WIFI);
        this.f5161b = str2;
        this.c = str;
        this.d = str3;
        this.e = z;
    }

    public String getSsid() {
        return this.f5161b;
    }

    public String getNetworkEncryption() {
        return this.c;
    }

    public String getPassword() {
        return this.d;
    }

    public boolean isHidden() {
        return this.e;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(80);
        ParsedResult.maybeAppend(this.f5161b, sb);
        ParsedResult.maybeAppend(this.c, sb);
        ParsedResult.maybeAppend(this.d, sb);
        ParsedResult.maybeAppend(Boolean.toString(this.e), sb);
        return sb.toString();
    }
}
