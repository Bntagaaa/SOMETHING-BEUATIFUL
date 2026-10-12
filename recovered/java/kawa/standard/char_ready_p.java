package kawa.standard;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* loaded from: classes2.dex */
public class char_ready_p {
    public static boolean ready(Object obj) {
        try {
            if (obj instanceof InputStream) {
                return ((InputStream) obj).available() > 0;
            }
            if (obj instanceof Reader) {
                return ((Reader) obj).ready();
            }
            throw new ClassCastException("invalid argument to char-ready?");
        } catch (IOException unused) {
            return false;
        }
    }
}
