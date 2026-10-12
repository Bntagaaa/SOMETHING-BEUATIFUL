package gnu.xquery.util;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.text.CollationKey;
import java.text.Collator;
import okio.Utf8;

/* loaded from: classes2.dex */
public class NamedCollator extends Collator implements Externalizable {
    public static final String UNICODE_CODEPOINT_COLLATION = "http://www.w3.org/2005/xpath-functions/collation/codepoint";
    public static final NamedCollator codepointCollation;

    /* renamed from: a, reason: collision with root package name */
    public String f5532a;

    @Override // java.text.Collator
    public int hashCode() {
        return 0;
    }

    public static NamedCollator make(String str) {
        NamedCollator namedCollator = new NamedCollator();
        namedCollator.f5532a = str;
        namedCollator.resolve();
        return namedCollator;
    }

    public String getName() {
        return this.f5532a;
    }

    public static NamedCollator find(String str) {
        return make(str);
    }

    static {
        NamedCollator namedCollator = new NamedCollator();
        codepointCollation = namedCollator;
        namedCollator.f5532a = UNICODE_CODEPOINT_COLLATION;
    }

    public void resolve() {
        String str = this.f5532a;
        if (str == null || str.equals(UNICODE_CODEPOINT_COLLATION)) {
            return;
        }
        throw new RuntimeException("unknown collation: " + this.f5532a);
    }

    public static int codepointCompare(String str, String str2) {
        int length = str.length();
        int length2 = str2.length();
        int i = 0;
        int i2 = 0;
        while (i != length) {
            if (i2 == length2) {
                return 1;
            }
            int i3 = i + 1;
            int iCharAt = str.charAt(i);
            if (iCharAt < 55296 || iCharAt >= 56320 || i3 >= length) {
                i = i3;
            } else {
                i += 2;
                iCharAt = (str.charAt(i3) - Utf8.LOG_SURROGATE_HEADER) + ((iCharAt - 55296) * 1024) + 65536;
            }
            int i4 = i2 + 1;
            int iCharAt2 = str2.charAt(i2);
            if (iCharAt2 < 55296 || iCharAt2 >= 56320 || i4 >= length2) {
                i2 = i4;
            } else {
                i2 += 2;
                iCharAt2 = (str2.charAt(i4) - Utf8.LOG_SURROGATE_HEADER) + ((iCharAt2 - 55296) * 1024) + 65536;
            }
            if (iCharAt != iCharAt2) {
                return iCharAt < iCharAt2 ? -1 : 1;
            }
        }
        return i2 == length2 ? 0 : -1;
    }

    @Override // java.text.Collator
    public int compare(String str, String str2) {
        return codepointCompare(str, str2);
    }

    @Override // java.text.Collator
    public CollationKey getCollationKey(String str) {
        throw null;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeUTF(this.f5532a);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.f5532a = objectInput.readUTF();
        resolve();
    }
}
