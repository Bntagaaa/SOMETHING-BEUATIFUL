package gnu.kawa.reflect;

import gnu.bytecode.ClassType;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Language;
import gnu.expr.PrimProcedure;
import gnu.kawa.lispexpr.ClassNamespace;
import gnu.lists.FString;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import gnu.mapping.ProcedureN;
import gnu.mapping.Symbol;
import gnu.mapping.WrongType;

/* loaded from: classes2.dex */
public class Invoke extends ProcedureN {
    char kind;
    Language language;
    public static final Invoke invoke = new Invoke("invoke", '*');
    public static final Invoke invokeStatic = new Invoke("invoke-static", 'S');
    public static final Invoke invokeSpecial = new Invoke("invoke-special", 'P');
    public static final Invoke make = new Invoke("make", 'N');

    public Invoke(String str, char c) {
        this(str, c, Language.getDefaultLanguage());
    }

    public Invoke(String str, char c, Language language) {
        super(str);
        this.kind = c;
        this.language = language;
        setProperty(Procedure.validateApplyKey, "gnu.kawa.reflect.CompileInvoke:validateApplyInvoke");
    }

    private static ObjectType typeFrom(Object obj, Invoke invoke2) {
        if (obj instanceof Class) {
            obj = Type.make((Class) obj);
        }
        if (obj instanceof ObjectType) {
            return (ObjectType) obj;
        }
        if ((obj instanceof String) || (obj instanceof FString)) {
            return ClassType.make(obj.toString());
        }
        if (obj instanceof Symbol) {
            return ClassType.make(((Symbol) obj).getName());
        }
        if (obj instanceof ClassNamespace) {
            return ((ClassNamespace) obj).getClassType();
        }
        throw new WrongType(invoke2, 0, obj, "class-specifier");
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Object[] args = callContext.getArgs();
        char c = this.kind;
        if (c == 'S' || c == 'V' || c == 's' || c == '*') {
            int length = args.length;
            Procedure.checkArgCount(this, length);
            int i = 0;
            Object obj = args[0];
            char c2 = this.kind;
            MethodProc methodProcLookupMethods = lookupMethods((ObjectType) ((c2 == 'S' || c2 == 's') ? typeFrom(obj, this) : Type.make(obj.getClass())), args[1]);
            char c3 = this.kind;
            Object[] objArr = new Object[length - (c3 == 'S' ? 2 : 1)];
            if (c3 == 'V' || c3 == '*') {
                objArr[0] = args[0];
                i = 1;
            }
            System.arraycopy(args, 2, objArr, i, length - 2);
            methodProcLookupMethods.checkN(objArr, callContext);
            return;
        }
        callContext.writeValue(applyN(args));
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object applyN(java.lang.Object[] r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.reflect.Invoke.applyN(java.lang.Object[]):java.lang.Object");
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return (this.kind == 'N' ? 1 : 2) | (-4096);
    }

    public MethodProc lookupMethods(ObjectType objectType, Object obj) {
        String string;
        String strMangleName;
        if (this.kind == 'N') {
            strMangleName = "<init>";
        } else {
            if ((obj instanceof String) || (obj instanceof FString)) {
                string = obj.toString();
            } else if (obj instanceof Symbol) {
                string = ((Symbol) obj).getName();
            } else {
                throw new WrongType((Procedure) this, 1, (ClassCastException) null);
            }
            strMangleName = Compilation.mangleName(string);
        }
        char c = this.kind;
        MethodProc methodProcApply = ClassMethods.apply(objectType, strMangleName, c != 'P' ? (c == '*' || c == 'V') ? 'V' : (char) 0 : 'P', this.language);
        if (methodProcApply != null) {
            return methodProcApply;
        }
        throw new RuntimeException(getName() + ": no method named `" + strMangleName + "' in class " + objectType.getName());
    }

    public static synchronized ApplyExp makeInvokeStatic(ClassType classType, String str, Expression[] expressionArr) {
        PrimProcedure staticMethod;
        staticMethod = getStaticMethod(classType, str, expressionArr);
        if (staticMethod == null) {
            throw new RuntimeException("missing or ambiguous method `" + str + "' in " + classType.getName());
        }
        return new ApplyExp(staticMethod, expressionArr);
    }

    public static synchronized PrimProcedure getStaticMethod(ClassType classType, String str, Expression[] expressionArr) {
        return CompileInvoke.getStaticMethod(classType, str, expressionArr);
    }
}
