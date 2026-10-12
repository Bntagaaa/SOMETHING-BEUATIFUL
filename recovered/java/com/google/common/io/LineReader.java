package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.LinkedList;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class LineReader {

    /* renamed from: a, reason: collision with root package name */
    public final Readable f4665a;

    /* renamed from: b, reason: collision with root package name */
    public final Reader f4666b;
    public final CharBuffer c;
    public final char[] d;
    public final LinkedList e;
    public final a f;

    public class a extends i {
        @Override // com.google.common.io.i
        public void handleLine(String str, String str2) {
            LineReader.this.e.add(str);
        }

        public a() {
        }
    }

    public LineReader(Readable readable) {
        CharBuffer charBufferAllocate = CharBuffer.allocate(2048);
        this.c = charBufferAllocate;
        this.d = charBufferAllocate.array();
        this.e = new LinkedList();
        this.f = new a();
        this.f4665a = (Readable) Preconditions.checkNotNull(readable);
        this.f4666b = readable instanceof Reader ? (Reader) readable : null;
    }

    @CanIgnoreReturnValue
    public String readLine() throws IOException {
        LinkedList linkedList;
        while (true) {
            linkedList = this.e;
            if (linkedList.peek() != null) {
                break;
            }
            CharBuffer charBuffer = this.c;
            charBuffer.clear();
            char[] cArr = this.d;
            Reader reader = this.f4666b;
            int i = reader != null ? reader.read(cArr, 0, cArr.length) : this.f4665a.read(charBuffer);
            a aVar = this.f;
            if (i == -1) {
                aVar.finish();
                break;
            }
            aVar.add(cArr, 0, i);
        }
        return (String) linkedList.poll();
    }
}
