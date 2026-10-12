package gnu.lists;

import java.io.PrintWriter;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class Strings {
    public static void makeUpperCase(CharSeq charSeq) {
        int length = charSeq.length();
        while (true) {
            length--;
            if (length < 0) {
                return;
            } else {
                charSeq.setCharAt(length, Character.toUpperCase(charSeq.charAt(length)));
            }
        }
    }

    public static void makeLowerCase(CharSeq charSeq) {
        int length = charSeq.length();
        while (true) {
            length--;
            if (length < 0) {
                return;
            } else {
                charSeq.setCharAt(length, Character.toLowerCase(charSeq.charAt(length)));
            }
        }
    }

    public static void makeCapitalize(CharSeq charSeq) {
        int length = charSeq.length();
        char lowerCase = ' ';
        for (int i = 0; i < length; i++) {
            char cCharAt = charSeq.charAt(i);
            if (!Character.isLetterOrDigit(lowerCase)) {
                lowerCase = Character.toTitleCase(cCharAt);
            } else {
                lowerCase = Character.toLowerCase(cCharAt);
            }
            charSeq.setCharAt(i, lowerCase);
        }
    }

    public static void printQuoted(CharSequence charSequence, PrintWriter printWriter, int i) {
        int length = charSequence.length();
        printWriter.print(Typography.quote);
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt == '\\' || cCharAt == '\"') {
                printWriter.print('\\');
            } else {
                if (i > 0) {
                    if (cCharAt == '\n') {
                        printWriter.print("\\n");
                    } else if (cCharAt == '\r') {
                        printWriter.print("\\r");
                    } else if (cCharAt == '\t') {
                        printWriter.print("\\t");
                    } else if (cCharAt == 7) {
                        printWriter.print("\\a");
                    } else if (cCharAt == '\b') {
                        printWriter.print("\\b");
                    } else if (cCharAt == 11) {
                        printWriter.print("\\v");
                    } else if (cCharAt == '\f') {
                        printWriter.print("\\f");
                    }
                }
            }
            printWriter.print(cCharAt);
        }
        printWriter.print(Typography.quote);
    }
}
