package com.google.zxing.client.result;

import kotlin.text.Typography;

/* loaded from: classes.dex */
public final class SMSParsedResult extends ParsedResult {

    /* renamed from: b, reason: collision with root package name */
    public final String[] f5155b;
    public final String[] c;
    public final String d;
    public final String e;

    public SMSParsedResult(String str, String str2, String str3, String str4) {
        super(ParsedResultType.SMS);
        this.f5155b = new String[]{str};
        this.c = new String[]{str2};
        this.d = str3;
        this.e = str4;
    }

    public SMSParsedResult(String[] strArr, String[] strArr2, String str, String str2) {
        super(ParsedResultType.SMS);
        this.f5155b = strArr;
        this.c = strArr2;
        this.d = str;
        this.e = str2;
    }

    public String getSMSURI() {
        StringBuilder sb = new StringBuilder("sms:");
        int i = 0;
        boolean z = true;
        while (true) {
            String[] strArr = this.f5155b;
            if (i >= strArr.length) {
                break;
            }
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append(strArr[i]);
            String[] strArr2 = this.c;
            if (strArr2 != null && strArr2[i] != null) {
                sb.append(";via=");
                sb.append(strArr2[i]);
            }
            i++;
        }
        String str = this.e;
        boolean z2 = str != null;
        String str2 = this.d;
        boolean z3 = str2 != null;
        if (z2 || z3) {
            sb.append('?');
            if (z2) {
                sb.append("body=");
                sb.append(str);
            }
            if (z3) {
                if (z2) {
                    sb.append(Typography.amp);
                }
                sb.append("subject=");
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    public String[] getNumbers() {
        return this.f5155b;
    }

    public String[] getVias() {
        return this.c;
    }

    public String getSubject() {
        return this.d;
    }

    public String getBody() {
        return this.e;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.f5155b, sb);
        ParsedResult.maybeAppend(this.d, sb);
        ParsedResult.maybeAppend(this.e, sb);
        return sb.toString();
    }
}
