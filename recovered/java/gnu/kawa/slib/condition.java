package gnu.kawa.slib;

/* loaded from: classes2.dex */
public class condition extends RuntimeException {
    public Object type$Mnfield$Mnalist;

    public class Mntype {
        public Object all$Mnfields;
        public Object fields;
        public Object name;
        public Object supertype;

        public Mntype(Object obj, Object obj2, Object obj3, Object obj4) {
            this.name = obj;
            this.supertype = obj2;
            this.fields = obj3;
            this.all$Mnfields = obj4;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer((CharSequence) "#<condition-type ");
            stringBuffer.append(this.name);
            stringBuffer.append(">");
            return stringBuffer.toString();
        }
    }

    public condition(Object obj) {
        this.type$Mnfield$Mnalist = obj;
    }
}
