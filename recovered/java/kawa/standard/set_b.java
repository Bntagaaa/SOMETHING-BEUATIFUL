package kawa.standard;

import com.google.appinventor.components.runtime.repackaged.org.json.zip.JSONzip;
import gnu.expr.ApplyExp;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.ModuleExp;
import gnu.expr.ReferenceExp;
import gnu.expr.ScopeExp;
import gnu.expr.SetExp;
import gnu.kawa.functions.CompilationHelpers;
import gnu.lists.LList;
import gnu.lists.Pair;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class set_b extends Syntax {
    public static final set_b set;

    static {
        set_b set_bVar = new set_b();
        set = set_bVar;
        set_bVar.setName("set!");
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        int i;
        Object cdr = pair.getCdr();
        SyntaxForm syntaxForm = null;
        while (cdr instanceof SyntaxForm) {
            syntaxForm = (SyntaxForm) cdr;
            cdr = syntaxForm.getDatum();
        }
        if (!(cdr instanceof Pair)) {
            return translator.syntaxError("missing name");
        }
        Pair pair2 = (Pair) cdr;
        Expression expressionRewrite_car = translator.rewrite_car(pair2, syntaxForm);
        Object cdr2 = pair2.getCdr();
        while (cdr2 instanceof SyntaxForm) {
            syntaxForm = (SyntaxForm) cdr2;
            cdr2 = syntaxForm.getDatum();
        }
        if (cdr2 instanceof Pair) {
            Pair pair3 = (Pair) cdr2;
            if (pair3.getCdr() == LList.Empty) {
                Expression expressionRewrite_car2 = translator.rewrite_car(pair3, syntaxForm);
                if (expressionRewrite_car instanceof ApplyExp) {
                    ApplyExp applyExp = (ApplyExp) expressionRewrite_car;
                    Expression[] args = applyExp.getArgs();
                    int length = args.length;
                    Expression function = applyExp.getFunction();
                    if (args.length > 0 && (function instanceof ReferenceExp) && ((ReferenceExp) function).getBinding() == Scheme.applyFieldDecl) {
                        length--;
                        function = args[0];
                        i = 1;
                    } else {
                        i = 0;
                    }
                    Expression[] expressionArr = {function};
                    Expression[] expressionArr2 = new Expression[1 + length];
                    System.arraycopy(args, i, expressionArr2, 0, length);
                    expressionArr2[length] = expressionRewrite_car2;
                    return new ApplyExp((Expression) new ApplyExp((Expression) new ReferenceExp(CompilationHelpers.setterDecl), expressionArr), expressionArr2);
                }
                if (!(expressionRewrite_car instanceof ReferenceExp)) {
                    return translator.syntaxError("first set! argument is not a variable name");
                }
                ReferenceExp referenceExp = (ReferenceExp) expressionRewrite_car;
                Declaration binding = referenceExp.getBinding();
                SetExp setExp = new SetExp(referenceExp.getSymbol(), expressionRewrite_car2);
                setExp.setContextDecl(referenceExp.contextDecl());
                if (binding != null) {
                    binding.setCanWrite(true);
                    setExp.setBinding(binding);
                    Declaration declarationFollowAliases = Declaration.followAliases(binding);
                    if (declarationFollowAliases != null) {
                        declarationFollowAliases.noteValue(expressionRewrite_car2);
                    }
                    if (declarationFollowAliases.getFlag(JSONzip.int14)) {
                        return translator.syntaxError("constant variable " + declarationFollowAliases.getName() + " is set!");
                    }
                    ScopeExp scopeExp = declarationFollowAliases.context;
                    if (scopeExp != translator.mainLambda && (scopeExp instanceof ModuleExp) && !declarationFollowAliases.getFlag(268435456L) && !declarationFollowAliases.context.getFlag(1048576)) {
                        translator.error('w', declarationFollowAliases, "imported variable ", " is set!");
                    }
                }
                return setExp;
            }
        }
        return translator.syntaxError("missing or extra arguments to set!");
    }
}
