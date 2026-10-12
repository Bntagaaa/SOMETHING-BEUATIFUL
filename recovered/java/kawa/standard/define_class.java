package kawa.standard;

import gnu.expr.ClassExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.ScopeExp;
import gnu.expr.SetExp;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.Symbol;
import java.util.Vector;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class define_class extends Syntax {
    public static final define_class define_class = new define_class("define-class", false);
    public static final define_class define_simple_class = new define_class("define-simple-class", true);
    boolean isSimple;
    object objectSyntax;

    public define_class(object objectVar, boolean z) {
        this.objectSyntax = objectVar;
        this.isSimple = z;
    }

    public define_class(String str, boolean z) {
        super(str);
        this.objectSyntax = object.objectSyntax;
        this.isSimple = z;
    }

    @Override // kawa.lang.Syntax
    public boolean scanForDefinitions(Pair pair, Vector vector, ScopeExp scopeExp, Translator translator) {
        Object cdr = pair.getCdr();
        SyntaxForm syntaxForm = null;
        while (cdr instanceof SyntaxForm) {
            syntaxForm = (SyntaxForm) cdr;
            cdr = syntaxForm.getDatum();
        }
        if (!(cdr instanceof Pair)) {
            return super.scanForDefinitions(pair, vector, scopeExp, translator);
        }
        Pair pair2 = (Pair) cdr;
        Object car = pair2.getCar();
        while (car instanceof SyntaxForm) {
            syntaxForm = (SyntaxForm) car;
            car = syntaxForm.getDatum();
        }
        Object objNamespaceResolve = translator.namespaceResolve(car);
        if (!(objNamespaceResolve instanceof String) && !(objNamespaceResolve instanceof Symbol)) {
            translator.error('e', "missing class name");
            return false;
        }
        Declaration declarationDefine = translator.define(objNamespaceResolve, syntaxForm, scopeExp);
        if (pair2 instanceof PairWithPosition) {
            declarationDefine.setLocation((PairWithPosition) pair2);
        }
        ClassExp classExp = new ClassExp(this.isSimple);
        declarationDefine.noteValue(classExp);
        declarationDefine.setFlag(536887296L);
        declarationDefine.setType(this.isSimple ? Compilation.typeClass : Compilation.typeClassType);
        translator.mustCompileHere();
        String name = objNamespaceResolve instanceof Symbol ? ((Symbol) objNamespaceResolve).getName() : objNamespaceResolve.toString();
        int length = name.length();
        if (length > 2 && name.charAt(0) == '<') {
            int i = length - 1;
            if (name.charAt(i) == '>') {
                name = name.substring(1, i);
            }
        }
        classExp.setName(name);
        Object cdr2 = pair2.getCdr();
        while (cdr2 instanceof SyntaxForm) {
            syntaxForm = cdr2;
            cdr2 = syntaxForm.getDatum();
        }
        if (!(cdr2 instanceof Pair)) {
            translator.error('e', "missing class members");
            return false;
        }
        Pair pair3 = (Pair) cdr2;
        ScopeExp scopeExpCurrentScope = translator.currentScope();
        if (syntaxForm != null) {
            translator.setCurrentScope(syntaxForm.getScope());
        }
        Object[] objArrScanClassDef = this.objectSyntax.scanClassDef(pair3, classExp, translator);
        if (syntaxForm != null) {
            translator.setCurrentScope(scopeExpCurrentScope);
        }
        if (objArrScanClassDef == null) {
            return false;
        }
        vector.addElement(Translator.makePair(pair, this, Translator.makePair(pair3, declarationDefine, objArrScanClassDef)));
        return true;
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        Declaration declaration;
        Object cdr = pair.getCdr();
        if (cdr instanceof Pair) {
            pair = (Pair) cdr;
            Object car = pair.getCar();
            if (!(car instanceof Declaration)) {
                return translator.syntaxError(getName() + " can only be used in <body>");
            }
            declaration = (Declaration) car;
        } else {
            declaration = null;
        }
        ClassExp classExp = (ClassExp) declaration.getValue();
        this.objectSyntax.rewriteClassDef((Object[]) pair.getCdr(), translator);
        SetExp setExp = new SetExp(declaration, (Expression) classExp);
        setExp.setDefining(true);
        return setExp;
    }
}
