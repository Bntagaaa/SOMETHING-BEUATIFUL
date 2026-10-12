package gnu.xml;

import gnu.mapping.Symbol;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import okio.Utf8;

/* loaded from: classes2.dex */
public class XName extends Symbol implements Externalizable {

    /* renamed from: a, reason: collision with root package name */
    public NamespaceBinding f5522a;

    public XName() {
    }

    public XName(Symbol symbol, NamespaceBinding namespaceBinding) {
        super(symbol.getNamespace(), symbol.getName());
        this.f5522a = namespaceBinding;
    }

    public final NamespaceBinding getNamespaceNodes() {
        return this.f5522a;
    }

    public final void setNamespaceNodes(NamespaceBinding namespaceBinding) {
        this.f5522a = namespaceBinding;
    }

    @Override // gnu.mapping.Symbol, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        super.writeExternal(objectOutput);
        objectOutput.writeObject(this.f5522a);
    }

    @Override // gnu.mapping.Symbol, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        super.readExternal(objectInput);
        this.f5522a = (NamespaceBinding) objectInput.readObject();
    }

    public static boolean isNameStart(int i) {
        return Character.isUnicodeIdentifierStart(i) || i == 95;
    }

    public static boolean isNamePart(int i) {
        return Character.isUnicodeIdentifierPart(i) || i == 45 || i == 46;
    }

    public static boolean isNmToken(String str) {
        return checkName(str) >= 0;
    }

    public static boolean isName(String str) {
        return checkName(str) > 0;
    }

    public static boolean isNCName(String str) {
        return checkName(str) > 1;
    }

    public static int checkName(String str) {
        int length = str.length();
        if (length == 0) {
            return -1;
        }
        int i = 0;
        int i2 = 2;
        while (i < length) {
            boolean z = i == 0;
            int i3 = i + 1;
            int iCharAt = str.charAt(i);
            if (iCharAt < 55296 || iCharAt >= 56320 || i3 >= length) {
                i = i3;
            } else {
                i += 2;
                iCharAt = 65536 + (str.charAt(i3) - Utf8.LOG_SURROGATE_HEADER) + ((iCharAt - 55296) * 1024);
            }
            if (iCharAt == 58) {
                if (i2 == 2) {
                    i2 = 1;
                }
            } else {
                if (!isNamePart(iCharAt)) {
                    return -1;
                }
                if (z && !isNameStart(iCharAt)) {
                    i2 = 0;
                }
            }
        }
        return i2;
    }
}
