package kawa.standard;

import com.google.appinventor.components.runtime.repackaged.org.json.zip.JSONzip;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.LambdaExp;
import gnu.expr.LangExp;
import gnu.expr.ModuleExp;
import gnu.expr.ScopeExp;
import gnu.expr.SetExp;
import gnu.lists.Pair;
import gnu.mapping.Symbol;
import kawa.lang.Lambda;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class define extends Syntax {
    public static final define defineRaw = new define(SchemeCompilation.lambda);
    Lambda lambda;

    public String getName(int i) {
        if ((i & 4) != 0) {
            return "define-private";
        }
        if ((i & 8) != 0) {
            return "define-constant";
        }
        return "define";
    }

    public define(Lambda lambda) {
        this.lambda = lambda;
    }

    @Override // kawa.lang.Syntax
    public void scanForm(Pair pair, ScopeExp scopeExp, Translator translator) {
        int i;
        Pair pair2 = (Pair) pair.getCdr();
        Pair pair3 = (Pair) pair2.getCdr();
        Pair pair4 = (Pair) pair3.getCdr();
        Pair pair5 = (Pair) pair4.getCdr();
        Object car = pair2.getCar();
        SyntaxForm syntaxForm = null;
        while (car instanceof SyntaxForm) {
            syntaxForm = (SyntaxForm) car;
            car = syntaxForm.getDatum();
        }
        int iIntValue = ((Number) Translator.stripSyntax(pair3.getCar())).intValue();
        boolean z = (iIntValue & 4) != 0;
        boolean z2 = (iIntValue & 8) != 0;
        translator.currentScope();
        Object objNamespaceResolve = translator.namespaceResolve(car);
        if (!(objNamespaceResolve instanceof Symbol)) {
            translator.error('e', "'" + objNamespaceResolve + "' is not a valid identifier");
            objNamespaceResolve = null;
        }
        Object objPushPositionOf = translator.pushPositionOf(pair2);
        Declaration declarationDefine = translator.define(objNamespaceResolve, syntaxForm, scopeExp);
        translator.popPositionOf(objPushPositionOf);
        Object symbol = declarationDefine.getSymbol();
        if (z) {
            declarationDefine.setFlag(16777216L);
            declarationDefine.setPrivate(true);
        }
        if (z2) {
            declarationDefine.setFlag(JSONzip.int14);
        }
        declarationDefine.setFlag(262144L);
        if ((iIntValue & 2) != 0) {
            LambdaExp lambdaExp = new LambdaExp();
            lambdaExp.setSymbol(symbol);
            if (Compilation.inlineOk) {
                declarationDefine.setProcedureDecl(true);
                declarationDefine.setType(Compilation.typeProcedure);
                lambdaExp.nameDecl = declarationDefine;
            }
            Object car2 = pair5.getCar();
            Object cdr = pair5.getCdr();
            Translator.setLine(lambdaExp, pair2);
            this.lambda.rewriteFormals(lambdaExp, car2, translator, null);
            Object objRewriteAttrs = this.lambda.rewriteAttrs(lambdaExp, cdr, translator);
            if (objRewriteAttrs != cdr) {
                pair3 = new Pair(pair3.getCar(), new Pair(pair4.getCar(), new Pair(car2, objRewriteAttrs)));
            }
            declarationDefine.noteValue(lambdaExp);
        }
        if (!(scopeExp instanceof ModuleExp) || z || (Compilation.inlineOk && !translator.sharedModuleDefs())) {
            i = 1;
        } else {
            i = 1;
            declarationDefine.setCanWrite(true);
        }
        if ((i & iIntValue) != 0) {
            declarationDefine.setTypeExp(new LangExp(pair4));
            declarationDefine.setFlag(8192L);
        }
        Pair pairMakePair = Translator.makePair(pair, this, Translator.makePair(pair2, declarationDefine, pair3));
        Translator.setLine(declarationDefine, pair2);
        translator.formStack.addElement(pairMakePair);
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        Expression expression;
        Pair pair2 = (Pair) pair.getCdr();
        Pair pair3 = (Pair) pair2.getCdr();
        Pair pair4 = (Pair) ((Pair) pair3.getCdr()).getCdr();
        Object objStripSyntax = Translator.stripSyntax(pair2.getCar());
        int iIntValue = ((Number) Translator.stripSyntax(pair3.getCar())).intValue();
        boolean z = (iIntValue & 4) != 0;
        if (!(objStripSyntax instanceof Declaration)) {
            return translator.syntaxError(getName(iIntValue) + " is only allowed in a <body>");
        }
        Declaration declaration = (Declaration) objStripSyntax;
        if (declaration.getFlag(8192L)) {
            Expression typeExp = declaration.getTypeExp();
            if (typeExp instanceof LangExp) {
                declaration.setType(translator.exp2Type((Pair) ((LangExp) typeExp).getLangValue()));
            }
        }
        if ((iIntValue & 2) != 0) {
            LambdaExp lambdaExp = (LambdaExp) declaration.getValue();
            this.lambda.rewriteBody(lambdaExp, pair4.getCdr(), translator);
            expression = lambdaExp;
            if (!Compilation.inlineOk) {
                declaration.noteValue(null);
                expression = lambdaExp;
            }
        } else {
            Expression expressionRewrite = translator.rewrite(pair4.getCar());
            declaration.noteValue(((declaration.context instanceof ModuleExp) && !z && declaration.getCanWrite()) ? null : expressionRewrite);
            expression = expressionRewrite;
        }
        SetExp setExp = new SetExp(declaration, expression);
        setExp.setDefining(true);
        if (z && !(translator.currentScope() instanceof ModuleExp)) {
            translator.error('w', "define-private not at top level " + translator.currentScope());
        }
        return setExp;
    }
}
