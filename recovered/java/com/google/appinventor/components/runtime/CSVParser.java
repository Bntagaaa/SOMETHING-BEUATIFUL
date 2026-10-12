package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "Component for parsing a csv file", iconName = "images/csvparser.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class CSVParser extends AndroidNonvisibleComponent {
    private ComponentContainer container;
    private List<ArrayList<String>> csv;

    public CSVParser(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.csv = new ArrayList();
        this.container = componentContainer;
    }

    @SimpleFunction(description = "Set the main CSV File With it")
    public void SetCSV(String str) throws IOException {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        this.csv.add(new ArrayList<>(Arrays.asList(line.split(","))));
                    } else {
                        bufferedReader.close();
                        return;
                    }
                } finally {
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @SimpleFunction(description = "Get Column With Column Number")
    public List GetColumnWithIndex(int i) {
        ArrayList arrayList = new ArrayList();
        Iterator<ArrayList<String>> it = this.csv.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().get(i));
        }
        return arrayList;
    }

    @SimpleFunction(description = "Get Row With Row Number")
    public List GetRowWithIndex(int i) {
        return this.csv.get(i);
    }

    @SimpleFunction(description = "Get Cell With Column And Row Number")
    public String GetCellWithIndex(int i, int i2) {
        return this.csv.get(i).get(i2);
    }

    @SimpleFunction(description = "Change the data of a cell with column number and row number")
    public void UpdateCell(String str, int i, int i2) {
        ArrayList<String> arrayList = this.csv.get(i);
        arrayList.set(i2, str);
        this.csv.set(i, arrayList);
    }

    @SimpleFunction(description = "Delete Column With Column Number")
    public void DeleteColumnWithIndex(int i) {
        new ArrayList();
        int i2 = 0;
        for (ArrayList<String> arrayList : this.csv) {
            arrayList.remove(i);
            this.csv.set(i2, arrayList);
            i2++;
        }
    }

    @SimpleFunction(description = "Deletes a row with certain index")
    public void DeleteRowWithIndex(int i) {
        this.csv.remove(i);
    }

    @SimpleFunction(description = "Adds column in specific index")
    public void AddColumnWithIndex(YailList yailList, int i) {
        int i2 = 0;
        for (ArrayList<String> arrayList : this.csv) {
            int i3 = i2 + 1;
            arrayList.add(i, yailList.get(i3).toString());
            this.csv.set(i2, arrayList);
            i2 = i3;
        }
    }

    @SimpleFunction(description = "Adds row in certain index")
    public void AddRowWithIndex(YailList yailList, int i) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator it = yailList.iterator();
        while (it.hasNext()) {
            it.next();
        }
        this.csv.add(i, arrayList);
    }

    @SimpleFunction(description = "Updates column with given index")
    public void UpdateColumnWithIndex(YailList yailList, int i) {
        int i2 = 0;
        for (ArrayList<String> arrayList : this.csv) {
            int i3 = i2 + 1;
            arrayList.set(i, yailList.get(i3).toString());
            this.csv.set(i2, arrayList);
            i2 = i3;
        }
    }

    @SimpleFunction(description = "Updates the row with given index")
    public void UpdateRowWithIndex(YailList yailList, int i) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator it = yailList.iterator();
        while (it.hasNext()) {
            it.next();
        }
        this.csv.set(i, arrayList);
    }

    @SimpleFunction(description = "Returns the row length")
    public int GetRowsLength() {
        return this.csv.size();
    }

    @SimpleFunction(description = "Returns the column length")
    public int GetColumnsLength() {
        return this.csv.get(0).size();
    }

    @SimpleFunction(description = "Returns the CSV String")
    public String GetCSV() {
        String strZ = "";
        for (ArrayList<String> arrayList : this.csv) {
            int size = arrayList.size() - 1;
            Iterator<String> it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                String strZ2 = _COROUTINE.a.z(strZ, it.next());
                strZ = i != size ? _COROUTINE.a.z(strZ2, ",") : _COROUTINE.a.z(strZ2, " \n");
                i++;
            }
        }
        return strZ;
    }
}
