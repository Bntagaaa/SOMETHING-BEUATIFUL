package kawa.lang;

import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.lists.ImmutablePair;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
public class SyntaxForms {
    public static final boolean DEBUGGING = true;

    public static Object makeForm(Object obj, TemplateScope templateScope) {
        if (obj instanceof Pair) {
            return new PairSyntaxForm((Pair) obj, templateScope);
        }
        return obj == LList.Empty ? obj : new SimpleSyntaxForm(obj, templateScope);
    }

    public static Object makeWithTemplate(Object obj, Object obj2) {
        if (obj2 instanceof SyntaxForm) {
            return (SyntaxForm) obj2;
        }
        if (!(obj instanceof SyntaxForm)) {
            return obj2;
        }
        SyntaxForm syntaxForm = (SyntaxForm) obj;
        return obj2 == syntaxForm.getDatum() ? syntaxForm : fromDatum(obj2, syntaxForm);
    }

    public static boolean freeIdentifierEquals(SyntaxForm syntaxForm, SyntaxForm syntaxForm2) {
        Translator translator = (Translator) Compilation.getCurrent();
        return translator.lexical.lookup(syntaxForm.getDatum(), -1) == translator.lexical.lookup(syntaxForm2.getDatum(), -1);
    }

    public static boolean isIdentifier(SyntaxForm syntaxForm) {
        return syntaxForm.getDatum() instanceof Symbol;
    }

    public static Object fromDatum(Object obj, SyntaxForm syntaxForm) {
        return makeForm(obj, syntaxForm.getScope());
    }

    public static Object fromDatumIfNeeded(Object obj, SyntaxForm syntaxForm) {
        if (obj == syntaxForm.getDatum()) {
            return syntaxForm;
        }
        if (obj instanceof SyntaxForm) {
            return (SyntaxForm) obj;
        }
        return fromDatum(obj, syntaxForm);
    }

    public static Expression rewrite(Object obj) {
        return ((Translator) Compilation.getCurrent()).rewrite(obj);
    }

    public static Expression rewriteBody(Object obj) {
        return ((Translator) Compilation.getCurrent()).rewrite_body(obj);
    }

    public static String toString(SyntaxForm syntaxForm, String str) {
        StringBuilder sb = new StringBuilder("#<syntax");
        if (str != null) {
            sb.append('#');
            sb.append(str);
        }
        sb.append(' ');
        sb.append(syntaxForm.getDatum());
        TemplateScope scope = syntaxForm.getScope();
        if (scope == null) {
            sb.append(" in null");
        } else {
            sb.append(" in #");
            sb.append(scope.id);
        }
        sb.append(">");
        return sb.toString();
    }

    public static class SimpleSyntaxForm implements SyntaxForm {
        static int counter;
        private Object datum;
        int id;
        private TemplateScope scope;

        public SimpleSyntaxForm(Object obj, TemplateScope templateScope) {
            int i = counter + 1;
            counter = i;
            this.id = i;
            this.datum = obj;
            this.scope = templateScope;
        }

        @Override // kawa.lang.SyntaxForm
        public Object getDatum() {
            return this.datum;
        }

        @Override // kawa.lang.SyntaxForm
        public TemplateScope getScope() {
            return this.scope;
        }

        public String toString() {
            return SyntaxForms.toString(this, Integer.toString(this.id));
        }
    }

    public static class PairSyntaxForm extends ImmutablePair implements SyntaxForm {
        private Pair datum;
        private TemplateScope scope;

        public PairSyntaxForm(Pair pair, TemplateScope templateScope) {
            this.datum = pair;
            this.scope = templateScope;
        }

        @Override // kawa.lang.SyntaxForm
        public Object getDatum() {
            return this.datum;
        }

        @Override // kawa.lang.SyntaxForm
        public TemplateScope getScope() {
            return this.scope;
        }

        @Override // gnu.lists.Pair
        public Object getCar() {
            if (this.car == null) {
                this.car = SyntaxForms.makeForm(this.datum.getCar(), this.scope);
            }
            return this.car;
        }

        @Override // gnu.lists.Pair
        public Object getCdr() {
            if (this.cdr == null) {
                this.cdr = SyntaxForms.makeForm(this.datum.getCdr(), this.scope);
            }
            return this.cdr;
        }

        @Override // gnu.lists.LList, gnu.lists.AbstractSequence
        public String toString() {
            return SyntaxForms.toString(this, null);
        }
    }
}
