package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.errorprone.annotations.DoNotMock;

@DoNotMock("Use Escapers.nullEscaper() or another methods from the *Escapers classes")
@GwtCompatible
/* loaded from: classes.dex */
public abstract class Escaper {

    /* renamed from: a, reason: collision with root package name */
    public final Function f4412a = new a();

    public abstract String escape(String str);

    public class a implements Function<String, String> {
        public a() {
        }

        @Override // com.google.common.base.Function
        public String apply(String str) {
            return Escaper.this.escape(str);
        }
    }

    public final Function<String, String> asFunction() {
        return this.f4412a;
    }
}
