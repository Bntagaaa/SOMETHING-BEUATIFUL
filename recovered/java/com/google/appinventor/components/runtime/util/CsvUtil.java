package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.runtime.collect.Lists;
import com.google.appinventor.components.runtime.repackaged.org.json.HTTP;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class CsvUtil {
    private CsvUtil() {
    }

    public static YailList fromCsvTable(String str) throws Exception {
        CsvParser csvParser = new CsvParser(new StringReader(str));
        ArrayList arrayList = new ArrayList();
        while (csvParser.hasNext()) {
            arrayList.add(YailList.makeList((List) csvParser.next()));
        }
        csvParser.throwAnyProblem();
        return YailList.makeList((List) arrayList);
    }

    public static YailList fromCsvRow(String str) throws Exception {
        CsvParser csvParser = new CsvParser(new StringReader(str));
        if (csvParser.hasNext()) {
            YailList yailListMakeList = YailList.makeList((List) csvParser.next());
            if (csvParser.hasNext()) {
                throw new IllegalArgumentException("CSV text has multiple rows. Expected just one row.");
            }
            csvParser.throwAnyProblem();
            return yailListMakeList;
        }
        throw new IllegalArgumentException("CSV text cannot be parsed as a row.");
    }

    public static String toCsvRow(YailList yailList) {
        StringBuilder sb = new StringBuilder();
        makeCsvRow(yailList, sb);
        return sb.toString();
    }

    public static String toCsvTable(YailList yailList) {
        StringBuilder sb = new StringBuilder();
        for (Object obj : yailList.toArray()) {
            makeCsvRow((YailList) obj, sb);
            sb.append(HTTP.CRLF);
        }
        return sb.toString();
    }

    private static void makeCsvRow(YailList yailList, StringBuilder sb) {
        Object[] array = yailList.toArray();
        int length = array.length;
        String str = "";
        int i = 0;
        while (i < length) {
            String strReplaceAll = array[i].toString().replaceAll("\"", "\"\"");
            sb.append(str);
            sb.append("\"");
            sb.append(strReplaceAll);
            sb.append("\"");
            i++;
            str = ",";
        }
    }

    public static class CsvParser implements Iterator<List<String>> {
        private final Reader in;
        private Exception lastException;
        private int limit;
        private int pos;
        private long previouslyRead;
        private final Pattern ESCAPED_QUOTE_PATTERN = Pattern.compile("\"\"");
        private final char[] buf = new char[10240];
        private boolean opened = true;
        private int cellLength = -1;
        private int delimitedCellLength = -1;

        public CsvParser(Reader reader) {
            this.in = reader;
        }

        public void skip(long j) throws IOException {
            while (j > 0) {
                Reader reader = this.in;
                char[] cArr = this.buf;
                int i = reader.read(cArr, 0, Math.min((int) j, cArr.length));
                if (i < 0) {
                    return;
                }
                long j2 = i;
                this.previouslyRead += j2;
                j -= j2;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() throws IOException {
            if (this.limit == 0) {
                fill();
            }
            int i = this.pos;
            return (i < this.limit || indexAfterCompactionAndFilling(i) < this.limit) && lookingAtCell();
        }

        @Override // java.util.Iterator
        public List<String> next() {
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            do {
                char[] cArr = this.buf;
                int i = this.pos;
                if (cArr[i] != '\"') {
                    arrayListNewArrayList.add(new String(cArr, i, this.cellLength).trim());
                } else {
                    arrayListNewArrayList.add(this.ESCAPED_QUOTE_PATTERN.matcher(new String(cArr, i + 1, this.cellLength - 2)).replaceAll("\"").trim());
                }
                int i2 = this.delimitedCellLength;
                boolean z = i2 > 0 && this.buf[(this.pos + i2) - 1] == ',';
                int i3 = this.pos + i2;
                this.pos = i3;
                this.cellLength = -1;
                this.delimitedCellLength = -1;
                int i4 = this.limit;
                boolean z2 = i3 < i4 || indexAfterCompactionAndFilling(i3) < this.limit;
                if (!z2 && this.buf[i4 - 1] == ',') {
                    arrayListNewArrayList.add("");
                }
                if (!z || !z2) {
                    break;
                }
            } while (lookingAtCell());
            return arrayListNewArrayList;
        }

        public long getCharPosition() {
            return this.previouslyRead + this.pos;
        }

        private int indexAfterCompactionAndFilling(int i) throws IOException {
            if (this.pos > 0) {
                i = compact(i);
            }
            fill();
            return i;
        }

        private int compact(int i) {
            int i2 = this.pos;
            this.pos = 0;
            int i3 = this.limit - i2;
            if (i3 > 0) {
                char[] cArr = this.buf;
                System.arraycopy(cArr, i2, cArr, 0, i3);
            }
            this.limit -= i2;
            this.previouslyRead += i2;
            return i - i2;
        }

        private void fill() throws IOException {
            int length = this.buf.length - this.limit;
            while (this.opened && length > 0) {
                try {
                    int i = this.in.read(this.buf, this.limit, length);
                    if (i == -1) {
                        this.opened = false;
                    } else {
                        this.limit += i;
                        length -= i;
                    }
                } catch (IOException e) {
                    this.lastException = e;
                    this.opened = false;
                }
            }
        }

        private boolean lookingAtCell() {
            char[] cArr = this.buf;
            int i = this.pos;
            return cArr[i] == '\"' ? findUnescapedEndQuote(i + 1) : findUnquotedCellEnd(i);
        }

        private boolean findUnescapedEndQuote(int i) {
            while (true) {
                if (i < this.limit || (i = indexAfterCompactionAndFilling(i)) < this.limit) {
                    if (this.buf[i] == '\"' && ((i = checkedIndex(i + 1)) == this.limit || this.buf[i] != '\"')) {
                        break;
                    }
                    i++;
                } else {
                    this.lastException = new IllegalArgumentException("Syntax Error. unclosed quoted cell");
                    return false;
                }
            }
            this.cellLength = i - this.pos;
            return findDelimOrEnd(i);
        }

        private boolean findDelimOrEnd(int i) {
            int i2;
            while (true) {
                if (i < this.limit || (i = indexAfterCompactionAndFilling(i)) < (i2 = this.limit)) {
                    char c = this.buf[i];
                    if (c != '\t') {
                        if (c == '\n') {
                            break;
                        }
                        if (c == '\r') {
                            int iCheckedIndex = checkedIndex(i + 1);
                            if (this.buf[iCheckedIndex] == '\n') {
                                iCheckedIndex = checkedIndex(iCheckedIndex + 1);
                            }
                            this.delimitedCellLength = iCheckedIndex - this.pos;
                            return true;
                        }
                        if (c != ' ') {
                            if (c != ',') {
                                this.lastException = new IOException("Syntax Error: non-whitespace between closing quote and delimiter or end");
                                return false;
                            }
                        }
                    }
                    i++;
                } else {
                    this.delimitedCellLength = i2 - this.pos;
                    return true;
                }
            }
            this.delimitedCellLength = checkedIndex(i + 1) - this.pos;
            return true;
        }

        private int checkedIndex(int i) {
            return i < this.limit ? i : indexAfterCompactionAndFilling(i);
        }

        private boolean findUnquotedCellEnd(int i) {
            int i2;
            while (true) {
                if (i < this.limit || (i = indexAfterCompactionAndFilling(i)) < (i2 = this.limit)) {
                    char c = this.buf[i];
                    if (c == '\n') {
                        break;
                    }
                    if (c == '\r') {
                        this.cellLength = i - this.pos;
                        int iCheckedIndex = checkedIndex(i + 1);
                        if (this.buf[iCheckedIndex] == '\n') {
                            iCheckedIndex = checkedIndex(iCheckedIndex + 1);
                        }
                        this.delimitedCellLength = iCheckedIndex - this.pos;
                        return true;
                    }
                    if (c == '\"') {
                        this.lastException = new IllegalArgumentException("Syntax Error: quote in unquoted cell");
                        return false;
                    }
                    if (c == ',') {
                        break;
                    }
                    i++;
                } else {
                    int i3 = i2 - this.pos;
                    this.cellLength = i3;
                    this.delimitedCellLength = i3;
                    return true;
                }
            }
            int i4 = i - this.pos;
            this.cellLength = i4;
            this.delimitedCellLength = i4 + 1;
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public void throwAnyProblem() throws Exception {
            Exception exc = this.lastException;
            if (exc != null) {
                throw exc;
            }
        }
    }
}
