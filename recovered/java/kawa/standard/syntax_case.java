package kawa.standard;

import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.BlockExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.ExitExp;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.Language;
import gnu.expr.LetExp;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.math.IntNum;
import kawa.lang.Pattern;
import kawa.lang.PatternScope;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.SyntaxPattern;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class syntax_case extends Syntax {
    public static final syntax_case syntax_case;
    PrimProcedure call_error;

    static {
        syntax_case syntax_caseVar = new syntax_case();
        syntax_case = syntax_caseVar;
        syntax_caseVar.setName("syntax-case");
    }

    public Expression rewriteClauses(Object obj, syntax_case_work syntax_case_workVar, Translator translator) {
        Expression ifExp;
        Language language = translator.getLanguage();
        if (obj == LList.Empty) {
            Expression[] expressionArr = {new QuoteExp("syntax-case"), new ReferenceExp(syntax_case_workVar.inputExpression)};
            if (this.call_error == null) {
                ClassType classTypeMake = ClassType.make("kawa.standard.syntax_case");
                ClassType classType = Type.objectType;
                this.call_error = new PrimProcedure(classTypeMake.addMethod("error", new Type[]{Compilation.javaStringType, classType}, classType, 9), language);
            }
            return new ApplyExp(this.call_error, expressionArr);
        }
        Object objPushPositionOf = translator.pushPositionOf(obj);
        try {
            if (obj instanceof Pair) {
                Object car = ((Pair) obj).getCar();
                if (car instanceof Pair) {
                    Pair pair = (Pair) car;
                    PatternScope patternScopePush = PatternScope.push(translator);
                    patternScopePush.matchArray = translator.matchArray;
                    translator.push(patternScopePush);
                    Object cdr = pair.getCdr();
                    SyntaxForm syntaxForm = null;
                    while (cdr instanceof SyntaxForm) {
                        syntaxForm = (SyntaxForm) cdr;
                        cdr = syntaxForm.getDatum();
                    }
                    if (!(cdr instanceof Pair)) {
                        Expression expressionSyntaxError = translator.syntaxError("missing syntax-case output expression");
                        translator.popPositionOf(objPushPositionOf);
                        return expressionSyntaxError;
                    }
                    int size = patternScopePush.pattern_names.size();
                    SyntaxPattern syntaxPattern = new SyntaxPattern(pair.getCar(), syntax_case_workVar.literal_identifiers, translator);
                    int iVarCount = syntaxPattern.varCount();
                    if (iVarCount > syntax_case_workVar.maxVars) {
                        syntax_case_workVar.maxVars = iVarCount;
                    }
                    BlockExp blockExp = new BlockExp();
                    ApplyExp applyExp = new ApplyExp(new PrimProcedure(Pattern.matchPatternMethod, language), new QuoteExp(syntaxPattern), new ReferenceExp(syntax_case_workVar.inputExpression), new ReferenceExp(translator.matchArray), new QuoteExp(IntNum.zero()));
                    int i = iVarCount - size;
                    Expression[] expressionArr2 = new Expression[i];
                    while (true) {
                        i--;
                        if (i < 0) {
                            break;
                        }
                        expressionArr2[i] = QuoteExp.undefined_exp;
                    }
                    patternScopePush.inits = expressionArr2;
                    Pair pair2 = (Pair) cdr;
                    Object cdr2 = pair2.getCdr();
                    Object obj2 = LList.Empty;
                    if (cdr2 != obj2) {
                        Expression expressionRewrite_car = translator.rewrite_car(pair2, syntaxForm);
                        if (pair2.getCdr() instanceof Pair) {
                            Pair pair3 = (Pair) pair2.getCdr();
                            if (pair3.getCdr() == obj2) {
                                ifExp = new IfExp(expressionRewrite_car, translator.rewrite_car(pair3, syntaxForm), new ExitExp(blockExp));
                            }
                        }
                        Expression expressionSyntaxError2 = translator.syntaxError("syntax-case:  bad clause");
                        translator.popPositionOf(objPushPositionOf);
                        return expressionSyntaxError2;
                    }
                    ifExp = translator.rewrite_car(pair2, syntaxForm);
                    patternScopePush.setBody(ifExp);
                    translator.pop(patternScopePush);
                    PatternScope.pop(translator);
                    blockExp.setBody(new IfExp(applyExp, patternScopePush, new ExitExp(blockExp)), rewriteClauses(((Pair) obj).getCdr(), syntax_case_workVar, translator));
                    translator.popPositionOf(objPushPositionOf);
                    return blockExp;
                }
            }
            Expression expressionSyntaxError3 = translator.syntaxError("syntax-case:  bad clause list");
            translator.popPositionOf(objPushPositionOf);
            return expressionSyntaxError3;
        } catch (Throwable th) {
            translator.popPositionOf(objPushPositionOf);
            throw th;
        }
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        syntax_case_work syntax_case_workVar = new syntax_case_work();
        Object cdr = pair.getCdr();
        if (cdr instanceof Pair) {
            Pair pair2 = (Pair) cdr;
            if (pair2.getCdr() instanceof Pair) {
                Expression[] expressionArr = new Expression[2];
                LetExp letExp = new LetExp(expressionArr);
                syntax_case_workVar.inputExpression = letExp.addDeclaration((Object) null);
                Declaration declaration = translator.matchArray;
                Declaration declarationAddDeclaration = letExp.addDeclaration((Object) null);
                declarationAddDeclaration.setType(Compilation.objArrayType);
                declarationAddDeclaration.setCanRead(true);
                translator.matchArray = declarationAddDeclaration;
                syntax_case_workVar.inputExpression.setCanRead(true);
                translator.push(letExp);
                Expression expressionRewrite = translator.rewrite(pair2.getCar());
                expressionArr[0] = expressionRewrite;
                syntax_case_workVar.inputExpression.noteValue(expressionRewrite);
                Pair pair3 = (Pair) pair2.getCdr();
                syntax_case_workVar.literal_identifiers = SyntaxPattern.getLiteralsList(pair3.getCar(), null, translator);
                letExp.body = rewriteClauses(pair3.getCdr(), syntax_case_workVar, translator);
                translator.pop(letExp);
                Method declaredMethod = ClassType.make("kawa.lang.SyntaxPattern").getDeclaredMethod("allocVars", 2);
                Expression[] expressionArr2 = new Expression[2];
                expressionArr2[0] = new QuoteExp(IntNum.make(syntax_case_workVar.maxVars));
                if (declaration == null) {
                    expressionArr2[1] = QuoteExp.nullExp;
                } else {
                    expressionArr2[1] = new ReferenceExp(declaration);
                }
                ApplyExp applyExp = new ApplyExp(declaredMethod, expressionArr2);
                expressionArr[1] = applyExp;
                declarationAddDeclaration.noteValue(applyExp);
                translator.matchArray = declaration;
                return letExp;
            }
        }
        return translator.syntaxError("insufficiant arguments to syntax-case");
    }

    public static Object error(String str, Object obj) {
        Translator translator = (Translator) Compilation.getCurrent();
        if (translator == null) {
            throw new RuntimeException("no match in syntax-case");
        }
        Syntax currentSyntax = translator.getCurrentSyntax();
        return translator.syntaxError("no matching case while expanding " + (currentSyntax == null ? "some syntax" : currentSyntax.getName()));
    }
}
