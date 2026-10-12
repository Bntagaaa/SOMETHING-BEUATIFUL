package kawa.standard;

import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.LambdaExp;
import gnu.expr.LetExp;
import gnu.expr.QuoteExp;
import gnu.expr.ScopeExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Symbol;
import java.util.Stack;
import kawa.lang.Macro;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.TemplateScope;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class let_syntax extends Syntax {
    public static final let_syntax let_syntax = new let_syntax(false, "let-syntax");
    public static final let_syntax letrec_syntax = new let_syntax(true, "letrec-syntax");
    boolean recursive;

    public let_syntax(boolean z, String str) {
        super(str);
        this.recursive = z;
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        SyntaxForm syntaxForm;
        ScopeExp scopeExpCurrentScope;
        if (!(obj instanceof Pair)) {
            return translator.syntaxError("missing let-syntax arguments");
        }
        Pair pair = (Pair) obj;
        Object car = pair.getCar();
        Object cdr = pair.getCdr();
        int iListLength = Translator.listLength(car);
        if (iListLength < 0) {
            return translator.syntaxError("bindings not a proper list");
        }
        Expression[] expressionArr = new Expression[iListLength];
        Declaration[] declarationArr = new Declaration[iListLength];
        Macro[] macroArr = new Macro[iListLength];
        Pair[] pairArr = new Pair[iListLength];
        SyntaxForm[] syntaxFormArr = new SyntaxForm[iListLength];
        LetExp letExp = new LetExp(expressionArr);
        int i = 0;
        int i2 = 0;
        SyntaxForm syntaxForm2 = null;
        Stack stack = null;
        while (i2 < iListLength) {
            while (car instanceof SyntaxForm) {
                syntaxForm2 = car;
                car = syntaxForm2.getDatum();
            }
            Pair pair2 = (Pair) car;
            Object car2 = pair2.getCar();
            if (car2 instanceof SyntaxForm) {
                SyntaxForm syntaxForm3 = (SyntaxForm) car2;
                syntaxForm = syntaxForm3;
                car2 = syntaxForm3.getDatum();
            } else {
                syntaxForm = syntaxForm2;
            }
            if (!(car2 instanceof Pair)) {
                return translator.syntaxError(getName() + " binding is not a pair");
            }
            Pair pair3 = (Pair) car2;
            Object car3 = pair3.getCar();
            Expression[] expressionArr2 = expressionArr;
            SyntaxForm syntaxForm4 = syntaxForm;
            while (car3 instanceof SyntaxForm) {
                syntaxForm4 = car3;
                car3 = syntaxForm4.getDatum();
            }
            if (!(car3 instanceof String) && !(car3 instanceof Symbol)) {
                return translator.syntaxError("variable in " + getName() + " binding is not a symbol");
            }
            Object cdr2 = pair3.getCdr();
            while (cdr2 instanceof SyntaxForm) {
                syntaxForm = cdr2;
                cdr2 = syntaxForm.getDatum();
            }
            if (!(cdr2 instanceof Pair)) {
                return translator.syntaxError(getName() + " has no value for '" + car3 + "'");
            }
            Pair pair4 = (Pair) cdr2;
            if (pair4.getCdr() != LList.Empty) {
                return translator.syntaxError("let binding for '" + car3 + "' is improper list");
            }
            Declaration declaration = new Declaration(car3);
            Macro macroMake = Macro.make(declaration);
            macroArr[i2] = macroMake;
            pairArr[i2] = pair4;
            syntaxFormArr[i2] = syntaxForm;
            letExp.addDeclaration(declaration);
            TemplateScope scope = syntaxForm4 == null ? null : syntaxForm4.getScope();
            if (scope != null) {
                Declaration declarationMakeRenamedAlias = translator.makeRenamedAlias(declaration, scope);
                if (stack == null) {
                    stack = new Stack();
                }
                stack.push(declarationMakeRenamedAlias);
                i++;
            }
            if (syntaxForm != null) {
                scopeExpCurrentScope = syntaxForm.getScope();
            } else {
                scopeExpCurrentScope = this.recursive ? letExp : translator.currentScope();
            }
            macroMake.setCapturedScope(scopeExpCurrentScope);
            declarationArr[i2] = declaration;
            expressionArr2[i2] = QuoteExp.nullExp;
            car = pair2.getCdr();
            i2++;
            expressionArr = expressionArr2;
        }
        Expression[] expressionArr3 = expressionArr;
        if (this.recursive) {
            push(letExp, translator, stack);
        }
        Macro macro = translator.currentMacroDefinition;
        int i3 = 0;
        while (i3 < iListLength) {
            Macro macro2 = macroArr[i3];
            translator.currentMacroDefinition = macro2;
            Expression expressionRewrite_car = translator.rewrite_car(pairArr[i3], syntaxFormArr[i3]);
            expressionArr3[i3] = expressionRewrite_car;
            Declaration declaration2 = declarationArr[i3];
            macro2.expander = expressionRewrite_car;
            int i4 = iListLength;
            declaration2.noteValue(new QuoteExp(macro2));
            if (expressionRewrite_car instanceof LambdaExp) {
                LambdaExp lambdaExp = (LambdaExp) expressionRewrite_car;
                lambdaExp.nameDecl = declaration2;
                lambdaExp.setSymbol(declaration2.getSymbol());
            }
            i3++;
            iListLength = i4;
        }
        translator.currentMacroDefinition = macro;
        if (!this.recursive) {
            push(letExp, translator, stack);
        }
        Expression expressionRewrite_body = translator.rewrite_body(cdr);
        translator.pop(letExp);
        translator.popRenamedAlias(i);
        return expressionRewrite_body;
    }

    private void push(LetExp letExp, Translator translator, Stack stack) {
        translator.push(letExp);
        if (stack == null) {
            return;
        }
        int size = stack.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                translator.pushRenamedAlias((Declaration) stack.pop());
            }
        }
    }
}
