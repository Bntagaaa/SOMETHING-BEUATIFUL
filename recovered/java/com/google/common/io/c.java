package com.google.common.io;

import java.io.IOException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class c implements Appendable {

    /* renamed from: a, reason: collision with root package name */
    public int f4674a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4675b;
    public final /* synthetic */ Appendable c;
    public final /* synthetic */ String d;

    public c(int i, Appendable appendable, String str) {
        this.f4675b = i;
        this.c = appendable;
        this.d = str;
        this.f4674a = i;
    }

    @Override // java.lang.Appendable
    public Appendable append(char c) throws IOException {
        int i = this.f4674a;
        Appendable appendable = this.c;
        if (i == 0) {
            appendable.append(this.d);
            this.f4674a = this.f4675b;
        }
        appendable.append(c);
        this.f4674a--;
        return this;
    }

    @Override // java.lang.Appendable
    public Appendable append(@NullableDecl CharSequence charSequence, int i, int i2) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.lang.Appendable
    public Appendable append(@NullableDecl CharSequence charSequence) throws IOException {
        throw new UnsupportedOperationException();
    }
}
