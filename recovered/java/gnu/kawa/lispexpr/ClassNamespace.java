package gnu.kawa.lispexpr;

import gnu.bytecode.ClassType;
import gnu.kawa.functions.GetNamedPart;
import gnu.mapping.Namespace;
import gnu.mapping.WrappedException;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.util.Hashtable;

/* loaded from: classes2.dex */
public class ClassNamespace extends Namespace implements Externalizable {
    ClassType ctype;

    public ClassType getClassType() {
        return this.ctype;
    }

    public static ClassNamespace getInstance(String str, ClassType classType) {
        Hashtable hashtable = Namespace.nsTable;
        synchronized (hashtable) {
            try {
                Object obj = hashtable.get(str);
                if (obj instanceof ClassNamespace) {
                    return (ClassNamespace) obj;
                }
                ClassNamespace classNamespace = new ClassNamespace(classType);
                hashtable.put(str, classNamespace);
                return classNamespace;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ClassNamespace() {
    }

    public ClassNamespace(ClassType classType) {
        setName("class:" + classType.getName());
        this.ctype = classType;
    }

    @Override // gnu.mapping.Namespace, gnu.mapping.HasNamedParts
    public Object get(String str) {
        try {
            return GetNamedPart.getTypePart(this.ctype, str);
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    @Override // gnu.mapping.Namespace, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.ctype);
    }

    @Override // gnu.mapping.Namespace, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.ctype = (ClassType) objectInput.readObject();
        setName("class:" + this.ctype.getName());
    }

    @Override // gnu.mapping.Namespace
    public Object readResolve() throws ObjectStreamException {
        String name = getName();
        if (name != null) {
            Hashtable hashtable = Namespace.nsTable;
            Namespace namespace = (Namespace) hashtable.get(name);
            if (namespace instanceof ClassNamespace) {
                return namespace;
            }
            hashtable.put(name, this);
        }
        return this;
    }
}
