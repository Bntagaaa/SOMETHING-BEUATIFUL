package com.google.common.html;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escaper;
import com.google.common.escape.Escapers;
import kotlin.text.Typography;

@GwtCompatible
/* loaded from: classes.dex */
public final class HtmlEscapers {

    /* renamed from: a, reason: collision with root package name */
    public static final Escaper f4608a = Escapers.builder().addEscape(Typography.quote, "&quot;").addEscape('\'', "&#39;").addEscape(Typography.amp, "&amp;").addEscape(Typography.less, "&lt;").addEscape(Typography.greater, "&gt;").build();

    public static Escaper htmlEscaper() {
        return f4608a;
    }

    private HtmlEscapers() {
    }
}
