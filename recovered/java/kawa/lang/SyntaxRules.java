package kawa.lang;

import gnu.expr.Compilation;
import gnu.expr.ErrorExp;
import gnu.expr.ScopeExp;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Procedure1;
import gnu.text.Printable;
import gnu.text.ReportFormat;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class SyntaxRules extends Procedure1 implements Printable, Externalizable {
    Object[] literal_identifiers;
    int maxVars;
    SyntaxRule[] rules;

    public SyntaxRules() {
        this.maxVars = 0;
    }

    public SyntaxRules(Object[] objArr, SyntaxRule[] syntaxRuleArr, int i) {
        this.literal_identifiers = objArr;
        this.rules = syntaxRuleArr;
        this.maxVars = i;
    }

    public SyntaxRules(Object[] objArr, Object obj, Translator translator) {
        int i;
        Object[] objArr2 = objArr;
        this.maxVars = 0;
        this.literal_identifiers = objArr2;
        int iListLength = Translator.listLength(obj);
        if (iListLength < 0) {
            translator.syntaxError("missing or invalid syntax-rules");
            i = 0;
        } else {
            i = iListLength;
        }
        this.rules = new SyntaxRule[i];
        SyntaxForm syntaxForm = null;
        int i2 = 0;
        Object cdr = obj;
        while (i2 < i) {
            SyntaxForm syntaxForm2 = syntaxForm;
            while (cdr instanceof SyntaxForm) {
                syntaxForm2 = (SyntaxForm) cdr;
                cdr = syntaxForm2.getDatum();
            }
            Pair pair = (Pair) cdr;
            Object car = pair.getCar();
            SyntaxForm syntaxForm3 = syntaxForm2;
            while (car instanceof SyntaxForm) {
                syntaxForm3 = car;
                car = syntaxForm3.getDatum();
            }
            if (!(car instanceof Pair)) {
                translator.syntaxError("missing pattern in " + i2 + "'th syntax rule");
                return;
            }
            Pair pair2 = (Pair) car;
            Object car2 = pair2.getCar();
            String fileName = translator.getFileName();
            int lineNumber = translator.getLineNumber();
            int columnNumber = translator.getColumnNumber();
            try {
                translator.setLine(pair2);
                Object cdr2 = pair2.getCdr();
                SyntaxForm syntaxForm4 = syntaxForm3;
                while (cdr2 instanceof SyntaxForm) {
                    syntaxForm4 = cdr2;
                    cdr2 = syntaxForm4.getDatum();
                }
                if (!(cdr2 instanceof Pair)) {
                    translator.syntaxError("missing template in " + i2 + "'th syntax rule");
                    translator.setLine(fileName, lineNumber, columnNumber);
                    return;
                }
                Pair pair3 = (Pair) cdr2;
                if (pair3.getCdr() != LList.Empty) {
                    translator.syntaxError("junk after " + i2 + "'th syntax rule");
                    translator.setLine(fileName, lineNumber, columnNumber);
                    return;
                }
                Object car3 = pair3.getCar();
                translator.push(PatternScope.push(translator));
                SyntaxForm syntaxForm5 = syntaxForm3;
                while (car2 instanceof SyntaxForm) {
                    syntaxForm5 = car2;
                    car2 = syntaxForm5.getDatum();
                }
                StringBuffer stringBuffer = new StringBuffer();
                if (!(car2 instanceof Pair)) {
                    translator.syntaxError("pattern does not start with name");
                    translator.setLine(fileName, lineNumber, columnNumber);
                    return;
                }
                objArr2[0] = ((Pair) car2).getCar();
                stringBuffer.append('\f');
                stringBuffer.append((char) 24);
                this.rules[i2] = new SyntaxRule(new SyntaxPattern(stringBuffer, ((Pair) car2).getCdr(), syntaxForm5, objArr2, translator), car3, syntaxForm4, translator);
                PatternScope.pop(translator);
                translator.pop();
                translator.setLine(fileName, lineNumber, columnNumber);
                i2++;
                cdr = pair.getCdr();
                objArr2 = objArr;
                syntaxForm = syntaxForm2;
            } catch (Throwable th) {
                translator.setLine(fileName, lineNumber, columnNumber);
                throw th;
            }
        }
        int length = this.rules.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            int length2 = this.rules[length].patternNesting.length();
            if (length2 > this.maxVars) {
                this.maxVars = length2;
            }
        }
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        if (obj instanceof SyntaxForm) {
            SyntaxForm syntaxForm = (SyntaxForm) obj;
            Translator translator = (Translator) Compilation.getCurrent();
            ScopeExp scopeExpCurrentScope = translator.currentScope();
            translator.setCurrentScope(syntaxForm.getScope());
            try {
                return expand(syntaxForm, translator);
            } finally {
                translator.setCurrentScope(scopeExpCurrentScope);
            }
        }
        return expand(obj, (Translator) Compilation.getCurrent());
    }

    public Object expand(Object obj, Translator translator) {
        Object[] objArr = new Object[this.maxVars];
        Macro macro = (Macro) translator.getCurrentSyntax();
        int i = 0;
        while (true) {
            SyntaxRule[] syntaxRuleArr = this.rules;
            if (i < syntaxRuleArr.length) {
                SyntaxRule syntaxRule = syntaxRuleArr[i];
                if (syntaxRule == null) {
                    return new ErrorExp("error defining " + macro);
                }
                if (syntaxRule.pattern.match(obj, objArr, 0)) {
                    return syntaxRule.execute(objArr, translator, TemplateScope.make(translator));
                }
                i++;
            } else {
                return translator.syntaxError("no matching syntax-rule for " + this.literal_identifiers[0]);
            }
        }
    }

    @Override // gnu.text.Printable
    public void print(Consumer consumer) {
        consumer.write("#<macro ");
        ReportFormat.print(this.literal_identifiers[0], consumer);
        consumer.write(62);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.literal_identifiers);
        objectOutput.writeObject(this.rules);
        objectOutput.writeInt(this.maxVars);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.literal_identifiers = (Object[]) objectInput.readObject();
        this.rules = (SyntaxRule[]) objectInput.readObject();
        this.maxVars = objectInput.readInt();
    }
}
