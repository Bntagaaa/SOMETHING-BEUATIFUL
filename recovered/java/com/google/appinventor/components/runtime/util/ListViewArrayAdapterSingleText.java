package com.google.appinventor.components.runtime.util;

import android.R;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.TextView;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import java.util.List;

/* loaded from: classes.dex */
public class ListViewArrayAdapterSingleText {
    private ComponentContainer container;
    private List<YailDictionary> currentItems;
    private final Filter filter = new Filter() { // from class: com.google.appinventor.components.runtime.util.ListViewArrayAdapterSingleText.1
        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            String lowerCase = charSequence.toString().toLowerCase();
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (lowerCase == null || lowerCase.length() == 0) {
                filterResults.count = ListViewArrayAdapterSingleText.this.currentItems.size();
                filterResults.values = ListViewArrayAdapterSingleText.this.currentItems;
                return filterResults;
            }
            for (YailDictionary yailDictionary : ListViewArrayAdapterSingleText.this.currentItems) {
                ListViewArrayAdapterSingleText.this.filterCurrentItems.clear();
                if (yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString().contains(lowerCase)) {
                    ListViewArrayAdapterSingleText.this.filterCurrentItems.add(yailDictionary);
                }
            }
            filterResults.count = ListViewArrayAdapterSingleText.this.filterCurrentItems.size();
            filterResults.values = ListViewArrayAdapterSingleText.this.filterCurrentItems;
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            ListViewArrayAdapterSingleText.this.filterCurrentItems = (List) filterResults.values;
            ListViewArrayAdapterSingleText.this.itemAdapter.clear();
            if (ListViewArrayAdapterSingleText.this.filterCurrentItems != null) {
                for (int i = 0; i < ListViewArrayAdapterSingleText.this.filterCurrentItems.size(); i++) {
                    ListViewArrayAdapterSingleText.this.itemAdapter.add((YailDictionary) ListViewArrayAdapterSingleText.this.filterCurrentItems.get(i));
                }
            }
        }
    };
    private List<YailDictionary> filterCurrentItems;
    private ArrayAdapter<YailDictionary> itemAdapter;
    private int textColor;
    private int textSize;

    public ListViewArrayAdapterSingleText(int i, int i2, ComponentContainer componentContainer, List<YailDictionary> list) {
        this.textSize = i;
        this.textColor = i2;
        this.container = componentContainer;
        this.currentItems = list;
        this.filterCurrentItems = list;
    }

    public ArrayAdapter<YailDictionary> createAdapter() {
        ArrayAdapter<YailDictionary> arrayAdapter = new ArrayAdapter<YailDictionary>(this.container.$context(), R.layout.simple_list_item_1, this.currentItems) { // from class: com.google.appinventor.components.runtime.util.ListViewArrayAdapterSingleText.2
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                TextView textView = (TextView) view2.findViewById(R.id.text1);
                textView.setText(ElementsUtil.toStringEmptyIfNull(((YailDictionary) ListViewArrayAdapterSingleText.this.filterCurrentItems.get(i)).get(Component.LISTVIEW_KEY_MAIN_TEXT)));
                textView.setTextColor(ListViewArrayAdapterSingleText.this.textColor);
                textView.setTextSize(ListViewArrayAdapterSingleText.this.textSize);
                return view2;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Filterable
            public Filter getFilter() {
                return ListViewArrayAdapterSingleText.this.filter;
            }
        };
        this.itemAdapter = arrayAdapter;
        return arrayAdapter;
    }
}
