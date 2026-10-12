package com.google.common.io;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
class h extends ByteSource {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FileBackedOutputStream f4681a;

    public h(FileBackedOutputStream fileBackedOutputStream) {
        this.f4681a = fileBackedOutputStream;
    }

    @Override // com.google.common.io.ByteSource
    public InputStream openStream() throws IOException {
        return FileBackedOutputStream.a(this.f4681a);
    }
}
