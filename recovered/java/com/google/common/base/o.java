package com.google.common.base;

import com.google.common.base.Splitter;

/* loaded from: classes.dex */
final class o implements Splitter.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f3748a;

    public o(e eVar) {
        this.f3748a = eVar;
    }

    public class a extends Splitter.e {
        public final /* synthetic */ d h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Splitter splitter, CharSequence charSequence, d dVar) {
            super(splitter, charSequence);
            this.h = dVar;
        }

        @Override // com.google.common.base.Splitter.e
        public int separatorStart(int i) {
            d dVar = this.h;
            if (dVar.find(i)) {
                return dVar.start();
            }
            return -1;
        }

        @Override // com.google.common.base.Splitter.e
        public int separatorEnd(int i) {
            return this.h.end();
        }
    }

    @Override // com.google.common.base.Splitter.f
    public Splitter.e iterator(Splitter splitter, CharSequence charSequence) {
        return new a(splitter, charSequence, this.f3748a.matcher(charSequence));
    }
}
