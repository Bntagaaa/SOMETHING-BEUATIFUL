package gnu.bytecode;

import androidx.core.os.EnvironmentCompat;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class LocalVarsAttr extends Attribute {
    public Scope current_scope;
    private Method method;
    Scope parameter_scope;
    Variable[] used;

    public LocalVarsAttr(CodeAttr codeAttr) {
        super("LocalVariableTable");
        addToFrontOf(codeAttr);
        this.method = (Method) codeAttr.getContainer();
        codeAttr.locals = this;
    }

    public LocalVarsAttr(Method method) {
        super("LocalVariableTable");
        CodeAttr codeAttr = method.code;
        this.method = method;
        codeAttr.locals = this;
    }

    public final Method getMethod() {
        return this.method;
    }

    public VarEnumerator allVars() {
        return new VarEnumerator(this.parameter_scope);
    }

    public void enterScope(Scope scope) {
        scope.linkChild(this.current_scope);
        this.current_scope = scope;
        CodeAttr code = this.method.getCode();
        for (Variable variableFirstVar = scope.firstVar(); variableFirstVar != null; variableFirstVar = variableFirstVar.nextVar()) {
            if (variableFirstVar.isSimple()) {
                if (!variableFirstVar.isAssigned()) {
                    variableFirstVar.allocateLocal(code);
                } else {
                    Variable[] variableArr = this.used;
                    int i = variableFirstVar.offset;
                    Variable variable = variableArr[i];
                    if (variable == null) {
                        variableArr[i] = variableFirstVar;
                    } else if (variable != variableFirstVar) {
                        throw new Error("inconsistent local variable assignments for " + variableFirstVar + " != " + this.used[variableFirstVar.offset]);
                    }
                }
            }
        }
    }

    public void preserveVariablesUpto(Scope scope) {
        for (Scope scope2 = this.current_scope; scope2 != scope; scope2 = scope2.parent) {
            scope2.preserved = true;
        }
    }

    public final boolean isEmpty() {
        VarEnumerator varEnumeratorAllVars = allVars();
        while (true) {
            Variable variableNextVar = varEnumeratorAllVars.nextVar();
            if (variableNextVar == null) {
                return true;
            }
            if (variableNextVar.isSimple() && variableNextVar.name != null) {
                return false;
            }
        }
    }

    public final int getCount() {
        VarEnumerator varEnumeratorAllVars = allVars();
        int i = 0;
        while (true) {
            Variable variableNextVar = varEnumeratorAllVars.nextVar();
            if (variableNextVar == null) {
                return i;
            }
            if (variableNextVar.shouldEmit()) {
                i++;
            }
        }
    }

    @Override // gnu.bytecode.Attribute
    public final int getLength() {
        return (getCount() * 10) + 2;
    }

    @Override // gnu.bytecode.Attribute
    public void assignConstants(ClassType classType) {
        super.assignConstants(classType);
        VarEnumerator varEnumeratorAllVars = allVars();
        while (true) {
            Variable variableNextVar = varEnumeratorAllVars.nextVar();
            if (variableNextVar == null) {
                return;
            }
            if (variableNextVar.isSimple() && variableNextVar.name != null) {
                if (variableNextVar.name_index == 0) {
                    variableNextVar.name_index = classType.getConstants().addUtf8(variableNextVar.getName()).index;
                }
                if (variableNextVar.signature_index == 0) {
                    variableNextVar.signature_index = classType.getConstants().addUtf8(variableNextVar.getType().getSignature()).index;
                }
            }
        }
    }

    @Override // gnu.bytecode.Attribute
    public void write(DataOutputStream dataOutputStream) throws IOException {
        VarEnumerator varEnumeratorAllVars = allVars();
        dataOutputStream.writeShort(getCount());
        varEnumeratorAllVars.reset();
        while (true) {
            Variable variableNextVar = varEnumeratorAllVars.nextVar();
            if (variableNextVar == null) {
                return;
            }
            if (variableNextVar.shouldEmit()) {
                Scope scope = variableNextVar.scope;
                int i = scope.start.position;
                int i2 = scope.end.position;
                dataOutputStream.writeShort(i);
                dataOutputStream.writeShort(i2 - i);
                dataOutputStream.writeShort(variableNextVar.name_index);
                dataOutputStream.writeShort(variableNextVar.signature_index);
                dataOutputStream.writeShort(variableNextVar.offset);
            }
        }
    }

    @Override // gnu.bytecode.Attribute
    public void print(ClassTypeWriter classTypeWriter) {
        Label label;
        Label label2;
        int i;
        int i2;
        VarEnumerator varEnumeratorAllVars = allVars();
        classTypeWriter.print("Attribute \"");
        classTypeWriter.print(getName());
        classTypeWriter.print("\", length:");
        classTypeWriter.print(getLength());
        classTypeWriter.print(", count: ");
        classTypeWriter.println(getCount());
        varEnumeratorAllVars.reset();
        while (true) {
            Variable variableNextVar = varEnumeratorAllVars.nextVar();
            if (variableNextVar == null) {
                return;
            }
            if (variableNextVar.isSimple() && variableNextVar.name != null) {
                classTypeWriter.print("  slot#");
                classTypeWriter.print(variableNextVar.offset);
                classTypeWriter.print(": name: ");
                classTypeWriter.printOptionalIndex(variableNextVar.name_index);
                classTypeWriter.print(variableNextVar.getName());
                classTypeWriter.print(", type: ");
                classTypeWriter.printOptionalIndex(variableNextVar.signature_index);
                classTypeWriter.printSignature(variableNextVar.getType());
                classTypeWriter.print(" (pc: ");
                Scope scope = variableNextVar.scope;
                if (scope == null || (label = scope.start) == null || (label2 = scope.end) == null || (i = label.position) < 0 || (i2 = label2.position) < 0) {
                    classTypeWriter.print(EnvironmentCompat.MEDIA_UNKNOWN);
                } else {
                    classTypeWriter.print(i);
                    classTypeWriter.print(" length: ");
                    classTypeWriter.print(i2 - i);
                }
                classTypeWriter.println(')');
            }
        }
    }
}
