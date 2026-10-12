package gnu.xml;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public final class NamespaceBinding implements Externalizable {
    public static final String XML_NAMESPACE = "http://www.w3.org/XML/1998/namespace";
    public static final NamespaceBinding predefinedXML = new NamespaceBinding("xml", XML_NAMESPACE, null);

    /* renamed from: a, reason: collision with root package name */
    public String f5512a;

    /* renamed from: b, reason: collision with root package name */
    public String f5513b;
    public NamespaceBinding c;
    public int d;

    public final String getPrefix() {
        return this.f5512a;
    }

    public final void setPrefix(String str) {
        this.f5512a = str;
    }

    public final String getUri() {
        return this.f5513b;
    }

    public final void setUri(String str) {
        this.f5513b = str;
    }

    public final NamespaceBinding getNext() {
        return this.c;
    }

    public final void setNext(NamespaceBinding namespaceBinding) {
        this.c = namespaceBinding;
        this.d = namespaceBinding == null ? 0 : namespaceBinding.d + 1;
    }

    public static final NamespaceBinding nconc(NamespaceBinding namespaceBinding, NamespaceBinding namespaceBinding2) {
        if (namespaceBinding == null) {
            return namespaceBinding2;
        }
        namespaceBinding.setNext(nconc(namespaceBinding.c, namespaceBinding2));
        return namespaceBinding;
    }

    public NamespaceBinding(String str, String str2, NamespaceBinding namespaceBinding) {
        this.f5512a = str;
        this.f5513b = str2;
        setNext(namespaceBinding);
    }

    public String resolve(String str) {
        for (NamespaceBinding namespaceBinding = this; namespaceBinding != null; namespaceBinding = namespaceBinding.c) {
            if (namespaceBinding.f5512a == str) {
                return namespaceBinding.f5513b;
            }
        }
        return null;
    }

    public String resolve(String str, NamespaceBinding namespaceBinding) {
        for (NamespaceBinding namespaceBinding2 = this; namespaceBinding2 != namespaceBinding; namespaceBinding2 = namespaceBinding2.c) {
            if (namespaceBinding2.f5512a == str) {
                return namespaceBinding2.f5513b;
            }
        }
        return null;
    }

    public static NamespaceBinding commonAncestor(NamespaceBinding namespaceBinding, NamespaceBinding namespaceBinding2) {
        if (namespaceBinding.d <= namespaceBinding2.d) {
            namespaceBinding2 = namespaceBinding;
            namespaceBinding = namespaceBinding2;
        }
        while (namespaceBinding.d > namespaceBinding2.d) {
            namespaceBinding = namespaceBinding.c;
        }
        while (namespaceBinding2 != namespaceBinding) {
            namespaceBinding2 = namespaceBinding2.c;
            namespaceBinding = namespaceBinding.c;
        }
        return namespaceBinding2;
    }

    public NamespaceBinding reversePrefix(NamespaceBinding namespaceBinding) {
        int i = namespaceBinding == null ? -1 : namespaceBinding.d;
        NamespaceBinding namespaceBinding2 = this;
        NamespaceBinding namespaceBinding3 = namespaceBinding;
        while (namespaceBinding2 != namespaceBinding) {
            NamespaceBinding namespaceBinding4 = namespaceBinding2.c;
            namespaceBinding2.c = namespaceBinding3;
            i++;
            namespaceBinding2.d = i;
            namespaceBinding3 = namespaceBinding2;
            namespaceBinding2 = namespaceBinding4;
        }
        return namespaceBinding3;
    }

    public int count(NamespaceBinding namespaceBinding) {
        int i = 0;
        for (NamespaceBinding namespaceBinding2 = this; namespaceBinding2 != namespaceBinding; namespaceBinding2 = namespaceBinding2.c) {
            i++;
        }
        return i;
    }

    public static NamespaceBinding maybeAdd(String str, String str2, NamespaceBinding namespaceBinding) {
        if (namespaceBinding == null) {
            if (str2 == null) {
                return namespaceBinding;
            }
            namespaceBinding = predefinedXML;
        }
        String strResolve = namespaceBinding.resolve(str);
        return (strResolve != null ? !strResolve.equals(str2) : str2 != null) ? new NamespaceBinding(str, str2, namespaceBinding) : namespaceBinding;
    }

    public String toString() {
        return "Namespace{" + this.f5512a + "=" + this.f5513b + ", depth:" + this.d + "}";
    }

    public String toStringAll() {
        StringBuffer stringBuffer = new StringBuffer("Namespaces{");
        for (NamespaceBinding namespaceBinding = this; namespaceBinding != null; namespaceBinding = namespaceBinding.c) {
            stringBuffer.append(namespaceBinding.f5512a);
            stringBuffer.append("=\"");
            stringBuffer.append(namespaceBinding.f5513b);
            stringBuffer.append("\", ");
        }
        stringBuffer.append('}');
        return stringBuffer.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeUTF(this.f5512a);
        objectOutput.writeUTF(this.f5513b);
        objectOutput.writeObject(this.c);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.f5512a = objectInput.readUTF();
        this.f5513b = objectInput.readUTF();
        this.c = (NamespaceBinding) objectInput.readObject();
    }
}
