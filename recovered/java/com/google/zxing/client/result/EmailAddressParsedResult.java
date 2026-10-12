package com.google.zxing.client.result;

/* loaded from: classes.dex */
public final class EmailAddressParsedResult extends ParsedResult {

    /* renamed from: b, reason: collision with root package name */
    public final String f5145b;
    public final String c;
    public final String d;
    public final String e;

    public EmailAddressParsedResult(String str, String str2, String str3, String str4) {
        super(ParsedResultType.EMAIL_ADDRESS);
        this.f5145b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public String getEmailAddress() {
        return this.f5145b;
    }

    public String getSubject() {
        return this.c;
    }

    public String getBody() {
        return this.d;
    }

    public String getMailtoURI() {
        return this.e;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(30);
        ParsedResult.maybeAppend(this.f5145b, sb);
        ParsedResult.maybeAppend(this.c, sb);
        ParsedResult.maybeAppend(this.d, sb);
        return sb.toString();
    }
}
