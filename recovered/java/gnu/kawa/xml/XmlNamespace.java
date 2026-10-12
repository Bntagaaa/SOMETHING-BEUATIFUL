package gnu.kawa.xml;

import _COROUTINE.a;
import gnu.mapping.Namespace;
import gnu.xml.NamespaceBinding;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.util.Hashtable;

/* loaded from: classes2.dex */
public class XmlNamespace extends Namespace implements Externalizable {
    public static final XmlNamespace HTML = valueOf("http://www.w3.org/1999/xhtml", "");
    public static final NamespaceBinding HTML_BINDINGS = new NamespaceBinding(null, "http://www.w3.org/1999/xhtml", NamespaceBinding.predefinedXML);
    public static final String XHTML_NAMESPACE = "http://www.w3.org/1999/xhtml";

    @Override // gnu.mapping.Namespace, gnu.mapping.HasNamedParts
    public boolean isConstant(String str) {
        return true;
    }

    public static XmlNamespace getInstance(String str, String str2) {
        String strJ = a.j(str, " [xml] -> ", str2);
        Hashtable hashtable = Namespace.nsTable;
        synchronized (hashtable) {
            try {
                Object obj = hashtable.get(strJ);
                if (obj instanceof XmlNamespace) {
                    return (XmlNamespace) obj;
                }
                XmlNamespace xmlNamespace = new XmlNamespace();
                xmlNamespace.setName(str2.intern());
                xmlNamespace.prefix = str.intern();
                hashtable.put(strJ, xmlNamespace);
                return xmlNamespace;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static XmlNamespace valueOf(String str, String str2) {
        return getInstance(str2, str);
    }

    @Override // gnu.mapping.Namespace, gnu.mapping.HasNamedParts
    public Object get(String str) {
        ElementType elementTypeMake = ElementType.make(getSymbol(str));
        if (this == HTML) {
            elementTypeMake.setNamespaceNodes(HTML_BINDINGS);
        }
        return elementTypeMake;
    }

    @Override // gnu.mapping.Namespace, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(getName());
        objectOutput.writeObject(this.prefix);
    }

    @Override // gnu.mapping.Namespace, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setName((String) objectInput.readObject());
        this.prefix = (String) objectInput.readObject();
    }

    @Override // gnu.mapping.Namespace
    public Object readResolve() throws ObjectStreamException {
        String str = this.prefix + " -> " + getName();
        Hashtable hashtable = Namespace.nsTable;
        Namespace namespace = (Namespace) hashtable.get(str);
        if (namespace instanceof XmlNamespace) {
            return namespace;
        }
        hashtable.put(str, this);
        return this;
    }
}
