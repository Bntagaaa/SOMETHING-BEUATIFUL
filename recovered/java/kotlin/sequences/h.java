package kotlin.sequences;

import kotlin.jvm.functions.Function2;

/* loaded from: classes2.dex */
public final /* synthetic */ class h implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6010a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6011b;

    public /* synthetic */ h(Object obj, int i) {
        this.f6010a = i;
        this.f6011b = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005a  */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r4, java.lang.Object r5) {
        /*
            r3 = this;
            int r0 = r3.f6010a
            switch(r0) {
                case 0: goto L98;
                case 1: goto L3b;
                default: goto L5;
            }
        L5:
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            java.lang.Object r0 = r3.f6011b
            kotlinx.coroutines.CompletableDeferred r0 = (kotlinx.coroutines.CompletableDeferred) r0
            if (r5 != 0) goto L14
            boolean r4 = r0.complete(r4)     // Catch: java.lang.Throwable -> L12
            goto L2e
        L12:
            r4 = move-exception
            goto L33
        L14:
            boolean r4 = com.google.appinventor.components.runtime.fcm.a.x(r5)     // Catch: java.lang.Throwable -> L12
            if (r4 == 0) goto L1f
            java.util.concurrent.CompletionException r4 = com.google.appinventor.components.runtime.fcm.a.l(r5)     // Catch: java.lang.Throwable -> L12
            goto L20
        L1f:
            r4 = 0
        L20:
            if (r4 == 0) goto L2a
            java.lang.Throwable r4 = com.google.appinventor.components.runtime.fcm.a.e(r4)     // Catch: java.lang.Throwable -> L12
            if (r4 != 0) goto L29
            goto L2a
        L29:
            r5 = r4
        L2a:
            boolean r4 = r0.completeExceptionally(r5)     // Catch: java.lang.Throwable -> L12
        L2e:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)     // Catch: java.lang.Throwable -> L12
            goto L3a
        L33:
            kotlin.coroutines.EmptyCoroutineContext r5 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            kotlinx.coroutines.CoroutineExceptionHandlerKt.handleCoroutineException(r5, r4)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
        L3a:
            return r4
        L3b:
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            kotlin.coroutines.CoroutineContext$Element r5 = (kotlin.coroutines.CoroutineContext.Element) r5
            kotlin.coroutines.CoroutineContext$Key r0 = r5.getKey()
            java.lang.Object r1 = r3.f6011b
            kotlinx.coroutines.flow.internal.SafeCollector r1 = (kotlinx.coroutines.flow.internal.SafeCollector) r1
            kotlin.coroutines.CoroutineContext r1 = r1.collectContext
            kotlin.coroutines.CoroutineContext$Element r1 = r1.get(r0)
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.INSTANCE
            if (r0 == r2) goto L5d
            if (r5 == r1) goto L5a
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L6e
        L5a:
            int r4 = r4 + 1
            goto L6e
        L5d:
            kotlinx.coroutines.Job r1 = (kotlinx.coroutines.Job) r1
            java.lang.String r0 = "null cannot be cast to non-null type kotlinx.coroutines.Job"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r0)
            kotlinx.coroutines.Job r5 = (kotlinx.coroutines.Job) r5
            kotlinx.coroutines.Job r5 = kotlinx.coroutines.flow.internal.SafeCollector_commonKt.transitiveCoroutineParent(r5, r1)
            if (r5 != r1) goto L73
            if (r1 != 0) goto L5a
        L6e:
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            return r4
        L73:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "
            r0.<init>(r2)
            r0.append(r5)
            java.lang.String r5 = ", expected child of "
            r0.append(r5)
            r0.append(r1)
            java.lang.String r5 = ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'"
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L98:
            java.lang.Integer r4 = (java.lang.Integer) r4
            r4.intValue()
            java.lang.Object r0 = r3.f6011b
            kotlin.jvm.functions.Function2 r0 = (kotlin.jvm.functions.Function2) r0
            r0.invoke(r4, r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.h.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
