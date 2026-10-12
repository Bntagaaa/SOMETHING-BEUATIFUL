package gnu.commonlisp.lang;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.Keyword;
import gnu.expr.QuoteExp;
import gnu.kawa.lispexpr.LangObjType;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.lispexpr.ReadTable;
import gnu.kawa.reflect.FieldLocation;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.mapping.Environment;
import gnu.mapping.EnvironmentKey;
import gnu.mapping.Location;
import gnu.mapping.Named;
import gnu.mapping.NamedLocation;
import gnu.mapping.Namespace;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import java.lang.reflect.Field;
import kawa.lang.Syntax;

/* loaded from: classes2.dex */
public abstract class Lisp2 extends LispLanguage {
    public static final LList FALSE;
    public static final Symbol TRUE;
    public static final Expression nilExpr;

    @Override // gnu.expr.Language
    public boolean hasSeparateFunctionNamespace() {
        return true;
    }

    static {
        LList lList = LList.Empty;
        FALSE = lList;
        TRUE = Namespace.getDefault().getSymbol("t");
        nilExpr = new QuoteExp(lList);
    }

    @Override // gnu.expr.Language
    public boolean isTrue(Object obj) {
        return obj != FALSE;
    }

    @Override // gnu.expr.Language
    public Object booleanObject(boolean z) {
        return z ? TRUE : FALSE;
    }

    @Override // gnu.expr.Language
    public void emitPushBoolean(boolean z, CodeAttr codeAttr) {
        if (z) {
            codeAttr.emitGetStatic(ClassType.make("gnu.commonlisp.lang.Lisp2").getDeclaredField("TRUE"));
        } else {
            codeAttr.emitGetStatic(Compilation.scmListType.getDeclaredField("Empty"));
        }
    }

    @Override // gnu.expr.Language
    public Object noValue() {
        return FALSE;
    }

    @Override // gnu.kawa.lispexpr.LispLanguage
    public boolean selfEvaluatingSymbol(Object obj) {
        return (obj instanceof Keyword) || obj == TRUE || obj == FALSE;
    }

    @Override // gnu.expr.Language
    public Object getEnvPropertyFor(Field field, Object obj) {
        if (Compilation.typeProcedure.getReflectClass().isAssignableFrom(field.getType()) || (obj instanceof Syntax)) {
            return EnvironmentKey.FUNCTION;
        }
        return null;
    }

    @Override // gnu.expr.Language
    public int getNamespaceOf(Declaration declaration) {
        if (declaration.isAlias()) {
            return 3;
        }
        return declaration.isProcedureDecl() ? 2 : 1;
    }

    public static Object asSymbol(String str) {
        if (str == "nil") {
            return FALSE;
        }
        return Environment.getCurrent().getSymbol(str);
    }

    @Override // gnu.kawa.lispexpr.LispLanguage
    public Symbol fromLangSymbol(Object obj) {
        if (obj == LList.Empty) {
            return this.environ.getSymbol("nil");
        }
        return super.fromLangSymbol(obj);
    }

    public static Object getString(String str) {
        return new FString(str);
    }

    public static Object getString(Symbol symbol) {
        return getString(symbol.getName());
    }

    public void defun(String str, Object obj) {
        this.environ.define(getSymbol(str), EnvironmentKey.FUNCTION, obj);
        if (obj instanceof Named) {
            Named named = (Named) obj;
            if (named.getName() == null) {
                named.setName(str);
            }
        }
    }

    public void defun(Symbol symbol, Object obj) {
        this.environ.define(symbol, EnvironmentKey.FUNCTION, obj);
        if (obj instanceof Procedure) {
            Procedure procedure = (Procedure) obj;
            if (procedure.getSymbol() == null) {
                procedure.setSymbol(symbol);
            }
        }
    }

    public void importLocation(Location location) {
        Symbol keySymbol = ((NamedLocation) location).getKeySymbol();
        Environment environment = this.environ;
        Object obj = EnvironmentKey.FUNCTION;
        if (environment.isBound(keySymbol, obj)) {
            return;
        }
        Location base = location.getBase();
        if ((base instanceof FieldLocation) && ((FieldLocation) base).isProcedureOrSyntax()) {
            this.environ.addLocation(keySymbol, obj, base);
            return;
        }
        Object obj2 = base.get(null);
        if (obj2 != null) {
            if ((obj2 instanceof Procedure) || (obj2 instanceof Syntax)) {
                defun(keySymbol, obj2);
            } else if (obj2 instanceof LangObjType) {
                defun(keySymbol, ((LangObjType) obj2).getConstructor());
            } else {
                define(keySymbol.getName(), obj2);
            }
        }
    }

    @Override // gnu.kawa.lispexpr.LispLanguage
    public ReadTable createReadTable() {
        a aVar = new a();
        aVar.initialize();
        aVar.setInitialColonIsKeyword(true);
        return aVar;
    }
}
