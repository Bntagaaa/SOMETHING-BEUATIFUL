package kawa.standard;

import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.LetExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Symbol;
import java.util.Stack;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.TemplateScope;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class let extends Syntax {
    public static final let let;

    static {
        let letVar = new let();
        let = letVar;
        letVar.setName("let");
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        SyntaxForm syntaxForm;
        TemplateScope scope;
        if (!(obj instanceof Pair)) {
            return translator.syntaxError("missing let arguments");
        }
        Pair pair = (Pair) obj;
        Object car = pair.getCar();
        Object cdr = pair.getCdr();
        int iListLength = Translator.listLength(car);
        if (iListLength < 0) {
            return translator.syntaxError("bindings not a proper list");
        }
        Expression[] expressionArr = new Expression[iListLength];
        LetExp letExp = new LetExp(expressionArr);
        int i = 0;
        int i2 = 0;
        SyntaxForm syntaxForm2 = null;
        Stack stack = null;
        while (i < iListLength) {
            while (car instanceof SyntaxForm) {
                syntaxForm2 = (SyntaxForm) car;
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
                return translator.syntaxError("let binding is not a pair:" + car2);
            }
            Pair pair3 = (Pair) car2;
            Object car3 = pair3.getCar();
            if (car3 instanceof SyntaxForm) {
                SyntaxForm syntaxForm4 = (SyntaxForm) car3;
                Object datum = syntaxForm4.getDatum();
                scope = syntaxForm4.getScope();
                car3 = datum;
            } else {
                scope = syntaxForm == null ? null : syntaxForm.getScope();
            }
            Object objNamespaceResolve = translator.namespaceResolve(car3);
            if (!(objNamespaceResolve instanceof Symbol)) {
                return translator.syntaxError("variable " + objNamespaceResolve + " in let binding is not a symbol: " + obj);
            }
            Declaration declarationAddDeclaration = letExp.addDeclaration(objNamespaceResolve);
            int i3 = iListLength;
            declarationAddDeclaration.setFlag(262144L);
            if (scope != null) {
                Declaration declarationMakeRenamedAlias = translator.makeRenamedAlias(declarationAddDeclaration, scope);
                if (stack == null) {
                    stack = new Stack();
                }
                stack.push(declarationMakeRenamedAlias);
                i2++;
            }
            Object cdr2 = pair3.getCdr();
            while (cdr2 instanceof SyntaxForm) {
                syntaxForm = (SyntaxForm) cdr2;
                cdr2 = syntaxForm.getDatum();
            }
            if (!(cdr2 instanceof Pair)) {
                return translator.syntaxError("let has no value for '" + objNamespaceResolve + "'");
            }
            Pair pair4 = (Pair) cdr2;
            Object cdr3 = pair4.getCdr();
            while (cdr3 instanceof SyntaxForm) {
                syntaxForm = (SyntaxForm) cdr3;
                cdr3 = syntaxForm.getDatum();
            }
            if (translator.matches(pair4.getCar(), "::")) {
                if (cdr3 instanceof Pair) {
                    pair4 = (Pair) cdr3;
                    if (pair4.getCdr() != LList.Empty) {
                        cdr3 = pair4.getCdr();
                        while (cdr3 instanceof SyntaxForm) {
                            syntaxForm = (SyntaxForm) cdr3;
                            cdr3 = syntaxForm.getDatum();
                        }
                    }
                }
                return translator.syntaxError("missing type after '::' in let");
            }
            Object obj2 = LList.Empty;
            if (cdr3 != obj2) {
                if (cdr3 instanceof Pair) {
                    declarationAddDeclaration.setType(translator.exp2Type(pair4));
                    declarationAddDeclaration.setFlag(8192L);
                    pair4 = (Pair) cdr3;
                } else {
                    return translator.syntaxError("let binding for '" + objNamespaceResolve + "' is improper list");
                }
            }
            expressionArr[i] = translator.rewrite_car(pair4, syntaxForm);
            if (pair4.getCdr() != obj2) {
                return translator.syntaxError("junk after declaration of " + objNamespaceResolve);
            }
            declarationAddDeclaration.noteValue(expressionArr[i]);
            car = pair2.getCdr();
            i++;
            iListLength = i3;
        }
        int i4 = i2;
        while (true) {
            i4--;
            if (i4 >= 0) {
                translator.pushRenamedAlias((Declaration) stack.pop());
            } else {
                translator.push(letExp);
                letExp.body = translator.rewrite_body(cdr);
                translator.pop(letExp);
                translator.popRenamedAlias(i2);
                return letExp;
            }
        }
    }
}
