package com.google.common.escape;

/* loaded from: classes.dex */
final class a extends UnicodeEscaper {
    @Override // com.google.common.escape.UnicodeEscaper
    public char[] escape(int i) {
        if (i < 65536) {
            throw null;
        }
        Character.toChars(i, new char[2], 0);
        throw null;
    }
}
