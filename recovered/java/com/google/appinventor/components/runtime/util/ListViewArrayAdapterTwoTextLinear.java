package com.google.appinventor.components.runtime.util;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ListViewArrayAdapterTwoTextLinear {
    private static ComponentContainer container;
    private List<YailDictionary> currentItems;
    private int detailTextColor;
    private int detailTextSize;
    private final Filter filter;
    private List<YailDictionary> filterCurrentItems;
    private ArrayAdapter<YailDictionary> itemAdapter;
    private int textColor;
    private int textSize;

    public ListViewArrayAdapterTwoTextLinear(int i, int i2, int i3, int i4, ComponentContainer componentContainer, List<YailDictionary> list) {
        this.textSize = i;
        this.detailTextSize = i2;
        this.textColor = i3;
        this.detailTextColor = i4;
        container = componentContainer;
        this.currentItems = list;
        this.filterCurrentItems = list;
        this.filter = new Filter() { // from class: com.google.appinventor.components.runtime.util.ListViewArrayAdapterTwoTextLinear.1
            @Override // android.widget.Filter
            public Filter.FilterResults performFiltering(CharSequence charSequence) {
                String lowerCase = charSequence.toString().toLowerCase();
                Filter.FilterResults filterResults = new Filter.FilterResults();
                if (lowerCase == null || lowerCase.length() == 0) {
                    filterResults.count = ListViewArrayAdapterTwoTextLinear.this.currentItems.size();
                    filterResults.values = ListViewArrayAdapterTwoTextLinear.this.currentItems;
                    return filterResults;
                }
                ListViewArrayAdapterTwoTextLinear.this.filterCurrentItems.clear();
                for (YailDictionary yailDictionary : ListViewArrayAdapterTwoTextLinear.this.currentItems) {
                    if (yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString().concat(ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION))).contains(charSequence)) {
                        ListViewArrayAdapterTwoTextLinear.this.filterCurrentItems.add(yailDictionary);
                    }
                }
                filterResults.count = ListViewArrayAdapterTwoTextLinear.this.filterCurrentItems.size();
                filterResults.values = ListViewArrayAdapterTwoTextLinear.this.filterCurrentItems;
                return filterResults;
            }

            @Override // android.widget.Filter
            public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                ListViewArrayAdapterTwoTextLinear.this.filterCurrentItems = (List) filterResults.values;
                ListViewArrayAdapterTwoTextLinear.this.itemAdapter.clear();
                Iterator it = ListViewArrayAdapterTwoTextLinear.this.filterCurrentItems.iterator();
                while (it.hasNext()) {
                    ListViewArrayAdapterTwoTextLinear.this.itemAdapter.add((YailDictionary) it.next());
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View createView() {
        LinearLayout linearLayout = new LinearLayout(container.$context());
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setId(1);
        linearLayout.setOrientation(0);
        linearLayout.setPadding(15, 15, 15, 15);
        TextView textView = new TextView(container.$context());
        textView.setPadding(10, 10, 10, 10);
        textView.setGravity(3);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2, 1.0f));
        textView.setId(2);
        TextView textView2 = new TextView(container.$context());
        textView2.setPadding(10, 10, 10, 10);
        textView2.setGravity(5);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2, 1.0f));
        textView2.setId(3);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        return linearLayout;
    }

    public ArrayAdapter<YailDictionary> createAdapter() {
        ArrayAdapter<YailDictionary> arrayAdapter = new ArrayAdapter<YailDictionary>(container.$context(), 0, this.currentItems) { // from class: com.google.appinventor.components.runtime.util.ListViewArrayAdapterTwoTextLinear.2
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View viewCreateView = ListViewArrayAdapterTwoTextLinear.this.createView();
                TextView textView = (TextView) viewCreateView.findViewById(2);
                TextView textView2 = (TextView) viewCreateView.findViewById(3);
                YailDictionary yailDictionary = (YailDictionary) ListViewArrayAdapterTwoTextLinear.this.filterCurrentItems.get(i);
                String stringEmptyIfNull = ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT));
                String stringEmptyIfNull2 = ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION));
                textView.setText(stringEmptyIfNull);
                textView2.setText(stringEmptyIfNull2);
                textView.setTextColor(ListViewArrayAdapterTwoTextLinear.this.textColor);
                textView2.setTextColor(ListViewArrayAdapterTwoTextLinear.this.detailTextColor);
                textView.setTextSize(ListViewArrayAdapterTwoTextLinear.this.textSize);
                textView2.setTextSize(ListViewArrayAdapterTwoTextLinear.this.detailTextSize);
                return viewCreateView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Filterable
            public Filter getFilter() {
                return ListViewArrayAdapterTwoTextLinear.this.filter;
            }
        };
        this.itemAdapter = arrayAdapter;
        return arrayAdapter;
    }
}
