package gnu.kawa.functions;

import _COROUTINE.a;
import gnu.bytecode.Access;
import gnu.expr.Keyword;
import gnu.kawa.xml.KNode;
import gnu.kawa.xml.UntypedAtomic;
import gnu.kawa.xml.XmlNamespace;
import gnu.lists.AbstractFormat;
import gnu.lists.Array;
import gnu.lists.CharSeq;
import gnu.lists.Consumable;
import gnu.lists.Consumer;
import gnu.lists.ConsumerWriter;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.SimpleVector;
import gnu.lists.Strings;
import gnu.mapping.Namespace;
import gnu.mapping.OutPort;
import gnu.mapping.Symbol;
import gnu.mapping.ThreadLocation;
import gnu.mapping.Values;
import gnu.math.IntNum;
import gnu.math.RatNum;
import gnu.text.Char;
import gnu.text.Printable;
import gnu.xml.XMLPrinter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.URI;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class DisplayFormat extends AbstractFormat {
    public static final ThreadLocation outBase;
    public static final ThreadLocation outRadix;
    static Pattern r5rsIdentifierMinusInteriorColons;
    char language;
    boolean readable;

    static {
        ThreadLocation threadLocation = new ThreadLocation("out-base");
        outBase = threadLocation;
        threadLocation.setGlobal(IntNum.ten());
        outRadix = new ThreadLocation("out-radix");
        r5rsIdentifierMinusInteriorColons = Pattern.compile("(([a-zA-Z]|[!$%&*/:<=>?^_~])([a-zA-Z]|[!$%&*/<=>?^_~]|[0-9]|([-+.@]))*[:]?)|([-+]|[.][.][.])");
    }

    public DisplayFormat(boolean z, char c) {
        this.readable = z;
        this.language = c;
    }

    public static DisplayFormat getEmacsLispFormat(boolean z) {
        return new DisplayFormat(z, 'E');
    }

    public static DisplayFormat getCommonLispFormat(boolean z) {
        return new DisplayFormat(z, Access.CLASS_CONTEXT);
    }

    public static DisplayFormat getSchemeFormat(boolean z) {
        return new DisplayFormat(z, 'S');
    }

    public boolean getReadableOutput() {
        return this.readable;
    }

    @Override // gnu.lists.AbstractFormat
    public void writeBoolean(boolean z, Consumer consumer) {
        write(this.language == 'S' ? z ? "#t" : "#f" : z ? "t" : "nil", consumer);
    }

    @Override // gnu.lists.AbstractFormat
    public void write(int i, Consumer consumer) {
        if (!getReadableOutput()) {
            Char.print(i, consumer);
        } else if (this.language == 'E' && i > 32) {
            consumer.write(63);
            Char.print(i, consumer);
        } else {
            write(Char.toScmReadableString(i), consumer);
        }
    }

    public void writeList(LList lList, OutPort outPort) throws IOException {
        outPort.startLogicalBlock("(", false, ")");
        Object cdr = lList;
        while (cdr instanceof Pair) {
            if (cdr != lList) {
                outPort.writeSpaceFill();
            }
            Pair pair = (Pair) cdr;
            writeObject(pair.getCar(), (Consumer) outPort);
            cdr = pair.getCdr();
        }
        if (cdr != LList.Empty) {
            outPort.writeSpaceFill();
            outPort.write(". ");
            writeObject(LList.checkNonList(cdr), (Consumer) outPort);
        }
        outPort.endLogicalBlock(")");
    }

    @Override // gnu.lists.AbstractFormat
    public void writeObject(Object obj, Consumer consumer) throws IOException {
        boolean z;
        if (!(consumer instanceof OutPort) || (obj instanceof UntypedAtomic) || (obj instanceof Values) || (!getReadableOutput() && ((obj instanceof Char) || (obj instanceof CharSequence) || (obj instanceof Character)))) {
            z = false;
        } else {
            ((OutPort) consumer).writeWordStart();
            z = true;
        }
        writeObjectRaw(obj, consumer);
        if (z) {
            ((OutPort) consumer).writeWordEnd();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeObjectRaw(Object obj, Consumer consumer) throws IOException {
        if (obj instanceof Boolean) {
            writeBoolean(((Boolean) obj).booleanValue(), consumer);
            return;
        }
        if (obj instanceof Char) {
            write(((Char) obj).intValue(), consumer);
            return;
        }
        if (obj instanceof Character) {
            write(((Character) obj).charValue(), consumer);
            return;
        }
        if (obj instanceof Symbol) {
            Symbol symbol = (Symbol) obj;
            if (symbol.getNamespace() != XmlNamespace.HTML) {
                writeSymbol(symbol, consumer, this.readable);
                return;
            } else {
                write("html:", consumer);
                write(symbol.getLocalPart(), consumer);
                return;
            }
        }
        boolean z = true;
        if ((obj instanceof URI) && getReadableOutput() && (consumer instanceof PrintWriter)) {
            write("#,(URI ", consumer);
            Strings.printQuoted(obj.toString(), (PrintWriter) consumer, 1);
            consumer.write(41);
            return;
        }
        int i = 0;
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (getReadableOutput() && (consumer instanceof PrintWriter)) {
                Strings.printQuoted(charSequence, (PrintWriter) consumer, 1);
                return;
            }
            if (obj instanceof String) {
                consumer.write((String) obj);
                return;
            }
            if (obj instanceof CharSeq) {
                CharSeq charSeq = (CharSeq) obj;
                charSeq.consume(0, charSeq.size(), consumer);
                return;
            } else {
                int length = charSequence.length();
                while (i < length) {
                    consumer.write(charSequence.charAt(i));
                    i++;
                }
                return;
            }
        }
        if ((obj instanceof LList) && (consumer instanceof OutPort)) {
            writeList((LList) obj, (OutPort) consumer);
            return;
        }
        String strA = "[";
        String str = "]";
        if (obj instanceof SimpleVector) {
            SimpleVector simpleVector = (SimpleVector) obj;
            String tag = simpleVector.getTag();
            if (this.language != 'E') {
                strA = tag == null ? "#(" : a.A("#", tag, "(");
                str = ")";
            }
            boolean z2 = consumer instanceof OutPort;
            if (z2) {
                ((OutPort) consumer).startLogicalBlock(strA, false, str);
            } else {
                write(strA, consumer);
            }
            int size = simpleVector.size() << 1;
            while (i < size) {
                if (i > 0 && z2) {
                    ((OutPort) consumer).writeSpaceFill();
                }
                if (!simpleVector.consumeNext(i, consumer)) {
                    break;
                } else {
                    i += 2;
                }
            }
            if (z2) {
                ((OutPort) consumer).endLogicalBlock(str);
                return;
            } else {
                write(str, consumer);
                return;
            }
        }
        if (obj instanceof Array) {
            write((Array) obj, 0, 0, consumer);
            return;
        }
        if (obj instanceof KNode) {
            if (getReadableOutput()) {
                write("#", consumer);
            }
            XMLPrinter xMLPrinter = new XMLPrinter(consumer instanceof Writer ? (Writer) consumer : new ConsumerWriter(consumer));
            xMLPrinter.writeObject(obj);
            xMLPrinter.closeThis();
            return;
        }
        if (obj == Values.empty && getReadableOutput()) {
            write("#!void", consumer);
            return;
        }
        if (obj instanceof Consumable) {
            ((Consumable) obj).consume(consumer);
            return;
        }
        if (obj instanceof Printable) {
            ((Printable) obj).print(consumer);
            return;
        }
        String string = null;
        if (obj instanceof RatNum) {
            Object obj2 = outBase.get(null);
            Object obj3 = outRadix.get(null);
            if (obj3 == null || (obj3 != Boolean.TRUE && !"yes".equals(obj3.toString()))) {
                z = false;
            }
            int iIntValue = obj2 instanceof Number ? ((IntNum) obj2).intValue() : obj2 != null ? Integer.parseInt(obj2.toString()) : 10;
            String string2 = ((RatNum) obj).toString(iIntValue);
            if (z) {
                if (iIntValue == 16) {
                    write("#x", consumer);
                } else if (iIntValue == 8) {
                    write("#o", consumer);
                } else if (iIntValue == 2) {
                    write("#b", consumer);
                } else if (iIntValue != 10 || !(obj instanceof IntNum)) {
                    write("#" + obj2 + "r", consumer);
                }
            }
            write(string2, consumer);
            if (z && iIntValue == 10 && (obj instanceof IntNum)) {
                write(".", consumer);
                return;
            }
            return;
        }
        if ((obj instanceof Enum) && getReadableOutput()) {
            write(obj.getClass().getName(), consumer);
            write(":", consumer);
            write(((Enum) obj).name(), consumer);
            return;
        }
        if (obj != null) {
            if (obj.getClass().isArray()) {
                int length2 = java.lang.reflect.Array.getLength(obj);
                boolean z3 = consumer instanceof OutPort;
                if (z3) {
                    ((OutPort) consumer).startLogicalBlock("[", false, "]");
                } else {
                    write("[", consumer);
                }
                while (i < length2) {
                    if (i > 0) {
                        write(" ", consumer);
                        if (z3) {
                            ((OutPort) consumer).writeBreakFill();
                        }
                    }
                    writeObject(java.lang.reflect.Array.get(obj, i), consumer);
                    i++;
                }
                if (z3) {
                    ((OutPort) consumer).endLogicalBlock("]");
                    return;
                } else {
                    write("]", consumer);
                    return;
                }
            }
            string = obj.toString();
        }
        if (string == null) {
            write("#!null", consumer);
        } else {
            write(string, consumer);
        }
    }

    public int write(Array array, int i, int i2, Consumer consumer) throws IOException {
        int iWrite;
        int iRank = array.rank();
        String strE = i2 > 0 ? "(" : iRank == 1 ? "#(" : a.e(iRank, "#", "a(");
        boolean z = consumer instanceof OutPort;
        int i3 = 0;
        if (z) {
            ((OutPort) consumer).startLogicalBlock(strE, false, ")");
        } else {
            write(strE, consumer);
        }
        if (iRank > 0) {
            int size = array.getSize(i2);
            int i4 = i2 + 1;
            int i5 = 0;
            while (i3 < size) {
                if (i3 > 0) {
                    write(" ", consumer);
                    if (z) {
                        ((OutPort) consumer).writeBreakFill();
                    }
                }
                if (i4 == iRank) {
                    writeObject(array.getRowMajor(i), consumer);
                    iWrite = 1;
                } else {
                    iWrite = write(array, i, i4, consumer);
                }
                i += iWrite;
                i5 += iWrite;
                i3++;
            }
            i3 = i5;
        }
        if (z) {
            ((OutPort) consumer).endLogicalBlock(")");
            return i3;
        }
        write(")", consumer);
        return i3;
    }

    public void writeSymbol(Symbol symbol, Consumer consumer, boolean z) {
        String prefix = symbol.getPrefix();
        Namespace namespace = symbol.getNamespace();
        String name = namespace == null ? null : namespace.getName();
        boolean z2 = false;
        boolean z3 = name != null && name.length() > 0;
        boolean z4 = prefix != null && prefix.length() > 0;
        if (namespace == Keyword.keywordNamespace) {
            char c = this.language;
            if (c == 'C' || c == 'E') {
                consumer.write(58);
            } else {
                z2 = true;
            }
        } else if (z4 || z3) {
            if (z4) {
                writeSymbol(prefix, consumer, z);
            }
            if (z3 && (z || !z4)) {
                consumer.write(123);
                consumer.write(name);
                consumer.write(125);
            }
            consumer.write(58);
        }
        writeSymbol(symbol.getName(), consumer, z);
        if (z2) {
            consumer.write(58);
        }
    }

    public void writeSymbol(String str, Consumer consumer, boolean z) {
        if (z && !r5rsIdentifierMinusInteriorColons.matcher(str).matches()) {
            int length = str.length();
            if (length == 0) {
                write("||", consumer);
                return;
            }
            boolean z2 = false;
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt == '|') {
                    write(z2 ? "|\\" : "\\", consumer);
                    z2 = false;
                } else if (!z2) {
                    consumer.write(124);
                    z2 = true;
                }
                consumer.write(cCharAt);
            }
            if (z2) {
                consumer.write(124);
                return;
            }
            return;
        }
        write(str, consumer);
    }
}
