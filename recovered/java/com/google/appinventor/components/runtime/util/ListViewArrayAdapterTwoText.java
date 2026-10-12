package com.google.appinventor.components.runtime.util;

import android.R;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.TextView;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ListViewArrayAdapterTwoText {
    private ComponentContainer container;
    private List<YailDictionary> currentItems;
    private int detailTextColor;
    private int detailTextSize;
    private final Filter filter = new Filter() { // from class: com.google.appinventor.components.runtime.util.ListViewArrayAdapterTwoText.1
        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            String lowerCase = charSequence.toString().toLowerCase();
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (lowerCase == null || lowerCase.length() == 0) {
                filterResults.count = ListViewArrayAdapterTwoText.this.currentItems.size();
                filterResults.values = ListViewArrayAdapterTwoText.this.currentItems;
                return filterResults;
            }
            ListViewArrayAdapterTwoText.this.filterCurrentItems.clear();
            for (YailDictionary yailDictionary : ListViewArrayAdapterTwoText.this.currentItems) {
                if (yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString().concat(ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION))).contains(charSequence)) {
                    ListViewArrayAdapterTwoText.this.filterCurrentItems.add(yailDictionary);
                }
            }
            filterResults.count = ListViewArrayAdapterTwoText.this.filterCurrentItems.size();
            filterResults.values = ListViewArrayAdapterTwoText.this.filterCurrentItems;
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            ListViewArrayAdapterTwoText.this.filterCurrentItems.clear();
            ListViewArrayAdapterTwoText.this.itemAdapter.clear();
            Iterator it = ListViewArrayAdapterTwoText.this.filterCurrentItems.iterator();
            while (it.hasNext()) {
                ListViewArrayAdapterTwoText.this.itemAdapter.add((YailDictionary) it.next());
            }
        }
    };
    private List<YailDictionary> filterCurrentItems;
    private ArrayAdapter<YailDictionary> itemAdapter;
    private int textColor;
    private int textSize;

    public ListViewArrayAdapterTwoText(int i, int i2, int i3, int i4, ComponentContainer componentContainer, List<YailDictionary> list) {
        this.textSize = i;
        this.detailTextSize = i2;
        this.textColor = i3;
        this.detailTextColor = i4;
        this.container = componentContainer;
        this.currentItems = list;
        this.filterCurrentItems = list;
    }

    public ArrayAdapter<YailDictionary> createAdapter() {
        ArrayAdapter<YailDictionary> arrayAdapter = new ArrayAdapter<YailDictionary>(this.container.$context(), R.layout.simple_list_item_2, R.id.text1, this.currentItems) { // from class: com.google.appinventor.components.runtime.util.ListViewArrayAdapterTwoText.2
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                TextView textView = (TextView) view2.findViewById(R.id.text1);
                TextView textView2 = (TextView) view2.findViewById(R.id.text2);
                YailDictionary yailDictionary = (YailDictionary) ListViewArrayAdapterTwoText.this.filterCurrentItems.get(i);
                String stringEmptyIfNull = ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT));
                String stringEmptyIfNull2 = ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION));
                textView.setText(stringEmptyIfNull);
                textView2.setText(stringEmptyIfNull2);
                textView.setTextColor(ListViewArrayAdapterTwoText.this.textColor);
                textView2.setTextColor(ListViewArrayAdapterTwoText.this.detailTextColor);
                textView.setTextSize(ListViewArrayAdapterTwoText.this.textSize);
                textView2.setTextSize(ListViewArrayAdapterTwoText.this.detailTextSize);
                return view2;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Filterable
            public Filter getFilter() {
                return ListViewArrayAdapterTwoText.this.filter;
            }
        };
        this.itemAdapter = arrayAdapter;
        return arrayAdapter;
    }
}
