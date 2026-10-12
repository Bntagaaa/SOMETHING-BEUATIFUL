package kawa.lang;

import _COROUTINE.a;
import gnu.expr.Expression;
import gnu.expr.ScopeExp;
import gnu.lists.Pair;
import gnu.mapping.Environment;
import gnu.mapping.UnboundLocationException;
import gnu.mapping.WrongArguments;
import gnu.mapping.WrongType;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public class AutoloadSyntax extends Syntax implements Externalizable {
    String className;
    Environment env;
    Syntax loaded;

    public AutoloadSyntax() {
    }

    public AutoloadSyntax(String str, String str2) {
        super(str);
        this.className = str2;
    }

    public AutoloadSyntax(String str, String str2, Environment environment) {
        super(str);
        this.className = str2;
        this.env = environment;
    }

    public void print(PrintWriter printWriter) {
        printWriter.print(toString());
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append("#<syntax ");
        if (getName() != null) {
            stringBuffer.append(getName());
            stringBuffer.append(' ');
        }
        if (this.loaded != null) {
            stringBuffer.append("autoloaded>");
        } else {
            stringBuffer.append("autoload ");
            stringBuffer.append(this.className);
            stringBuffer.append(">");
        }
        return stringBuffer.toString();
    }

    private void throw_error(String str) {
        StringBuilder sbP = a.p(str);
        sbP.append(this.className);
        sbP.append(" while autoloading ");
        sbP.append(getName() == null ? "" : getName().toString());
        throw new GenericError(sbP.toString());
    }

    public void load() throws IllegalAccessException, InstantiationException {
        String name = getName();
        try {
            Object objNewInstance = Class.forName(this.className).newInstance();
            if (objNewInstance instanceof Syntax) {
                Syntax syntax = (Syntax) objNewInstance;
                this.loaded = syntax;
                if (name == null || syntax.getName() != null) {
                    return;
                }
                this.loaded.setName(name);
                return;
            }
            throw_error("failed to autoload valid syntax object ");
        } catch (UnboundLocationException e) {
            throw_error("missing symbol '" + e.getMessage() + "' ");
        } catch (WrongArguments unused) {
            throw_error("type error");
        } catch (ClassNotFoundException unused2) {
            throw_error("failed to find class ");
        } catch (IllegalAccessException unused3) {
            throw_error("illegal access in class ");
        } catch (InstantiationException unused4) {
            throw_error("failed to instantiate class ");
        }
    }

    @Override // kawa.lang.Syntax
    public void scanForm(Pair pair, ScopeExp scopeExp, Translator translator) throws IllegalAccessException, InstantiationException {
        if (this.loaded == null) {
            try {
                load();
            } catch (RuntimeException e) {
                translator.syntaxError(e.getMessage());
                return;
            }
        }
        this.loaded.scanForm(pair, scopeExp, translator);
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) throws IllegalAccessException, InstantiationException {
        if (this.loaded == null) {
            try {
                load();
            } catch (WrongType e) {
                return translator.syntaxError(e.getMessage());
            } catch (GenericError e2) {
                return translator.syntaxError(e2.getMessage());
            }
        }
        Syntax syntax = translator.currentSyntax;
        Syntax syntax2 = this.loaded;
        translator.currentSyntax = syntax2;
        try {
            return syntax2.rewriteForm(pair, translator);
        } finally {
            translator.currentSyntax = syntax;
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(getName());
        objectOutput.writeObject(this.className);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setName((String) objectInput.readObject());
        this.className = (String) objectInput.readObject();
    }
}
