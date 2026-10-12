package gnu.kawa.lispexpr;

import gnu.bytecode.Field;
import gnu.expr.ApplyExp;
import gnu.expr.BeginExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.Keyword;
import gnu.expr.Language;
import gnu.expr.ModuleExp;
import gnu.expr.NameLookup;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.lists.Sequence;
import gnu.mapping.Environment;
import gnu.mapping.EnvironmentKey;
import gnu.mapping.InPort;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.text.Lexer;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import java.io.IOException;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public abstract class LispLanguage extends Language {
    public static final Symbol bracket_apply_sym;
    public static final Symbol bracket_list_sym;
    public static StaticFieldLocation getNamedPartLocation = null;
    public static final Symbol lookup_sym;
    public static final String quasiquote_sym = "quasiquote";
    public static final String quote_sym = "quote";
    public static final String unquote_sym = "unquote";
    public static final String unquotesplicing_sym = "unquote-splicing";
    public ReadTable defaultReadTable = createReadTable();

    public Expression checkDefaultBinding(Symbol symbol, Translator translator) {
        return null;
    }

    public abstract ReadTable createReadTable();

    static {
        Namespace namespace = Namespace.EmptyNamespace;
        lookup_sym = namespace.getSymbol("$lookup$");
        bracket_list_sym = namespace.getSymbol("$bracket-list$");
        bracket_apply_sym = namespace.getSymbol("$bracket-apply$");
        StaticFieldLocation staticFieldLocation = new StaticFieldLocation("gnu.kawa.functions.GetNamedPart", "getNamedPart");
        getNamedPartLocation = staticFieldLocation;
        staticFieldLocation.setProcedure();
    }

    @Override // gnu.expr.Language
    public Lexer getLexer(InPort inPort, SourceMessages sourceMessages) {
        return new LispReader(inPort, sourceMessages);
    }

    @Override // gnu.expr.Language
    public Compilation getCompilation(Lexer lexer, SourceMessages sourceMessages, NameLookup nameLookup) {
        return new Translator(this, sourceMessages, nameLookup);
    }

    @Override // gnu.expr.Language
    public boolean parse(Compilation compilation, int i) throws SyntaxException, IOException {
        Translator translator = (Translator) compilation;
        Lexer lexer = translator.lexer;
        ModuleExp moduleExp = translator.mainLambda;
        new Values();
        LispReader lispReader = (LispReader) lexer;
        Compilation saveCurrent = Compilation.setSaveCurrent(translator);
        try {
            Object obj = translator.pendingForm;
            if (obj != null) {
                translator.scanForm(obj, moduleExp);
                translator.pendingForm = null;
            }
            while (true) {
                Object command = lispReader.readCommand();
                if (command != Sequence.eofValue) {
                    translator.scanForm(command, moduleExp);
                    if ((i & 4) != 0) {
                        if (translator.getMessages().seenErrors()) {
                            while (true) {
                                int iPeek = lispReader.peek();
                                if (iPeek < 0 || iPeek == 13 || iPeek == 10) {
                                    break;
                                }
                                lispReader.skip();
                            }
                        }
                    } else if ((i & 8) != 0 && translator.getState() >= 2) {
                        Compilation.restoreCurrent(saveCurrent);
                        return true;
                    }
                } else if ((i & 4) != 0) {
                    Compilation.restoreCurrent(saveCurrent);
                    return false;
                }
            }
            if (lexer.peek() == 41) {
                lexer.fatal("An unexpected close paren was read.");
            }
            translator.finishModule(moduleExp);
            if ((i & 8) == 0) {
                translator.firstForm = 0;
            }
            translator.setState(4);
            Compilation.restoreCurrent(saveCurrent);
            return true;
        } catch (Throwable th) {
            Compilation.restoreCurrent(saveCurrent);
            throw th;
        }
    }

    @Override // gnu.expr.Language
    public void resolve(Compilation compilation) {
        Translator translator = (Translator) compilation;
        translator.resolveModule(translator.getModule());
    }

    @Override // gnu.expr.Language
    public Declaration declFromField(ModuleExp moduleExp, Object obj, Field field) {
        Declaration declarationDeclFromField = super.declFromField(moduleExp, obj, field);
        if ((field.getModifiers() & 16) != 0 && (obj instanceof Syntax)) {
            declarationDeclFromField.setSyntax();
        }
        return declarationDeclFromField;
    }

    public void defSntxStFld(String str, String str2, String str3) {
        Object obj = hasSeparateFunctionNamespace() ? EnvironmentKey.FUNCTION : null;
        Environment environment = this.environ;
        StaticFieldLocation.define(environment, environment.getSymbol(str), obj, str2, str3).setSyntax();
    }

    public void defSntxStFld(String str, String str2) {
        defSntxStFld(str, str2, Compilation.mangleNameIfNeeded(str));
    }

    public Expression makeBody(Expression[] expressionArr) {
        return new BeginExp(expressionArr);
    }

    public Expression makeApply(Expression expression, Expression[] expressionArr) {
        return new ApplyExp(expression, expressionArr);
    }

    public boolean selfEvaluatingSymbol(Object obj) {
        return obj instanceof Keyword;
    }

    public static Symbol langSymbolToSymbol(Object obj) {
        return ((LispLanguage) Language.getDefaultLanguage()).fromLangSymbol(obj);
    }

    public Symbol fromLangSymbol(Object obj) {
        if (obj instanceof String) {
            return getSymbol((String) obj);
        }
        return (Symbol) obj;
    }
}
