package kawa.lang;

import _COROUTINE.a;
import gnu.expr.Compilation;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.Pair;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.IdentityHashMap;
import java.util.Vector;

/* loaded from: classes2.dex */
public class SyntaxTemplate implements Externalizable {
    static final int BUILD_CONS = 1;
    static final int BUILD_DOTS = 5;
    static final int BUILD_LIST1 = 8;
    static final int BUILD_LITERAL = 4;
    static final int BUILD_MISC = 0;
    static final int BUILD_NIL = 16;
    static final int BUILD_SYNTAX = 24;
    static final int BUILD_VAR = 2;
    static final int BUILD_VAR_CAR = 3;
    static final int BUILD_VECTOR = 40;
    static final int BUILD_WIDE = 7;
    static final String dots3 = "...";
    Object[] literal_values;
    int max_nesting;
    String patternNesting;
    String template_program;

    public SyntaxTemplate() {
    }

    public SyntaxTemplate(String str, String str2, Object[] objArr, int i) {
        this.patternNesting = str;
        this.template_program = str2;
        this.literal_values = objArr;
        this.max_nesting = i;
    }

    public SyntaxTemplate(Object obj, SyntaxForm syntaxForm, Translator translator) {
        PatternScope patternScope;
        this.patternNesting = (translator == null || (patternScope = translator.patternScope) == null) ? "" : patternScope.patternNesting.toString();
        StringBuffer stringBuffer = new StringBuffer();
        Vector vector = new Vector();
        convert_template(obj, syntaxForm, stringBuffer, 0, vector, new IdentityHashMap(), false, translator);
        this.template_program = stringBuffer.toString();
        Object[] objArr = new Object[vector.size()];
        this.literal_values = objArr;
        vector.copyInto(objArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int convert_template(java.lang.Object r20, kawa.lang.SyntaxForm r21, java.lang.StringBuffer r22, int r23, java.util.Vector r24, java.lang.Object r25, boolean r26, kawa.lang.Translator r27) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.SyntaxTemplate.convert_template(java.lang.Object, kawa.lang.SyntaxForm, java.lang.StringBuffer, int, java.util.Vector, java.lang.Object, boolean, kawa.lang.Translator):int");
    }

    public static int indexOf(Vector vector, Object obj) {
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            if (vector.elementAt(i) == obj) {
                return i;
            }
        }
        return -1;
    }

    private int get_count(Object obj, int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            obj = obj[iArr[i2]];
        }
        return obj.length;
    }

    public Object execute(Object[] objArr, TemplateScope templateScope) {
        return execute(0, objArr, 0, new int[this.max_nesting], (Translator) Compilation.getCurrent(), templateScope);
    }

    public Object execute(Object[] objArr, Translator translator, TemplateScope templateScope) {
        return execute(0, objArr, 0, new int[this.max_nesting], translator, templateScope);
    }

    public Object get_var(int i, Object[] objArr, int[] iArr) {
        Object obj = objArr[i];
        if (i < this.patternNesting.length()) {
            int iCharAt = this.patternNesting.charAt(i) >> 1;
            for (int i2 = 0; i2 < iCharAt; i2++) {
                obj = obj[iArr[i2]];
            }
        }
        return obj;
    }

    public LList executeToList(int i, Object[] objArr, int i2, int[] iArr, Translator translator, TemplateScope templateScope) {
        int i3;
        int iCharAt = this.template_program.charAt(i);
        int i4 = i;
        while (true) {
            i3 = iCharAt & 7;
            if (i3 != 7) {
                break;
            }
            i4++;
            iCharAt = ((iCharAt - 7) << 13) | this.template_program.charAt(i4);
        }
        if (i3 == 3) {
            Pair pair = (Pair) get_var(iCharAt >> 3, objArr, iArr);
            return Translator.makePair(pair, pair.getCar(), LList.Empty);
        }
        if (i3 == 5) {
            int i5 = get_count(objArr[iCharAt >> 3], i2, iArr);
            LList lList = LList.Empty;
            int i6 = i4 + 1;
            Pair pair2 = null;
            for (int i7 = 0; i7 < i5; i7++) {
                iArr[i2] = i7;
                LList lListExecuteToList = executeToList(i6, objArr, i2 + 1, iArr, translator, templateScope);
                if (pair2 == null) {
                    lList = lListExecuteToList;
                } else {
                    pair2.setCdrBackdoor(lListExecuteToList);
                }
                while (lListExecuteToList instanceof Pair) {
                    pair2 = (Pair) lListExecuteToList;
                    lListExecuteToList = (LList) pair2.getCdr();
                }
            }
            return lList;
        }
        return new Pair(execute(i, objArr, i2, iArr, translator, templateScope), LList.Empty);
    }

    public Object execute(int i, Object[] objArr, int i2, int[] iArr, Translator translator, TemplateScope templateScope) {
        int i3;
        int i4;
        int iCharAt = this.template_program.charAt(i);
        while (true) {
            i3 = iCharAt & 7;
            if (i3 != 7) {
                break;
            }
            i++;
            iCharAt = ((iCharAt - 7) << 13) | this.template_program.charAt(i);
        }
        if (iCharAt == 8) {
            return executeToList(i + 1, objArr, i2, iArr, translator, templateScope);
        }
        if (iCharAt == 16) {
            return LList.Empty;
        }
        if (iCharAt == 24) {
            Object objExecute = execute(i + 1, objArr, i2, iArr, translator, templateScope);
            return objExecute == LList.Empty ? objExecute : SyntaxForms.makeForm(objExecute, templateScope);
        }
        TemplateScope templateScope2 = templateScope;
        if (i3 != 1) {
            if (iCharAt == 40) {
                return new FVector((LList) execute(i + 1, objArr, i2, iArr, translator, templateScope));
            }
            if (i3 == 4) {
                return this.literal_values[iCharAt >> 3];
            }
            if ((iCharAt & 6) != 2) {
                throw new Error(a.c(iCharAt, i, "unknown template code: ", " at "));
            }
            Object obj = get_var(iCharAt >> 3, objArr, iArr);
            return i3 == 3 ? ((Pair) obj).getCar() : obj;
        }
        Pair pair = null;
        Object obj2 = null;
        while (true) {
            int i5 = i + 1;
            Object objExecuteToList = executeToList(i5, objArr, i2, iArr, translator, templateScope2);
            if (pair == null) {
                obj2 = objExecuteToList;
            } else {
                pair.setCdrBackdoor(objExecuteToList);
            }
            while (objExecuteToList instanceof Pair) {
                pair = (Pair) objExecuteToList;
                objExecuteToList = pair.getCdr();
            }
            i4 = i5 + (iCharAt >> 3);
            iCharAt = this.template_program.charAt(i4);
            if ((iCharAt & 7) != 1) {
                break;
            }
            templateScope2 = templateScope;
            i = i4;
        }
        Object objExecute2 = execute(i4, objArr, i2, iArr, translator, templateScope);
        if (pair == null) {
            return objExecute2;
        }
        pair.setCdrBackdoor(objExecute2);
        return obj2;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.patternNesting);
        objectOutput.writeObject(this.template_program);
        objectOutput.writeObject(this.literal_values);
        objectOutput.writeInt(this.max_nesting);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.patternNesting = (String) objectInput.readObject();
        this.template_program = (String) objectInput.readObject();
        this.literal_values = (Object[]) objectInput.readObject();
        this.max_nesting = objectInput.readInt();
    }
}
