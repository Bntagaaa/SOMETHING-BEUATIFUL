package gnu.kawa.xml;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConditionalTarget;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.Target;
import gnu.expr.TypeValue;
import gnu.kawa.reflect.InstanceOf;
import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.mapping.Procedure;
import gnu.xml.NodeTree;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class NodeType extends ObjectType implements TypeValue, NodePredicate, Externalizable {
    public static final int ATTRIBUTE_OK = 4;
    public static final int COMMENT_OK = 16;
    public static final int DOCUMENT_OK = 8;
    public static final int ELEMENT_OK = 2;
    public static final int PI_OK = 32;
    public static final int TEXT_OK = 1;
    public static final NodeType anyNodeTest;
    static final Method coerceMethod;
    static final Method coerceOrNullMethod;
    public static final NodeType commentNodeTest;
    public static final NodeType documentNodeTest;
    public static final NodeType nodeType;
    public static final NodeType textNodeTest;
    public static final ClassType typeKNode = ClassType.make("gnu.kawa.xml.KNode");
    public static final ClassType typeNodeType;
    int kinds;

    public Procedure getConstructor() {
        return null;
    }

    public NodeType(String str, int i) {
        super(str);
        this.kinds = i;
    }

    public NodeType(String str) {
        this(str, -1);
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public void emitCoerceFromObject(CodeAttr codeAttr) {
        codeAttr.emitPushInt(this.kinds);
        codeAttr.emitInvokeStatic(coerceMethod);
    }

    @Override // gnu.expr.TypeValue
    public Expression convertValue(Expression expression) {
        ApplyExp applyExp = new ApplyExp(coerceMethod, expression);
        applyExp.setType(this);
        return applyExp;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Object coerceFromObject(Object obj) {
        return coerceForce(obj, this.kinds);
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Type getImplementationType() {
        return typeKNode;
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public int compare(Type type) {
        return getImplementationType().compare(type);
    }

    @Override // gnu.bytecode.ObjectType, gnu.bytecode.Type
    public boolean isInstance(Object obj) {
        if (!(obj instanceof KNode)) {
            return false;
        }
        KNode kNode = (KNode) obj;
        return isInstancePos(kNode.sequence, kNode.getPos());
    }

    public boolean isInstancePos(AbstractSequence abstractSequence, int i) {
        return isInstance(abstractSequence, i, this.kinds);
    }

    public static boolean isInstance(AbstractSequence abstractSequence, int i, int i2) {
        int nextKind = abstractSequence.getNextKind(i);
        if (i2 < 0) {
            return nextKind != 0;
        }
        if (nextKind != 0) {
            switch (nextKind) {
                default:
                    switch (nextKind) {
                        case 32:
                            break;
                        case 33:
                            return (i2 & 2) != 0;
                        case 34:
                            return (i2 & 8) != 0;
                        case 35:
                            return (i2 & 4) != 0;
                        case 36:
                            return (i2 & 16) != 0;
                        case 37:
                            return (i2 & 32) != 0;
                        default:
                            return true;
                    }
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    if ((i2 & 1) != 0) {
                        return true;
                    }
                    break;
            }
        }
        return false;
    }

    public static KNode coerceForce(Object obj, int i) {
        KNode kNodeCoerceOrNull = coerceOrNull(obj, i);
        if (kNodeCoerceOrNull != null) {
            return kNodeCoerceOrNull;
        }
        throw new ClassCastException("coerce from " + obj.getClass());
    }

    public static KNode coerceOrNull(Object obj, int i) {
        KNode kNodeMake;
        if (obj instanceof NodeTree) {
            kNodeMake = KNode.make((NodeTree) obj);
        } else {
            if (obj instanceof KNode) {
                kNodeMake = (KNode) obj;
            }
            return null;
        }
        if (isInstance(kNodeMake.sequence, kNodeMake.ipos, i)) {
            return kNodeMake;
        }
        return null;
    }

    public void emitCoerceOrNullMethod(Variable variable, Compilation compilation) {
        CodeAttr code = compilation.getCode();
        if (variable != null) {
            code.emitLoad(variable);
        }
        code.emitPushInt(this.kinds);
        code.emitInvokeStatic(coerceOrNullMethod);
    }

    @Override // gnu.expr.TypeValue
    public void emitTestIf(Variable variable, Declaration declaration, Compilation compilation) {
        CodeAttr code = compilation.getCode();
        emitCoerceOrNullMethod(variable, compilation);
        if (declaration != null) {
            code.emitDup();
            declaration.compileStore(compilation);
        }
        code.emitIfNotNull();
    }

    @Override // gnu.expr.TypeValue
    public void emitIsInstance(Variable variable, Compilation compilation, Target target) {
        if (target instanceof ConditionalTarget) {
            ConditionalTarget conditionalTarget = (ConditionalTarget) target;
            emitCoerceOrNullMethod(variable, compilation);
            CodeAttr code = compilation.getCode();
            if (conditionalTarget.trueBranchComesFirst) {
                code.emitGotoIfCompare1(conditionalTarget.ifFalse, 198);
            } else {
                code.emitGotoIfCompare1(conditionalTarget.ifTrue, 199);
            }
            conditionalTarget.emitGotoFirstBranch(code);
            return;
        }
        InstanceOf.emitIsInstance(this, variable, compilation, target);
    }

    static {
        ClassType classTypeMake = ClassType.make("gnu.kawa.xml.NodeType");
        typeNodeType = classTypeMake;
        nodeType = new NodeType("gnu.kawa.xml.KNode");
        coerceMethod = classTypeMake.getDeclaredMethod("coerceForce", 2);
        coerceOrNullMethod = classTypeMake.getDeclaredMethod("coerceOrNull", 2);
        documentNodeTest = new NodeType("document-node", 8);
        textNodeTest = new NodeType(PropertyTypeConstants.PROPERTY_TYPE_TEXT, 1);
        commentNodeTest = new NodeType("comment", 16);
        anyNodeTest = new NodeType("node");
    }

    @Override // gnu.bytecode.Type
    public String toString() {
        return "NodeType " + getName();
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        String name = getName();
        if (name == null) {
            name = "";
        }
        objectOutput.writeUTF(name);
        objectOutput.writeInt(this.kinds);
    }

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        String utf = objectInput.readUTF();
        if (utf.length() > 0) {
            setName(utf);
        }
        this.kinds = objectInput.readInt();
    }
}
