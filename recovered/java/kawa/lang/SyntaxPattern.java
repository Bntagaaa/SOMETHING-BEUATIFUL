package kawa.lang;

import _COROUTINE.a;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.ModuleExp;
import gnu.expr.ScopeExp;
import gnu.lists.Consumer;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.OutPort;
import gnu.mapping.Symbol;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.PrintWriter;
import java.util.Vector;

/* loaded from: classes2.dex */
public class SyntaxPattern extends Pattern implements Externalizable {
    static final int MATCH_ANY = 3;
    static final int MATCH_ANY_CAR = 7;
    static final int MATCH_EQUALS = 2;
    static final int MATCH_IGNORE = 24;
    static final int MATCH_LENGTH = 6;
    static final int MATCH_LREPEAT = 5;
    static final int MATCH_MISC = 0;
    static final int MATCH_NIL = 8;
    static final int MATCH_PAIR = 4;
    static final int MATCH_VECTOR = 16;
    static final int MATCH_WIDE = 1;
    Object[] literals;
    String program;
    int varCount;

    @Override // kawa.lang.Pattern
    public int varCount() {
        return this.varCount;
    }

    @Override // kawa.lang.Pattern
    public boolean match(Object obj, Object[] objArr, int i) {
        return match(obj, objArr, i, 0, null);
    }

    public SyntaxPattern(String str, Object[] objArr, int i) {
        this.program = str;
        this.literals = objArr;
        this.varCount = i;
    }

    public SyntaxPattern(Object obj, Object[] objArr, Translator translator) {
        this(new StringBuffer(), obj, null, objArr, translator);
    }

    public SyntaxPattern(StringBuffer stringBuffer, Object obj, SyntaxForm syntaxForm, Object[] objArr, Translator translator) {
        Vector vector = new Vector();
        translate(obj, stringBuffer, objArr, 0, vector, null, (char) 0, translator);
        this.program = stringBuffer.toString();
        Object[] objArr2 = new Object[vector.size()];
        this.literals = objArr2;
        vector.copyInto(objArr2);
        this.varCount = translator.patternScope.pattern_names.size();
    }

    public void disassemble() {
        disassemble(OutPort.errDefault(), (Translator) Compilation.getCurrent(), 0, this.program.length());
    }

    public void disassemble(PrintWriter printWriter, Translator translator) {
        disassemble(printWriter, translator, 0, this.program.length());
    }

    public void disassemble(PrintWriter printWriter, Translator translator, int i, int i2) {
        PatternScope patternScope;
        Vector vector = (translator == null || (patternScope = translator.patternScope) == null) ? null : patternScope.pattern_names;
        while (true) {
            int i3 = 0;
            while (i < i2) {
                char cCharAt = this.program.charAt(i);
                printWriter.print(" " + i + ": " + ((int) cCharAt));
                i++;
                int i4 = cCharAt & 7;
                i3 = (i3 << 13) | (cCharAt >> 3);
                switch (i4) {
                    case 0:
                        printWriter.print("[misc ch:" + ((int) cCharAt) + " n:8]");
                        if (cCharAt != '\b') {
                            if (cCharAt != 16) {
                                if (cCharAt != 24) {
                                    break;
                                } else {
                                    printWriter.println(" - IGNORE");
                                }
                            } else {
                                printWriter.println(" - VECTOR");
                            }
                        } else {
                            printWriter.println(" - NIL");
                        }
                    case 1:
                        printWriter.println(" - WIDE " + i3);
                    case 2:
                        printWriter.print(" - EQUALS[" + i3 + "]");
                        Object[] objArr = this.literals;
                        if (objArr != null && i3 >= 0 && i3 < objArr.length) {
                            printWriter.print(objArr[i3]);
                        }
                        printWriter.println();
                        continue;
                    case 3:
                    case 7:
                        StringBuilder sb = new StringBuilder();
                        sb.append(i4 == 3 ? " - ANY[" : " - ANY_CAR[");
                        sb.append(i3);
                        sb.append("]");
                        printWriter.print(sb.toString());
                        if (vector != null && i3 >= 0 && i3 < vector.size()) {
                            printWriter.print(vector.elementAt(i3));
                        }
                        printWriter.println();
                        continue;
                    case 4:
                        printWriter.println(" - PAIR[" + i3 + "]");
                        continue;
                    case 5:
                        printWriter.println(" - LREPEAT[" + i3 + "]");
                        int i5 = i3 + i;
                        disassemble(printWriter, translator, i, i5);
                        StringBuilder sbO = a.o(i5, " ", ": - repeat first var:");
                        int i6 = i5 + 1;
                        sbO.append(this.program.charAt(i5) >> 3);
                        printWriter.println(sbO.toString());
                        printWriter.println(" " + i6 + ": - repeast nested vars:" + (this.program.charAt(i6) >> 3));
                        i = i5 + 2;
                        continue;
                    case 6:
                        StringBuilder sb2 = new StringBuilder(" - LENGTH ");
                        sb2.append(i3 >> 1);
                        sb2.append(" pairs. ");
                        sb2.append((i3 & 1) == 0 ? "pure list" : "impure list");
                        printWriter.println(sb2.toString());
                        continue;
                }
                printWriter.println(" - " + i4 + '/' + i3);
            }
            return;
        }
    }

    public void translate(Object obj, StringBuffer stringBuffer, Object[] objArr, int i, Vector vector, SyntaxForm syntaxForm, char c, Translator translator) {
        boolean z;
        ScopeExp scopeExpCurrentScope;
        ScopeExp scope;
        Object obj2;
        PatternScope patternScope = translator.patternScope;
        Vector vector2 = patternScope.pattern_names;
        Object datum = obj;
        SyntaxForm syntaxForm2 = syntaxForm;
        char c2 = c;
        while (true) {
            if (datum instanceof SyntaxForm) {
                syntaxForm2 = (SyntaxForm) datum;
                datum = syntaxForm2.getDatum();
            } else if (datum instanceof Pair) {
                Object objPushPositionOf = translator.pushPositionOf(datum);
                try {
                    int length = stringBuffer.length();
                    stringBuffer.append((char) 4);
                    Pair pair = (Pair) datum;
                    Object cdr = pair.getCdr();
                    SyntaxForm syntaxForm3 = syntaxForm2;
                    while (cdr instanceof SyntaxForm) {
                        syntaxForm3 = (SyntaxForm) cdr;
                        cdr = syntaxForm3.getDatum();
                    }
                    if ((cdr instanceof Pair) && translator.matches(((Pair) cdr).getCar(), "...")) {
                        cdr = ((Pair) cdr).getCdr();
                        while (cdr instanceof SyntaxForm) {
                            syntaxForm3 = (SyntaxForm) cdr;
                            cdr = syntaxForm3.getDatum();
                        }
                        z = true;
                    } else {
                        z = false;
                    }
                    Object obj3 = cdr;
                    int size = vector2.size();
                    if (c2 == 'P') {
                        c2 = 0;
                    }
                    char c3 = c2;
                    translate(pair.getCar(), stringBuffer, objArr, z ? i + 1 : i, vector, syntaxForm2, c2 == 'V' ? (char) 0 : 'P', translator);
                    int size2 = vector2.size() - size;
                    int length2 = (((stringBuffer.length() - length) - 1) << 3) | (z ? 5 : 4);
                    if (length2 > 65535) {
                        length += insertInt(length, stringBuffer, (length2 >> 13) + 1);
                    }
                    stringBuffer.setCharAt(length, (char) length2);
                    int iListLength = Translator.listLength(obj3);
                    if (iListLength == Integer.MIN_VALUE) {
                        translator.syntaxError("cyclic pattern list");
                        translator.popPositionOf(objPushPositionOf);
                        return;
                    }
                    if (z) {
                        addInt(stringBuffer, size << 3);
                        addInt(stringBuffer, size2 << 3);
                        if (obj3 == LList.Empty) {
                            stringBuffer.append('\b');
                            translator.popPositionOf(objPushPositionOf);
                            return;
                        }
                        addInt(stringBuffer, ((iListLength >= 0 ? iListLength << 1 : ((-iListLength) << 1) - 1) << 3) | 6);
                    }
                    translator.popPositionOf(objPushPositionOf);
                    datum = obj3;
                    syntaxForm2 = syntaxForm3;
                    c2 = c3;
                } catch (Throwable th) {
                    translator.popPositionOf(objPushPositionOf);
                    throw th;
                }
            } else {
                SyntaxForm syntaxForm4 = syntaxForm2;
                if (datum instanceof Symbol) {
                    int length3 = objArr.length;
                    do {
                        length3--;
                        if (length3 >= 0) {
                            scopeExpCurrentScope = translator.currentScope();
                            scope = syntaxForm4 == null ? scopeExpCurrentScope : syntaxForm4.getScope();
                            obj2 = objArr[length3];
                            if (obj2 instanceof SyntaxForm) {
                                SyntaxForm syntaxForm5 = (SyntaxForm) obj2;
                                Object datum2 = syntaxForm5.getDatum();
                                TemplateScope scope2 = syntaxForm5.getScope();
                                obj2 = datum2;
                                scopeExpCurrentScope = scope2;
                            } else {
                                Macro macro = translator.currentMacroDefinition;
                                if (macro != null) {
                                    scopeExpCurrentScope = macro.getCapturedScope();
                                }
                            }
                        } else {
                            if (vector2.contains(datum)) {
                                translator.syntaxError("duplicated pattern variable " + datum);
                            }
                            int size3 = vector2.size();
                            vector2.addElement(datum);
                            int i2 = c2 == 'P' ? 1 : 0;
                            patternScope.patternNesting.append((char) ((i << 1) + i2));
                            Declaration declarationAddDeclaration = patternScope.addDeclaration(datum);
                            declarationAddDeclaration.setLocation(translator);
                            translator.push(declarationAddDeclaration);
                            addInt(stringBuffer, (size3 << 3) | (i2 != 0 ? 7 : 3));
                            return;
                        }
                    } while (!literalIdentifierEq(datum, scope, obj2, scopeExpCurrentScope));
                    int iIndexOf = SyntaxTemplate.indexOf(vector, datum);
                    if (iIndexOf < 0) {
                        iIndexOf = vector.size();
                        vector.addElement(datum);
                    }
                    addInt(stringBuffer, (iIndexOf << 3) | 2);
                    return;
                }
                if (datum == LList.Empty) {
                    stringBuffer.append('\b');
                    return;
                }
                if (datum instanceof FVector) {
                    stringBuffer.append((char) 16);
                    datum = LList.makeList((FVector) datum);
                    syntaxForm2 = syntaxForm4;
                    c2 = 'V';
                } else {
                    int iIndexOf2 = SyntaxTemplate.indexOf(vector, datum);
                    if (iIndexOf2 < 0) {
                        iIndexOf2 = vector.size();
                        vector.addElement(datum);
                    }
                    addInt(stringBuffer, (iIndexOf2 << 3) | 2);
                    return;
                }
            }
        }
    }

    private static void addInt(StringBuffer stringBuffer, int i) {
        if (i > 65535) {
            addInt(stringBuffer, (i << 13) + 1);
        }
        stringBuffer.append((char) i);
    }

    private static int insertInt(int i, StringBuffer stringBuffer, int i2) {
        if (i2 > 65535) {
            i += insertInt(i, stringBuffer, (i2 << 13) + 1);
        }
        stringBuffer.insert(i, (char) i2);
        return i + 1;
    }

    public boolean match_car(Pair pair, Object[] objArr, int i, int i2, SyntaxForm syntaxForm) {
        int i3;
        int i4 = i2 + 1;
        char cCharAt = this.program.charAt(i2);
        int i5 = cCharAt >> 3;
        while (true) {
            i3 = cCharAt & 7;
            if (i3 != 1) {
                break;
            }
            int i6 = i4 + 1;
            char cCharAt2 = this.program.charAt(i4);
            i5 = (cCharAt2 >> 3) | (i5 << 13);
            cCharAt = cCharAt2;
            i4 = i6;
        }
        if (i3 == 7) {
            objArr[i + i5] = (syntaxForm == null || (pair.getCar() instanceof SyntaxForm)) ? pair : Translator.makePair(pair, SyntaxForms.fromDatum(pair.getCar(), syntaxForm), pair.getCdr());
            return true;
        }
        return match(pair.getCar(), objArr, i, i2, syntaxForm);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005f, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x014d, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean match(java.lang.Object r19, java.lang.Object[] r20, int r21, int r22, kawa.lang.SyntaxForm r23) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.SyntaxPattern.match(java.lang.Object, java.lang.Object[], int, int, kawa.lang.SyntaxForm):boolean");
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.program);
        objectOutput.writeObject(this.literals);
        objectOutput.writeInt(this.varCount);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.literals = (Object[]) objectInput.readObject();
        this.program = (String) objectInput.readObject();
        this.varCount = objectInput.readInt();
    }

    public static Object[] allocVars(int i, Object[] objArr) {
        Object[] objArr2 = new Object[i];
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        }
        return objArr2;
    }

    public static boolean literalIdentifierEq(Object obj, ScopeExp scopeExp, Object obj2, ScopeExp scopeExp2) {
        if (obj != obj2 && (obj == null || obj2 == null || !obj.equals(obj2))) {
            return false;
        }
        if (scopeExp == scopeExp2) {
            return true;
        }
        Declaration declarationLookup = null;
        Declaration declarationLookup2 = null;
        while (scopeExp != null && !(scopeExp instanceof ModuleExp)) {
            declarationLookup2 = scopeExp.lookup(obj);
            if (declarationLookup2 != null) {
                break;
            }
            scopeExp = scopeExp.outer;
        }
        while (scopeExp2 != null && !(scopeExp2 instanceof ModuleExp)) {
            declarationLookup = scopeExp2.lookup(obj2);
            if (declarationLookup != null) {
                break;
            }
            scopeExp2 = scopeExp2.outer;
        }
        return declarationLookup2 == declarationLookup;
    }

    public static Object[] getLiteralsList(Object obj, SyntaxForm syntaxForm, Translator translator) {
        Object objPushPositionOf = translator.pushPositionOf(obj);
        int iListLength = Translator.listLength(obj);
        if (iListLength < 0) {
            translator.error('e', "missing or malformed literals list");
            iListLength = 0;
        }
        Object[] objArr = new Object[iListLength + 1];
        for (int i = 1; i <= iListLength; i++) {
            while (obj instanceof SyntaxForm) {
                obj = ((SyntaxForm) obj).getDatum();
            }
            Pair pair = (Pair) obj;
            translator.pushPositionOf(pair);
            Object car = pair.getCar();
            Object datum = car instanceof SyntaxForm ? ((SyntaxForm) car).getDatum() : car;
            if (!(datum instanceof Symbol)) {
                translator.error('e', "non-symbol '" + datum + "' in literals list");
            }
            objArr[i] = car;
            obj = pair.getCdr();
        }
        translator.popPositionOf(objPushPositionOf);
        return objArr;
    }

    @Override // gnu.text.Printable
    public void print(Consumer consumer) {
        consumer.write("#<syntax-pattern>");
    }
}
