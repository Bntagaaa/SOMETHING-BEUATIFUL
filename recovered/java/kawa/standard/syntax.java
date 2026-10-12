package kawa.standard;

import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.expr.ApplyExp;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import kawa.lang.PatternScope;
import kawa.lang.Quote;
import kawa.lang.SyntaxTemplate;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class syntax extends Quote {
    static final Method makeTemplateScopeMethod;
    static final ClassType typeTemplateScope;
    public static final syntax syntax = new syntax("syntax", false);
    public static final syntax quasiSyntax = new syntax("quasisyntax", true);

    @Override // kawa.lang.Quote
    public boolean expandColonForms() {
        return false;
    }

    static {
        ClassType classTypeMake = ClassType.make("kawa.lang.TemplateScope");
        typeTemplateScope = classTypeMake;
        makeTemplateScopeMethod = classTypeMake.getDeclaredMethod("make", 0);
    }

    public syntax(String str, boolean z) {
        super(str, z);
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        if (pair.getCdr() instanceof Pair) {
            Pair pair2 = (Pair) pair.getCdr();
            if (pair2.getCdr() == LList.Empty) {
                Declaration declaration = translator.templateScopeDecl;
                if (declaration == null) {
                    translator.letStart();
                    Declaration declarationLetVariable = translator.letVariable(null, typeTemplateScope, new ApplyExp(makeTemplateScopeMethod, Expression.noExpressions));
                    declarationLetVariable.setCanRead();
                    translator.templateScopeDecl = declarationLetVariable;
                    translator.letEnter();
                }
                try {
                    Expression expressionCoerceExpression = coerceExpression(expand(pair2.getCar(), this.isQuasi ? 1 : -1, translator), translator);
                    if (declaration == null) {
                        expressionCoerceExpression = translator.letDone(expressionCoerceExpression);
                    }
                    return expressionCoerceExpression;
                } finally {
                    translator.templateScopeDecl = declaration;
                }
            }
        }
        return translator.syntaxError("syntax forms requires a single form");
    }

    @Override // kawa.lang.Quote
    public Expression leaf(Object obj, Translator translator) {
        return makeSyntax(obj, translator);
    }

    public static Expression makeSyntax(Object obj, Translator translator) {
        SyntaxTemplate syntaxTemplate = new SyntaxTemplate(obj, null, translator);
        Expression referenceExp = QuoteExp.nullExp;
        PatternScope patternScope = translator.patternScope;
        if (patternScope != null && patternScope.matchArray != null) {
            referenceExp = new ReferenceExp(patternScope.matchArray);
        }
        return new ApplyExp(ClassType.make("kawa.lang.SyntaxTemplate").getDeclaredMethod("execute", 2), new QuoteExp(syntaxTemplate), referenceExp, new ReferenceExp(translator.templateScopeDecl));
    }
}
