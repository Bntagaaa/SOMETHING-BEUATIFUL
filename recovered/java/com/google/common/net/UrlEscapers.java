package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escaper;

@GwtCompatible
/* loaded from: classes.dex */
public final class UrlEscapers {

    /* renamed from: a, reason: collision with root package name */
    public static final PercentEscaper f4742a = new PercentEscaper("-_.*", true);

    /* renamed from: b, reason: collision with root package name */
    public static final PercentEscaper f4743b = new PercentEscaper("-._~!$'()*,;&=@:+", false);
    public static final PercentEscaper c = new PercentEscaper("-._~!$'()*,;&=@:+/?", false);

    private UrlEscapers() {
    }

    public static Escaper urlFormParameterEscaper() {
        return f4742a;
    }

    public static Escaper urlPathSegmentEscaper() {
        return f4743b;
    }

    public static Escaper urlFragmentEscaper() {
        return c;
    }
}
