package com.google.zxing.client.result;

/* loaded from: classes.dex */
public final class GeoParsedResult extends ParsedResult {

    /* renamed from: b, reason: collision with root package name */
    public final double f5148b;
    public final double c;
    public final double d;
    public final String e;

    public GeoParsedResult(double d, double d2, double d3, String str) {
        super(ParsedResultType.GEO);
        this.f5148b = d;
        this.c = d2;
        this.d = d3;
        this.e = str;
    }

    public String getGeoURI() {
        StringBuilder sb = new StringBuilder("geo:");
        sb.append(this.f5148b);
        sb.append(',');
        sb.append(this.c);
        double d = this.d;
        if (d > 0.0d) {
            sb.append(',');
            sb.append(d);
        }
        String str = this.e;
        if (str != null) {
            sb.append('?');
            sb.append(str);
        }
        return sb.toString();
    }

    public double getLatitude() {
        return this.f5148b;
    }

    public double getLongitude() {
        return this.c;
    }

    public double getAltitude() {
        return this.d;
    }

    public String getQuery() {
        return this.e;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.f5148b);
        sb.append(", ");
        sb.append(this.c);
        double d = this.d;
        if (d > 0.0d) {
            sb.append(", ");
            sb.append(d);
            sb.append('m');
        }
        String str = this.e;
        if (str != null) {
            sb.append(" (");
            sb.append(str);
            sb.append(')');
        }
        return sb.toString();
    }
}
