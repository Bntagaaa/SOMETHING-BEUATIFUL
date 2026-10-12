package gnu.bytecode;

import java.util.Enumeration;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class Variable extends Location implements Enumeration {
    private static final int LIVE_FLAG = 4;
    private static final int PARAMETER_FLAG = 2;
    private static final int SIMPLE_FLAG = 1;
    static final int UNASSIGNED = -1;
    Variable next;
    Scope scope;
    private int flags = 1;
    int offset = -1;

    public final Variable nextVar() {
        return this.next;
    }

    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        return this.next != null;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        Variable variable = this.next;
        if (variable != null) {
            return variable;
        }
        throw new NoSuchElementException("Variable enumeration");
    }

    public Variable() {
    }

    public Variable(String str) {
        setName(str);
    }

    public Variable(String str, Type type) {
        setName(str);
        setType(type);
    }

    public final boolean isAssigned() {
        return this.offset != -1;
    }

    public final boolean dead() {
        return (this.flags & 4) == 0;
    }

    private void setFlag(boolean z, int i) {
        if (z) {
            this.flags |= i;
        } else {
            this.flags &= ~i;
        }
    }

    public final boolean isSimple() {
        return (this.flags & 1) != 0;
    }

    public final void setSimple(boolean z) {
        setFlag(z, 1);
    }

    public final boolean isParameter() {
        return (this.flags & 2) != 0;
    }

    public final void setParameter(boolean z) {
        setFlag(z, 2);
    }

    public boolean reserveLocal(int i, CodeAttr codeAttr) {
        int sizeInWords = getType().getSizeInWords();
        LocalVarsAttr localVarsAttr = codeAttr.locals;
        if (localVarsAttr.used == null) {
            localVarsAttr.used = new Variable[sizeInWords + 20];
        } else {
            int maxLocals = codeAttr.getMaxLocals() + sizeInWords;
            Variable[] variableArr = codeAttr.locals.used;
            if (maxLocals >= variableArr.length) {
                Variable[] variableArr2 = new Variable[(variableArr.length * 2) + sizeInWords];
                System.arraycopy(variableArr, 0, variableArr2, 0, codeAttr.getMaxLocals());
                codeAttr.locals.used = variableArr2;
            }
        }
        for (int i2 = 0; i2 < sizeInWords; i2++) {
            if (codeAttr.locals.used[i + i2] != null) {
                return false;
            }
        }
        for (int i3 = 0; i3 < sizeInWords; i3++) {
            codeAttr.locals.used[i + i3] = this;
        }
        int i4 = sizeInWords + i;
        if (i4 > codeAttr.getMaxLocals()) {
            codeAttr.setMaxLocals(i4);
        }
        this.offset = i;
        this.flags |= 4;
        if (i != 0 || !"<init>".equals(codeAttr.getMethod().getName())) {
            return true;
        }
        setType(codeAttr.local_types[0]);
        return true;
    }

    public void allocateLocal(CodeAttr codeAttr) {
        if (this.offset != -1) {
            return;
        }
        for (int i = 0; !reserveLocal(i, codeAttr); i++) {
        }
    }

    public void freeLocal(CodeAttr codeAttr) {
        this.flags &= -5;
        int i = this.offset + (getType().size > 4 ? 2 : 1);
        while (true) {
            i--;
            if (i < this.offset) {
                return;
            }
            codeAttr.locals.used[i] = null;
            Type[] typeArr = codeAttr.local_types;
            if (typeArr != null) {
                typeArr[i] = null;
            }
        }
    }

    public boolean shouldEmit() {
        Label label;
        int i;
        Label label2;
        Scope scope = this.scope;
        return (!isSimple() || this.name == null || scope == null || (label = scope.start) == null || (i = label.position) < 0 || (label2 = scope.end) == null || label2.position <= i) ? false : true;
    }

    public String toString() {
        return "Variable[" + getName() + " offset:" + this.offset + ']';
    }
}
