package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.util.logging.Logger;
import java.util.regex.Pattern;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class l {

    /* renamed from: a, reason: collision with root package name */
    public static final b f3745a;

    static {
        Logger.getLogger(l.class.getName());
        f3745a = new b(0);
    }

    private l() {
    }

    public static final class b implements k {
        private b() {
        }

        public /* synthetic */ b(int i) {
            this();
        }

        @Override // com.google.common.base.k
        public e compile(String str) {
            return new h(Pattern.compile(str));
        }
    }
}
