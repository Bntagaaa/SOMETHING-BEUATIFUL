package com.google.appinventor.components.runtime.util;

import android.net.Uri;
import android.util.Base64;
import android.util.Log;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import gnu.lists.FString;
import gnu.math.IntFraction;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public class JsonUtil {
    private static final String BINFILE_DIR = "/AppInventorBinaries";
    private static final String LOG_TAG = "JsonUtil";

    private JsonUtil() {
    }

    public static List<String> getStringListFromJsonArray(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    @Deprecated
    public static List<Object> getListFromJsonArray(JSONArray jSONArray) throws JSONException {
        return getListFromJsonArray(jSONArray, false);
    }

    public static List<Object> getListFromJsonArray(JSONArray jSONArray, boolean z) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(convertJsonItem(jSONArray.get(i), z));
        }
        return arrayList;
    }

    public static List<Object> getListFromJsonObject(JSONObject jSONObject) throws JSONException {
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        ArrayList arrayList2 = new ArrayList();
        while (itKeys.hasNext()) {
            arrayList2.add(itKeys.next());
        }
        Collections.sort(arrayList2);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(str);
            arrayList3.add(convertJsonItem(jSONObject.get(str), false));
            arrayList.add(arrayList3);
        }
        return arrayList;
    }

    public static YailDictionary getDictionaryFromJsonObject(JSONObject jSONObject) throws JSONException {
        YailDictionary yailDictionary = new YailDictionary();
        TreeSet treeSet = new TreeSet();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            treeSet.add(itKeys.next());
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            yailDictionary.put(str, convertJsonItem(jSONObject.get(str), true));
        }
        return yailDictionary;
    }

    @Deprecated
    public static Object convertJsonItem(Object obj) throws JSONException {
        return convertJsonItem(obj, false);
    }

    public static Object convertJsonItem(Object obj, boolean z) throws JSONException {
        boolean z2;
        if (obj == null) {
            return "null";
        }
        if (obj instanceof JSONObject) {
            if (z) {
                return getDictionaryFromJsonObject((JSONObject) obj);
            }
            return getListFromJsonObject((JSONObject) obj);
        }
        if (obj instanceof JSONArray) {
            List<Object> listFromJsonArray = getListFromJsonArray((JSONArray) obj, z);
            return z ? YailList.makeList((List) listFromJsonArray) : listFromJsonArray;
        }
        Boolean bool = Boolean.FALSE;
        if (!obj.equals(bool) && (!((z2 = obj instanceof String)) || !((String) obj).equalsIgnoreCase("false"))) {
            bool = Boolean.TRUE;
            if (!obj.equals(bool) && (!z2 || !((String) obj).equalsIgnoreCase("true"))) {
                return obj instanceof Number ? obj : obj.toString();
            }
        }
        return bool;
    }

    public static String getJsonRepresentation(Object obj) throws JSONException {
        if (obj == null || obj.equals(null)) {
            return "null";
        }
        if (obj instanceof FString) {
            return JSONObject.quote(obj.toString());
        }
        if (obj instanceof YailList) {
            return ((YailList) obj).toJSONString();
        }
        if (obj instanceof IntFraction) {
            return JSONObject.numberToString(Double.valueOf(((IntFraction) obj).doubleValue()));
        }
        if (obj instanceof Number) {
            return JSONObject.numberToString((Number) obj);
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (obj instanceof List) {
            obj = ((List) obj).toArray();
        }
        String str = "";
        if (obj instanceof YailDictionary) {
            StringBuilder sb = new StringBuilder("{");
            for (Map.Entry<Object, Object> entry : ((YailDictionary) obj).entrySet()) {
                sb.append(str);
                sb.append(JSONObject.quote(entry.getKey().toString()));
                sb.append(':');
                sb.append(getJsonRepresentation(entry.getValue()));
                str = ",";
            }
            sb.append('}');
            return sb.toString();
        }
        if (obj.getClass().isArray()) {
            StringBuilder sb2 = new StringBuilder("[");
            Object[] objArr = (Object[]) obj;
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                Object obj2 = objArr[i];
                sb2.append(str);
                sb2.append(getJsonRepresentation(obj2));
                i++;
                str = ",";
            }
            sb2.append("]");
            return sb2.toString();
        }
        return JSONObject.quote(obj.toString());
    }

    @Deprecated
    public static Object getObjectFromJson(String str) throws JSONException {
        return getObjectFromJson(str, false);
    }

    public static Object getObjectFromJson(String str, boolean z) throws JSONException {
        if (str == null || str.equals("")) {
            return "";
        }
        Object objNextValue = new JSONTokener(str).nextValue();
        if (objNextValue == null || objNextValue.equals(JSONObject.NULL)) {
            return null;
        }
        if ((objNextValue instanceof String) || (objNextValue instanceof Number) || (objNextValue instanceof Boolean)) {
            return objNextValue;
        }
        if (objNextValue instanceof JSONArray) {
            return getListFromJsonArray((JSONArray) objNextValue, z);
        }
        if (!(objNextValue instanceof JSONObject)) {
            throw new JSONException("Invalid JSON string.");
        }
        if (z) {
            return getDictionaryFromJsonObject((JSONObject) objNextValue);
        }
        return getListFromJsonObject((JSONObject) objNextValue);
    }

    @Deprecated
    public static String getJsonRepresentationIfValueFileName(Object obj) {
        Log.w(LOG_TAG, "Calling deprecated function getJsonRepresentationIfValueFileName", new IllegalAccessException());
        return getJsonRepresentationIfValueFileName(Form.getActiveForm(), obj);
    }

    public static String getJsonRepresentationIfValueFileName(Form form, Object obj) throws IOException {
        List<String> stringListFromJsonArray;
        try {
            if (obj instanceof String) {
                stringListFromJsonArray = getStringListFromJsonArray(new JSONArray((String) obj));
            } else if (obj instanceof List) {
                stringListFromJsonArray = (List) obj;
            } else {
                throw new YailRuntimeError("getJsonRepresentationIfValueFileName called on unknown type", obj.getClass().getName());
            }
            if (stringListFromJsonArray.size() != 2 || !stringListFromJsonArray.get(0).startsWith(".")) {
                return null;
            }
            String strWriteFile = writeFile(form, stringListFromJsonArray.get(1), stringListFromJsonArray.get(0).substring(1));
            System.out.println("Filename Written: " + strWriteFile);
            return getJsonRepresentation(strWriteFile.replace("file:/", "file:///"));
        } catch (JSONException e) {
            Log.e(LOG_TAG, "JSONException", e);
            return null;
        }
    }

    public static YailList getColumnsFromJson(String str) throws JSONException {
        Object objectFromJson = getObjectFromJson(str);
        ArrayList arrayList = new ArrayList();
        if (objectFromJson instanceof List) {
            for (Object obj : (List) objectFromJson) {
                ArrayList arrayList2 = new ArrayList();
                if (obj instanceof List) {
                    List list = (List) obj;
                    arrayList2.add(list.get(0).toString());
                    Object obj2 = list.get(1);
                    if (obj2 instanceof List) {
                        Iterator it = ((List) obj2).iterator();
                        while (it.hasNext()) {
                            arrayList2.add(it.next().toString());
                        }
                    } else {
                        arrayList2.add(obj2.toString());
                    }
                }
                arrayList.add(YailList.makeList((List) arrayList2));
            }
        }
        return YailList.makeList((List) arrayList);
    }

    private static String writeFile(Form form, final String str, String str2) throws IOException {
        String defaultPath = form.getDefaultPath(BINFILE_DIR);
        String path = Uri.parse(form.getDefaultPath("")).getPath();
        File file = new File(Uri.parse(defaultPath).getPath());
        if (!file.isDirectory() && !file.mkdirs()) {
            throw new YailRuntimeError("Unable to create " + file, "Write");
        }
        final Synchronizer synchronizer = new Synchronizer();
        try {
            File fileCreateTempFile = File.createTempFile("BinFile", "." + str2, file);
            new FileWriteOperation(form, form, "Write", fileCreateTempFile.getAbsolutePath().replace(path, ""), form.DefaultFileScope(), false, true) { // from class: com.google.appinventor.components.runtime.util.JsonUtil.1
                @Override // com.google.appinventor.components.runtime.util.FileWriteOperation, com.google.appinventor.components.runtime.util.FileStreamOperation
                public boolean process(OutputStream outputStream) throws IOException {
                    try {
                        outputStream.write(Base64.decode(str, 0));
                        synchronizer.wakeup(Boolean.TRUE);
                        return true;
                    } catch (Exception e) {
                        synchronizer.caught(e);
                        return true;
                    }
                }
            }.run();
            synchronizer.waitfor();
            if (synchronizer.getThrowable() != null) {
                Throwable throwable = synchronizer.getThrowable();
                Log.e(LOG_TAG, "Error writing content", throwable);
                if (throwable instanceof RuntimeException) {
                    throw ((RuntimeException) throwable);
                }
                if (throwable instanceof IOException) {
                    throw ((IOException) throwable);
                }
                throw new YailRuntimeError(throwable.getMessage(), "Write");
            }
            trimDirectory(20, file);
            return fileCreateTempFile.getAbsolutePath();
        } catch (IOException e) {
            throw new YailRuntimeError(e.getMessage() + " destDirectory: " + file, "Write");
        }
    }

    private static void trimDirectory(int i, File file) {
        File[] fileArrListFiles = file.listFiles();
        Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.google.appinventor.components.runtime.util.JsonUtil.2
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                return Long.valueOf(file2.lastModified()).compareTo(Long.valueOf(file3.lastModified()));
            }
        });
        int length = fileArrListFiles.length - i;
        for (int i2 = 0; i2 < length; i2++) {
            fileArrListFiles[i2].delete();
        }
    }

    public static String encodeJsonObject(Object obj) throws IllegalArgumentException {
        try {
            return getJsonRepresentation(obj);
        } catch (JSONException unused) {
            throw new IllegalArgumentException("jsonObject is not a legal JSON object");
        }
    }
}
