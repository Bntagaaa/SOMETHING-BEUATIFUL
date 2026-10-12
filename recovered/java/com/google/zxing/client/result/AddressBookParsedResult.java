package com.google.zxing.client.result;

/* loaded from: classes.dex */
public final class AddressBookParsedResult extends ParsedResult {

    /* renamed from: b, reason: collision with root package name */
    public final String[] f5141b;
    public final String c;
    public final String[] d;
    public final String[] e;
    public final String[] f;

    /* renamed from: g, reason: collision with root package name */
    public final String[] f5142g;
    public final String h;
    public final String i;
    public final String[] j;
    public final String[] k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;

    public AddressBookParsedResult(String[] strArr, String str, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5, String str2, String str3, String[] strArr6, String[] strArr7, String str4, String str5, String str6, String str7) {
        super(ParsedResultType.ADDRESSBOOK);
        this.f5141b = strArr;
        this.c = str;
        this.d = strArr2;
        this.e = strArr3;
        this.f = strArr4;
        this.f5142g = strArr5;
        this.h = str2;
        this.i = str3;
        this.j = strArr6;
        this.k = strArr7;
        this.l = str4;
        this.m = str5;
        this.n = str6;
        this.o = str7;
    }

    public String[] getNames() {
        return this.f5141b;
    }

    public String getPronunciation() {
        return this.c;
    }

    public String[] getPhoneNumbers() {
        return this.d;
    }

    public String[] getPhoneTypes() {
        return this.e;
    }

    public String[] getEmails() {
        return this.f;
    }

    public String[] getEmailTypes() {
        return this.f5142g;
    }

    public String getInstantMessenger() {
        return this.h;
    }

    public String getNote() {
        return this.i;
    }

    public String[] getAddresses() {
        return this.j;
    }

    public String[] getAddressTypes() {
        return this.k;
    }

    public String getTitle() {
        return this.n;
    }

    public String getOrg() {
        return this.l;
    }

    public String getURL() {
        return this.o;
    }

    public String getBirthday() {
        return this.m;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.f5141b, sb);
        ParsedResult.maybeAppend(this.c, sb);
        ParsedResult.maybeAppend(this.n, sb);
        ParsedResult.maybeAppend(this.l, sb);
        ParsedResult.maybeAppend(this.j, sb);
        ParsedResult.maybeAppend(this.d, sb);
        ParsedResult.maybeAppend(this.f, sb);
        ParsedResult.maybeAppend(this.h, sb);
        ParsedResult.maybeAppend(this.o, sb);
        ParsedResult.maybeAppend(this.m, sb);
        ParsedResult.maybeAppend(this.i, sb);
        return sb.toString();
    }
}
