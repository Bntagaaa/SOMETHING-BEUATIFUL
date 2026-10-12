package kawa.standard;

import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.FluidLetExp;
import gnu.expr.ReferenceExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Symbol;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class fluid_let extends Syntax {
    public static final fluid_let fluid_let;
    Expression defaultInit;
    boolean star;

    static {
        fluid_let fluid_letVar = new fluid_let();
        fluid_let = fluid_letVar;
        fluid_letVar.setName("fluid-set");
    }

    public fluid_let(boolean z, Expression expression) {
        this.star = z;
        this.defaultInit = expression;
    }

    public fluid_let() {
        this.star = false;
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        if (!(obj instanceof Pair)) {
            return translator.syntaxError("missing let arguments");
        }
        Pair pair = (Pair) obj;
        return rewrite(pair.getCar(), pair.getCdr(), translator);
    }

    public Expression rewrite(Object obj, Object obj2, Translator translator) {
        Expression referenceExp;
        Expression expressionRewrite;
        int length = this.star ? 1 : LList.length(obj);
        Expression[] expressionArr = new Expression[length];
        FluidLetExp fluidLetExp = new FluidLetExp(expressionArr);
        for (int i = 0; i < length; i++) {
            Pair pair = (Pair) obj;
            Object objPushPositionOf = translator.pushPositionOf(pair);
            try {
                Object car = pair.getCar();
                if ((car instanceof String) || (car instanceof Symbol)) {
                    referenceExp = this.defaultInit;
                } else {
                    if (car instanceof Pair) {
                        Pair pair2 = (Pair) car;
                        if (!(pair2.getCar() instanceof String) && !(pair2.getCar() instanceof Symbol) && !(pair2.getCar() instanceof SyntaxForm)) {
                        }
                        Object car2 = pair2.getCar();
                        if (car2 instanceof SyntaxForm) {
                            car2 = ((SyntaxForm) car2).getDatum();
                        }
                        Object cdr = pair2.getCdr();
                        LList lList = LList.Empty;
                        if (cdr == lList) {
                            expressionRewrite = this.defaultInit;
                        } else {
                            if (pair2.getCdr() instanceof Pair) {
                                Pair pair3 = (Pair) pair2.getCdr();
                                if (pair3.getCdr() == lList) {
                                    expressionRewrite = translator.rewrite(pair3.getCar());
                                }
                            }
                            Expression expressionSyntaxError = translator.syntaxError("bad syntax for value of " + car2 + " in " + getName());
                            translator.popPositionOf(objPushPositionOf);
                            return expressionSyntaxError;
                        }
                        Object obj3 = car2;
                        referenceExp = expressionRewrite;
                        car = obj3;
                    }
                    Expression expressionSyntaxError2 = translator.syntaxError("invalid " + getName() + " syntax");
                    translator.popPositionOf(objPushPositionOf);
                    return expressionSyntaxError2;
                }
                Declaration declarationAddDeclaration = fluidLetExp.addDeclaration(car);
                Declaration declarationLookup = translator.lexical.lookup(car, false);
                if (declarationLookup != null) {
                    declarationLookup.maybeIndirectBinding(translator);
                    declarationAddDeclaration.base = declarationLookup;
                    declarationLookup.setFluid(true);
                    declarationLookup.setCanWrite(true);
                }
                declarationAddDeclaration.setCanWrite(true);
                declarationAddDeclaration.setFluid(true);
                declarationAddDeclaration.setIndirectBinding(true);
                if (referenceExp == null) {
                    referenceExp = new ReferenceExp(car);
                }
                expressionArr[i] = referenceExp;
                declarationAddDeclaration.noteValue(null);
                obj = pair.getCdr();
                translator.popPositionOf(objPushPositionOf);
            } catch (Throwable th) {
                translator.popPositionOf(objPushPositionOf);
                throw th;
            }
        }
        translator.push(fluidLetExp);
        if (this.star && obj != LList.Empty) {
            fluidLetExp.body = rewrite(obj, obj2, translator);
        } else {
            fluidLetExp.body = translator.rewrite_body(obj2);
        }
        translator.pop(fluidLetExp);
        return fluidLetExp;
    }
}
