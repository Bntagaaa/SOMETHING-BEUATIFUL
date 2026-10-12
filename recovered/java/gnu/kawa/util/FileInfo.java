package gnu.kawa.util;

import gnu.mapping.InPort;
import gnu.mapping.OutPort;
import gnu.text.Path;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.URI;
import java.util.Hashtable;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
class FileInfo {
    StringBuffer beforeNavbarText;
    ByteArrayOutputStream bout;
    String[] childLinkText;
    OutPort cout;
    File file;
    FileInputStream fin;
    InPort in;
    int nchildren;
    StringBuffer newNavbarText;
    StringBuffer oldNavbarText;
    FileInfo parent;
    String parentName;
    String path;
    boolean scanned;
    boolean writeNeeded;
    static Hashtable fileMap = new Hashtable();
    static final Pattern childPat = Pattern.compile("<a .*</a>");
    static final Pattern parentPat = Pattern.compile("<ul[^>]* parent=['\"]([^'\"]*)['\"]");
    static final Pattern linkPat = Pattern.compile(" href=['\"]([^'\"]*)['\"]");

    public static FileInfo find(File file) throws Throwable {
        String canonicalPath = file.getCanonicalPath();
        FileInfo fileInfo = (FileInfo) fileMap.get(canonicalPath);
        if (fileInfo != null) {
            return fileInfo;
        }
        FileInfo fileInfo2 = new FileInfo();
        fileInfo2.file = file;
        fileMap.put(canonicalPath, fileInfo2);
        return fileInfo2;
    }

    public void scan() throws Throwable {
        if (this.scanned) {
            return;
        }
        this.scanned = true;
        this.fin = new FileInputStream(this.file);
        this.in = new InPort(new BufferedInputStream(this.fin));
        this.oldNavbarText = new StringBuffer();
        this.newNavbarText = new StringBuffer();
        if (this.writeNeeded) {
            this.bout = new ByteArrayOutputStream();
            this.cout = new OutPort(this.bout);
        }
        Vector vector = new Vector();
        boolean z = false;
        boolean z2 = false;
        while (true) {
            String line = this.in.readLine();
            if (line == null) {
                break;
            }
            if (z) {
                if (line.indexOf("<!--end-generated-navbar-->") >= 0) {
                    break;
                }
                this.oldNavbarText.append(line);
                this.oldNavbarText.append('\n');
                if (z2) {
                    if (line.indexOf("<!--end-children-toc-->") >= 0) {
                        z2 = false;
                    } else {
                        Matcher matcher = childPat.matcher(line);
                        if (matcher.find()) {
                            vector.add(matcher.group());
                        }
                        Matcher matcher2 = parentPat.matcher(line);
                        if (matcher2.find() && this.parentName == null) {
                            this.parentName = matcher2.group(1);
                        }
                    }
                }
                if (line.indexOf("<!--start-children-toc-->") >= 0) {
                    z2 = true;
                }
            } else if (line.indexOf("<!--start-generated-navbar-->") >= 0) {
                z = true;
            }
            if (this.writeNeeded && !z) {
                this.cout.println(line);
            }
        }
        int size = vector.size();
        String[] strArr = new String[size];
        this.nchildren = size;
        vector.copyInto(strArr);
        this.childLinkText = strArr;
        if (!this.writeNeeded) {
            this.in.close();
        }
        if (this.parentName != null) {
            FileInfo fileInfoFind = find(new File(this.file.toURI().resolve(this.parentName)));
            fileInfoFind.scan();
            this.parent = fileInfoFind;
        }
    }

    public void writeLinks(int i, StringBuffer stringBuffer) throws Throwable {
        boolean z;
        int i2 = i;
        FileInfo fileInfo = null;
        FileInfo fileInfo2 = this;
        while (true) {
            i2--;
            if (i2 < 0) {
                break;
            }
            fileInfo = fileInfo2;
            fileInfo2 = fileInfo2.parent;
        }
        if (i == 0) {
            stringBuffer.append("<!--start-children-toc-->\n");
        }
        if (i == 0 && this.parentName != null) {
            stringBuffer.append("<ul parent=\"");
            stringBuffer.append(this.parentName);
            stringBuffer.append("\">\n");
        } else {
            stringBuffer.append("<ul>\n");
        }
        URI uri = this.file.toURI();
        URI uri2 = fileInfo2.file.toURI();
        for (int i3 = 0; i3 < fileInfo2.nchildren; i3++) {
            String strReplaceFirst = fileInfo2.childLinkText[i3];
            if (i > 0) {
                Matcher matcher = linkPat.matcher(strReplaceFirst);
                matcher.find();
                String strGroup = matcher.group(1);
                strReplaceFirst = matcher.replaceFirst(" href=\"" + Path.relativize(uri2.resolve(strGroup).toString(), uri.toString()) + "\"");
                int iIndexOf = strGroup.indexOf(35);
                if (iIndexOf >= 0) {
                    strGroup = strGroup.substring(0, iIndexOf);
                }
                z = find(new File(uri2.resolve(strGroup))) == fileInfo;
                if (z || i <= 1) {
                }
            } else {
                z = false;
            }
            stringBuffer.append("<li>");
            stringBuffer.append(strReplaceFirst);
            if (z) {
                stringBuffer.append('\n');
                writeLinks(i - 1, stringBuffer);
            }
            stringBuffer.append("</li>\n");
        }
        stringBuffer.append("</ul>\n");
        if (i == 0) {
            stringBuffer.append("<!--end-children-toc-->\n");
        }
    }

    public void write() throws Throwable {
        int i = 0;
        FileInfo fileInfo = this;
        while (true) {
            fileInfo = fileInfo.parent;
            if (fileInfo == null) {
                break;
            } else {
                i++;
            }
        }
        this.cout.println("<!--start-generated-navbar-->");
        writeLinks(i, this.newNavbarText);
        this.cout.print(this.newNavbarText);
        this.cout.println("<!--end-generated-navbar-->");
        while (true) {
            String line = this.in.readLine();
            if (line == null) {
                break;
            } else {
                this.cout.println(line);
            }
        }
        this.in.close();
        if (this.oldNavbarText.toString().equals(this.newNavbarText.toString())) {
            System.err.println("fixup " + this.file + " - no change");
            return;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(this.file);
        fileOutputStream.write(this.bout.toByteArray());
        fileOutputStream.close();
        System.err.println("fixup " + this.file + " - updated");
    }
}
