package gnu.bytecode;

import java.util.Enumeration;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class VarEnumerator implements Enumeration {
    Scope currentScope;
    Variable next;
    Scope topScope;

    public VarEnumerator(Scope scope) {
        this.topScope = scope;
        reset();
    }

    public final void reset() {
        Scope scope = this.topScope;
        this.currentScope = scope;
        if (scope != null) {
            Variable variableFirstVar = scope.firstVar();
            this.next = variableFirstVar;
            if (variableFirstVar == null) {
                fixup();
            }
        }
    }

    private void fixup() {
        while (this.next == null) {
            Scope scope = this.currentScope.firstChild;
            if (scope == null) {
                while (true) {
                    Scope scope2 = this.currentScope;
                    Scope scope3 = scope2.nextSibling;
                    if (scope3 == null) {
                        if (scope2 == this.topScope) {
                            return;
                        } else {
                            this.currentScope = scope2.parent;
                        }
                    } else {
                        this.currentScope = scope3;
                        break;
                    }
                }
            } else {
                this.currentScope = scope;
            }
            this.next = this.currentScope.firstVar();
        }
    }

    public final Variable nextVar() {
        Variable variable = this.next;
        if (variable != null) {
            Variable variableNextVar = variable.nextVar();
            this.next = variableNextVar;
            if (variableNextVar == null) {
                fixup();
            }
        }
        return variable;
    }

    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        return this.next != null;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        Variable variableNextVar = nextVar();
        if (variableNextVar != null) {
            return variableNextVar;
        }
        throw new NoSuchElementException("VarEnumerator");
    }
}
