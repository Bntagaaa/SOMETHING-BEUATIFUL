package gnu.kawa.xml;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.Compilation;
import gnu.expr.TypeValue;
import gnu.lists.AbstractSequence;
import gnu.lists.AttributePredicate;
import gnu.lists.SeqPosition;
import gnu.mapping.Symbol;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import javax.xml.namespace.QName;

/* loaded from: classes2.dex */
public class AttributeType extends NodeType implements TypeValue, Externalizable, AttributePredicate {
    static final Method coerceMethod;
    static final Method coerceOrNullMethod;
    public static final ClassType typeAttributeType;
    Symbol qname;

    public static AttributeType make(String str, String str2) {
        Symbol symbol;
        if (str != null) {
            symbol = Symbol.make(str, str2);
        } else if (str2 == "") {
            symbol = ElementType.MATCH_ANY_QNAME;
        } else {
            symbol = new Symbol(null, str2);
        }
        return new AttributeType(symbol);
    }

    public static AttributeType make(Symbol symbol) {
        return new AttributeType(symbol);
    }

    public AttributeType(Symbol symbol) {
        this(null, symbol);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AttributeType(String str, Symbol symbol) {
        if (str == null || str.length() <= 0) {
            str = "ATTRIBUTE " + symbol + " (*)";
        }
        super(str);
        this.qname = symbol;
    }

    @Override // gnu.kawa.xml.NodeType, gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Type getImplementationType() {
        return ClassType.make("gnu.kawa.xml.KAttr");
    }

    public final String getNamespaceURI() {
        return this.qname.getNamespaceURI();
    }

    public final String getLocalName() {
        return this.qname.getLocalName();
    }

    @Override // gnu.kawa.xml.NodeType, gnu.bytecode.ObjectType, gnu.bytecode.Type
    public void emitCoerceFromObject(CodeAttr codeAttr) {
        codeAttr.emitPushString(this.qname.getNamespaceURI());
        codeAttr.emitPushString(this.qname.getLocalName());
        codeAttr.emitInvokeStatic(coerceMethod);
    }

    @Override // gnu.kawa.xml.NodeType, gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Object coerceFromObject(Object obj) {
        return coerce(obj, this.qname.getNamespaceURI(), this.qname.getLocalName());
    }

    @Override // gnu.kawa.xml.NodeType, gnu.lists.ItemPredicate
    public boolean isInstancePos(AbstractSequence abstractSequence, int i) {
        int nextKind = abstractSequence.getNextKind(i);
        if (nextKind == 35) {
            return isInstance(abstractSequence, i, abstractSequence.getNextTypeObject(i));
        }
        if (nextKind == 32) {
            return isInstance(abstractSequence.getPosNext(i));
        }
        return false;
    }

    @Override // gnu.lists.AttributePredicate
    public boolean isInstance(AbstractSequence abstractSequence, int i, Object obj) {
        String strIntern;
        String namespaceURI;
        String namespaceURI2 = this.qname.getNamespaceURI();
        String localName = this.qname.getLocalName();
        if (obj instanceof Symbol) {
            Symbol symbol = (Symbol) obj;
            namespaceURI = symbol.getNamespaceURI();
            strIntern = symbol.getLocalName();
        } else if (obj instanceof QName) {
            QName qName = (QName) obj;
            namespaceURI = qName.getNamespaceURI();
            strIntern = qName.getLocalPart();
        } else {
            strIntern = obj.toString().intern();
            namespaceURI = "";
        }
        if (localName != null && localName.length() == 0) {
            localName = null;
        }
        if (localName == strIntern || localName == null) {
            return namespaceURI2 == namespaceURI || namespaceURI2 == null;
        }
        return false;
    }

    @Override // gnu.kawa.xml.NodeType, gnu.bytecode.ObjectType, gnu.bytecode.Type
    public boolean isInstance(Object obj) {
        return coerceOrNull(obj, this.qname.getNamespaceURI(), this.qname.getLocalName()) != null;
    }

    public static KAttr coerceOrNull(Object obj, String str, String str2) {
        String strIntern;
        String namespaceURI;
        KNode kNodeCoerceOrNull = NodeType.coerceOrNull(obj, 4);
        if (kNodeCoerceOrNull == null) {
            return null;
        }
        if (str2 != null && str2.length() == 0) {
            str2 = null;
        }
        Object nextTypeObject = kNodeCoerceOrNull.getNextTypeObject();
        if (nextTypeObject instanceof Symbol) {
            Symbol symbol = (Symbol) nextTypeObject;
            namespaceURI = symbol.getNamespaceURI();
            strIntern = symbol.getLocalName();
        } else if (nextTypeObject instanceof QName) {
            QName qName = (QName) nextTypeObject;
            namespaceURI = qName.getNamespaceURI();
            strIntern = qName.getLocalPart();
        } else {
            strIntern = nextTypeObject.toString().intern();
            namespaceURI = "";
        }
        if ((str2 == strIntern || str2 == null) && (str == namespaceURI || str == null)) {
            return (KAttr) kNodeCoerceOrNull;
        }
        return null;
    }

    public static SeqPosition coerce(Object obj, String str, String str2) {
        KAttr kAttrCoerceOrNull = coerceOrNull(obj, str, str2);
        if (kAttrCoerceOrNull != null) {
            return kAttrCoerceOrNull;
        }
        throw new ClassCastException();
    }

    @Override // gnu.kawa.xml.NodeType
    public void emitCoerceOrNullMethod(Variable variable, Compilation compilation) {
        CodeAttr code = compilation.getCode();
        if (variable != null) {
            code.emitLoad(variable);
        }
        code.emitPushString(this.qname.getNamespaceURI());
        code.emitPushString(this.qname.getLocalName());
        code.emitInvokeStatic(coerceOrNullMethod);
    }

    static {
        ClassType classTypeMake = ClassType.make("gnu.kawa.xml.AttributeType");
        typeAttributeType = classTypeMake;
        coerceMethod = classTypeMake.getDeclaredMethod("coerce", 3);
        coerceOrNullMethod = classTypeMake.getDeclaredMethod("coerceOrNull", 3);
    }

    @Override // gnu.kawa.xml.NodeType, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        String name = getName();
        if (name == null) {
            name = "";
        }
        objectOutput.writeUTF(name);
        objectOutput.writeObject(this.qname);
    }

    @Override // gnu.kawa.xml.NodeType, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        String utf = objectInput.readUTF();
        if (utf.length() > 0) {
            setName(utf);
        }
        this.qname = (Symbol) objectInput.readObject();
    }

    @Override // gnu.kawa.xml.NodeType, gnu.bytecode.Type
    public String toString() {
        return "AttributeType " + this.qname;
    }
}
