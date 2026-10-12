package com.google.common.xml;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escaper;
import com.google.common.escape.Escapers;
import kotlin.text.Typography;
import okio.Utf8;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public class XmlEscapers {

    /* renamed from: a, reason: collision with root package name */
    public static final Escaper f5061a;

    /* renamed from: b, reason: collision with root package name */
    public static final Escaper f5062b;

    private XmlEscapers() {
    }

    public static Escaper xmlContentEscaper() {
        return f5061a;
    }

    public static Escaper xmlAttributeEscaper() {
        return f5062b;
    }

    static {
        Escapers.Builder builder = Escapers.builder();
        builder.setSafeRange((char) 0, Utf8.REPLACEMENT_CHARACTER);
        builder.setUnsafeReplacement("�");
        for (char c = 0; c <= 31; c = (char) (c + 1)) {
            if (c != '\t' && c != '\n' && c != '\r') {
                builder.addEscape(c, "�");
            }
        }
        builder.addEscape(Typography.amp, "&amp;");
        builder.addEscape(Typography.less, "&lt;");
        builder.addEscape(Typography.greater, "&gt;");
        f5061a = builder.build();
        builder.addEscape('\'', "&apos;");
        builder.addEscape(Typography.quote, "&quot;");
        builder.build();
        builder.addEscape('\t', "&#x9;");
        builder.addEscape('\n', "&#xA;");
        builder.addEscape('\r', "&#xD;");
        f5062b = builder.build();
    }
}
