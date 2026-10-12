package com.google.appinventor.components.runtime;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import com.google.appinventor.components.annotations.SimpleObject;

@SimpleObject
/* loaded from: classes.dex */
public class TableLayout implements Layout {
    private final Handler handler = new Handler();
    private final android.widget.TableLayout layoutManager;
    private int numColumns;
    private int numRows;

    public TableLayout(Context context, int i, int i2) {
        this.layoutManager = new android.widget.TableLayout(context);
        this.numColumns = i;
        this.numRows = i2;
        for (int i3 = 0; i3 < i2; i3++) {
            TableRow tableRow = new TableRow(context);
            for (int i4 = 0; i4 < i; i4++) {
                tableRow.addView(newEmptyCellView(), i4, newEmptyCellLayoutParams());
            }
            this.layoutManager.addView(tableRow, i3, new TableLayout.LayoutParams());
        }
    }

    public int getNumColumns() {
        return this.numColumns;
    }

    public void setNumColumns(int i) {
        int i2 = this.numColumns;
        int i3 = 0;
        if (i <= i2) {
            if (i < i2) {
                while (i3 < this.numRows) {
                    ((TableRow) this.layoutManager.getChildAt(i3)).removeViews(i, this.numColumns - i);
                    i3++;
                }
                this.numColumns = i;
                return;
            }
            return;
        }
        this.layoutManager.getContext();
        while (i3 < this.numRows) {
            TableRow tableRow = (TableRow) this.layoutManager.getChildAt(i3);
            for (int i4 = this.numColumns; i4 < i; i4++) {
                tableRow.addView(newEmptyCellView(), i4, newEmptyCellLayoutParams());
            }
            i3++;
        }
        this.numColumns = i;
    }

    public int getNumRows() {
        return this.numRows;
    }

    public void setNumRows(int i) {
        int i2 = this.numRows;
        if (i <= i2) {
            if (i < i2) {
                this.layoutManager.removeViews(i, i2 - i);
                this.numRows = i;
                return;
            }
            return;
        }
        Context context = this.layoutManager.getContext();
        for (int i3 = this.numRows; i3 < i; i3++) {
            TableRow tableRow = new TableRow(context);
            for (int i4 = 0; i4 < this.numColumns; i4++) {
                tableRow.addView(newEmptyCellView(), i4, newEmptyCellLayoutParams());
            }
            this.layoutManager.addView(tableRow, i3, new TableLayout.LayoutParams());
        }
        this.numRows = i;
    }

    @Override // com.google.appinventor.components.runtime.Layout
    public ViewGroup getLayoutManager() {
        return this.layoutManager;
    }

    @Override // com.google.appinventor.components.runtime.Layout
    public void add(AndroidViewComponent androidViewComponent) {
        androidViewComponent.getView().setLayoutParams(newCellLayoutParams());
        addChildLater(androidViewComponent);
    }

    private void addChildLater(final AndroidViewComponent androidViewComponent) {
        this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.TableLayout.1
            @Override // java.lang.Runnable
            public void run() {
                TableLayout.this.addChild(androidViewComponent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addChild(AndroidViewComponent androidViewComponent) {
        int iRow = androidViewComponent.Row();
        int iColumn = androidViewComponent.Column();
        if (iRow == -1 || iColumn == -1) {
            addChildLater(androidViewComponent);
            return;
        }
        if (iRow >= 0 && iRow < this.numRows) {
            if (iColumn >= 0 && iColumn < this.numColumns) {
                TableRow tableRow = (TableRow) this.layoutManager.getChildAt(iRow);
                tableRow.removeViewAt(iColumn);
                View view = androidViewComponent.getView();
                tableRow.addView(view, iColumn, view.getLayoutParams());
                return;
            }
            Log.e("TableLayout", "Child has illegal Column property: " + androidViewComponent);
            return;
        }
        Log.e("TableLayout", "Child has illegal Row property: " + androidViewComponent);
    }

    private View newEmptyCellView() {
        return new TextView(this.layoutManager.getContext());
    }

    private static TableRow.LayoutParams newEmptyCellLayoutParams() {
        return new TableRow.LayoutParams(0, 0);
    }

    private static TableRow.LayoutParams newCellLayoutParams() {
        return new TableRow.LayoutParams();
    }
}
