package com.google.common.io;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
class g extends ByteSource {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FileBackedOutputStream f4680a;

    public g(FileBackedOutputStream fileBackedOutputStream) {
        this.f4680a = fileBackedOutputStream;
    }

    @Override // com.google.common.io.ByteSource
    public InputStream openStream() throws IOException {
        return FileBackedOutputStream.a(this.f4680a);
    }

    public void finalize() {
        try {
            this.f4680a.reset();
        } catch (Throwable th) {
            th.printStackTrace(System.err);
        }
    }
}
