package kawa.lang;

import _COROUTINE.a;
import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleContext;
import gnu.kawa.reflect.ClassMemberLocation;
import gnu.mapping.Environment;
import gnu.mapping.EnvironmentKey;
import gnu.mapping.HasSetter;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import gnu.mapping.UnboundLocationException;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.PrintWriter;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class AutoloadProcedure extends Procedure implements Externalizable {
    static final Class classModuleBody = ModuleBody.class;
    String className;
    Language language;
    Procedure loaded;

    public AutoloadProcedure() {
    }

    public AutoloadProcedure(String str, String str2) {
        super(str);
        this.className = str2;
    }

    public AutoloadProcedure(String str, String str2, Language language) {
        super(str);
        this.className = str2;
        this.language = language;
    }

    public void print(PrintWriter printWriter) {
        printWriter.print("#<procedure ");
        String name = getName();
        if (name != null) {
            printWriter.print(name);
        }
        printWriter.print(Typography.greater);
    }

    private void throw_error(String str) {
        this.loaded = null;
        String name = getName();
        StringBuilder sbP = a.p(str);
        sbP.append(this.className);
        sbP.append(" while autoloading ");
        sbP.append(name == null ? "" : name.toString());
        throw new RuntimeException(sbP.toString());
    }

    public void load() throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException {
        Object objNewInstance;
        Object symbol = getSymbol();
        Language defaultLanguage = this.language;
        if (defaultLanguage == null) {
            defaultLanguage = Language.getDefaultLanguage();
        }
        Environment langEnvironment = defaultLanguage.getLangEnvironment();
        Symbol symbol2 = symbol instanceof Symbol ? (Symbol) symbol : langEnvironment.getSymbol(symbol.toString());
        try {
            Class<?> cls = Class.forName(this.className);
            if (classModuleBody.isAssignableFrom(cls)) {
                if (ModuleContext.getContext().searchInstance(cls) == null) {
                    try {
                        objNewInstance = cls.getDeclaredField("$instance").get(null);
                    } catch (NoSuchFieldException unused) {
                        objNewInstance = cls.newInstance();
                    }
                    ClassMemberLocation.defineAll(objNewInstance, defaultLanguage, langEnvironment);
                    if (objNewInstance instanceof ModuleBody) {
                        ((ModuleBody) objNewInstance).run();
                    }
                }
                Object function = langEnvironment.getFunction(symbol2, null);
                if (function == null || !(function instanceof Procedure)) {
                    throw_error("invalid ModuleBody class - does not define " + symbol);
                }
                this.loaded = (Procedure) function;
            } else {
                Procedure procedure = (Procedure) cls.newInstance();
                this.loaded = procedure;
                if (procedure == this) {
                    throw_error("circularity detected");
                }
                if (symbol != null) {
                    try {
                        langEnvironment.put(symbol2, defaultLanguage.hasSeparateFunctionNamespace() ? EnvironmentKey.FUNCTION : null, this.loaded);
                    } catch (UnboundLocationException unused2) {
                    }
                }
            }
            if (symbol == null || this.loaded.getSymbol() != null) {
                return;
            }
            this.loaded.setSymbol(symbol);
        } catch (ClassNotFoundException unused3) {
            throw_error("failed to find class ");
        } catch (IllegalAccessException unused4) {
            throw_error("illegal access in class ");
        } catch (InstantiationException unused5) {
            throw_error("failed to instantiate class ");
        }
    }

    public Procedure getLoaded() {
        if (this.loaded == null) {
            load();
        }
        return this.loaded;
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return getLoaded().numArgs();
    }

    @Override // gnu.mapping.Procedure
    public Object apply0() throws Throwable {
        return getLoaded().apply0();
    }

    @Override // gnu.mapping.Procedure
    public Object apply1(Object obj) throws Throwable {
        return getLoaded().apply1(obj);
    }

    @Override // gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) throws Throwable {
        return getLoaded().apply2(obj, obj2);
    }

    @Override // gnu.mapping.Procedure
    public Object apply3(Object obj, Object obj2, Object obj3) throws Throwable {
        return getLoaded().apply3(obj, obj2, obj3);
    }

    @Override // gnu.mapping.Procedure
    public Object apply4(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        return getLoaded().apply4(obj, obj2, obj3, obj4);
    }

    @Override // gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        if (this.loaded == null) {
            load();
        }
        Procedure procedure = this.loaded;
        if (procedure instanceof AutoloadProcedure) {
            throw new InternalError("circularity in autoload of " + getName());
        }
        return procedure.applyN(objArr);
    }

    @Override // gnu.mapping.Procedure, gnu.mapping.HasSetter
    public Procedure getSetter() throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException {
        if (this.loaded == null) {
            load();
        }
        Procedure procedure = this.loaded;
        if (procedure instanceof HasSetter) {
            return procedure.getSetter();
        }
        return super.getSetter();
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

    @Override // gnu.mapping.PropertySet
    public Object getProperty(Object obj, Object obj2) {
        Object property = super.getProperty(obj, null);
        return property != null ? property : getLoaded().getProperty(obj, obj2);
    }
}
