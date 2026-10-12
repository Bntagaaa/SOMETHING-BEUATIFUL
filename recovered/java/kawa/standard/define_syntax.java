package kawa.standard;

import gnu.bytecode.ClassType;
import gnu.expr.ApplyExp;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.LambdaExp;
import gnu.expr.ModuleExp;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.ScopeExp;
import gnu.expr.SetExp;
import gnu.expr.ThisExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Symbol;
import kawa.lang.Macro;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class define_syntax extends Syntax {
    boolean hygienic;
    public static final define_syntax define_macro = new define_syntax("%define-macro", false);
    public static final define_syntax define_syntax = new define_syntax("%define-syntax", true);
    static ClassType typeMacro = ClassType.make("kawa.lang.Macro");
    static PrimProcedure makeHygienic = new PrimProcedure(typeMacro.getDeclaredMethod("make", 3));
    static PrimProcedure makeNonHygienic = new PrimProcedure(typeMacro.getDeclaredMethod("makeNonHygienic", 3));
    static PrimProcedure setCapturedScope = new PrimProcedure(typeMacro.getDeclaredMethod("setCapturedScope", 1));

    static {
        makeHygienic.setSideEffectFree();
        makeNonHygienic.setSideEffectFree();
    }

    public define_syntax() {
        this.hygienic = true;
    }

    public define_syntax(Object obj, boolean z) {
        super(obj);
        this.hygienic = z;
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        return translator.syntaxError("define-syntax not in a body");
    }

    @Override // kawa.lang.Syntax
    public void scanForm(Pair pair, ScopeExp scopeExp, Translator translator) {
        Object cdr = pair.getCdr();
        Object datum = null;
        SyntaxForm syntaxForm = null;
        while (cdr instanceof SyntaxForm) {
            syntaxForm = (SyntaxForm) cdr;
            cdr = syntaxForm.getDatum();
        }
        if (cdr instanceof Pair) {
            Pair pair2 = (Pair) cdr;
            datum = pair2.getCar();
            cdr = pair2.getCdr();
        }
        SyntaxForm syntaxForm2 = syntaxForm;
        while (datum instanceof SyntaxForm) {
            syntaxForm2 = (SyntaxForm) datum;
            datum = syntaxForm2.getDatum();
        }
        Object objNamespaceResolve = translator.namespaceResolve(datum);
        if (!(objNamespaceResolve instanceof Symbol)) {
            translator.formStack.addElement(translator.syntaxError("missing macro name for " + Translator.safeCar(pair)));
            return;
        }
        if (cdr == null || Translator.safeCdr(cdr) != LList.Empty) {
            translator.formStack.addElement(translator.syntaxError("invalid syntax for " + getName()));
            return;
        }
        Declaration declarationDefine = translator.define(objNamespaceResolve, syntaxForm2, scopeExp);
        declarationDefine.setType(typeMacro);
        translator.push(declarationDefine);
        Macro macro = translator.currentMacroDefinition;
        Macro macroMake = Macro.make(declarationDefine);
        macroMake.setHygienic(this.hygienic);
        translator.currentMacroDefinition = macroMake;
        Expression expressionRewrite_car = translator.rewrite_car((Pair) cdr, syntaxForm);
        translator.currentMacroDefinition = macro;
        macroMake.expander = expressionRewrite_car;
        if (expressionRewrite_car instanceof LambdaExp) {
            ((LambdaExp) expressionRewrite_car).setFlag(256);
        }
        ApplyExp applyExp = new ApplyExp(this.hygienic ? makeHygienic : makeNonHygienic, new QuoteExp(objNamespaceResolve), expressionRewrite_car, ThisExp.makeGivingContext(scopeExp));
        declarationDefine.noteValue(applyExp);
        declarationDefine.setProcedureDecl(true);
        if (declarationDefine.context instanceof ModuleExp) {
            SetExp setExp = new SetExp(declarationDefine, (Expression) applyExp);
            setExp.setDefining(true);
            if (translator.getLanguage().hasSeparateFunctionNamespace()) {
                setExp.setFuncDef(true);
            }
            translator.formStack.addElement(setExp);
            if (translator.immediate) {
                translator.formStack.addElement(new ApplyExp(setCapturedScope, new ReferenceExp(declarationDefine), new QuoteExp(scopeExp)));
            }
        }
    }
}
