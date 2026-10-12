package gnu.kawa.xml;

import _COROUTINE.a;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.Compilation;
import gnu.expr.TypeValue;
import gnu.lists.AbstractSequence;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class ProcessingInstructionType extends NodeType implements TypeValue, Externalizable {
    static final Method coerceMethod;
    static final Method coerceOrNullMethod;
    public static final ProcessingInstructionType piNodeTest = new ProcessingInstructionType(null);
    public static final ClassType typeProcessingInstructionType;
    String target;

    static {
        ClassType classTypeMake = ClassType.make("gnu.kawa.xml.ProcessingInstructionType");
        typeProcessingInstructionType = classTypeMake;
        coerceMethod = classTypeMake.getDeclaredMethod("coerce", 2);
        coerceOrNullMethod = classTypeMake.getDeclaredMethod("coerceOrNull", 2);
    }

    public ProcessingInstructionType(String str) {
        super(str == null ? "processing-instruction()" : a.A("processing-instruction(", str, ")"));
        this.target = str;
    }

    public static ProcessingInstructionType getInstance(String str) {
        return str == null ? piNodeTest : new ProcessingInstructionType(str);
    }

    @Override // gnu.kawa.xml.NodeType, gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Type getImplementationType() {
        return ClassType.make("gnu.kawa.xml.KProcessingInstruction");
    }

    @Override // gnu.kawa.xml.NodeType, gnu.bytecode.ObjectType, gnu.bytecode.Type
    public void emitCoerceFromObject(CodeAttr codeAttr) {
        codeAttr.emitPushString(this.target);
        codeAttr.emitInvokeStatic(coerceMethod);
    }

    @Override // gnu.kawa.xml.NodeType, gnu.bytecode.ObjectType, gnu.bytecode.Type
    public Object coerceFromObject(Object obj) {
        return coerce(obj, this.target);
    }

    @Override // gnu.kawa.xml.NodeType, gnu.lists.ItemPredicate
    public boolean isInstancePos(AbstractSequence abstractSequence, int i) {
        int nextKind = abstractSequence.getNextKind(i);
        if (nextKind == 37) {
            String str = this.target;
            return str == null || str.equals(abstractSequence.getNextTypeObject(i));
        }
        if (nextKind == 32) {
            return isInstance(abstractSequence.getPosNext(i));
        }
        return false;
    }

    @Override // gnu.kawa.xml.NodeType, gnu.bytecode.ObjectType, gnu.bytecode.Type
    public boolean isInstance(Object obj) {
        return coerceOrNull(obj, this.target) != null;
    }

    public static KProcessingInstruction coerceOrNull(Object obj, String str) {
        KProcessingInstruction kProcessingInstruction = (KProcessingInstruction) NodeType.coerceOrNull(obj, 32);
        if (kProcessingInstruction == null) {
            return null;
        }
        if (str == null || str.equals(kProcessingInstruction.getTarget())) {
            return kProcessingInstruction;
        }
        return null;
    }

    public static KProcessingInstruction coerce(Object obj, String str) {
        KProcessingInstruction kProcessingInstructionCoerceOrNull = coerceOrNull(obj, str);
        if (kProcessingInstructionCoerceOrNull != null) {
            return kProcessingInstructionCoerceOrNull;
        }
        throw new ClassCastException();
    }

    @Override // gnu.kawa.xml.NodeType
    public void emitCoerceOrNullMethod(Variable variable, Compilation compilation) {
        CodeAttr code = compilation.getCode();
        if (variable != null) {
            code.emitLoad(variable);
        }
        code.emitPushString(this.target);
        code.emitInvokeStatic(coerceOrNullMethod);
    }

    @Override // gnu.kawa.xml.NodeType, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.target);
    }

    @Override // gnu.kawa.xml.NodeType, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.target = (String) objectInput.readObject();
    }

    @Override // gnu.kawa.xml.NodeType, gnu.bytecode.Type
    public String toString() {
        StringBuilder sb = new StringBuilder("ProcessingInstructionType ");
        String str = this.target;
        if (str == null) {
            str = "*";
        }
        sb.append(str);
        return sb.toString();
    }
}
