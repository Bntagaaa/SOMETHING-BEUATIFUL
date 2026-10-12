package gnu.expr;

import gnu.lists.Consumer;
import gnu.mapping.OutPort;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
public class Symbols {
    private static int gensym_counter;

    private Symbols() {
    }

    public static synchronized int generateInt() {
        int i;
        i = gensym_counter + 1;
        gensym_counter = i;
        return i;
    }

    public static final SimpleSymbol gentemp() {
        return Symbol.valueOf("GS." + Integer.toString(generateInt()));
    }

    public static String make(String str) {
        return str.intern();
    }

    public static final String intern(String str) {
        return make(str);
    }

    public static void print(String str, Consumer consumer) {
        if ((consumer instanceof OutPort) && ((OutPort) consumer).printReadable) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (!Character.isLowerCase(cCharAt) && cCharAt != '!' && cCharAt != '$' && cCharAt != '%' && cCharAt != '&' && cCharAt != '*' && cCharAt != '/' && cCharAt != ':' && cCharAt != '<' && cCharAt != '=' && cCharAt != '>' && cCharAt != '?' && cCharAt != '~' && cCharAt != '_' && cCharAt != '^' && (((cCharAt != '+' && cCharAt != '-') || (i <= 0 && length != 1)) && ((!Character.isDigit(cCharAt) || i <= 0) && (cCharAt != '.' || (i != 0 && str.charAt(i - 1) != '.'))))) {
                    consumer.write(92);
                }
                consumer.write(cCharAt);
            }
            return;
        }
        consumer.write(str);
    }
}
