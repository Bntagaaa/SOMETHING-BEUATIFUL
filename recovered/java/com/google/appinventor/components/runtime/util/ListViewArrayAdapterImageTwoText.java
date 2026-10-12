package com.google.appinventor.components.runtime.util;

import android.R;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ListViewArrayAdapterImageTwoText {
    private ComponentContainer container;
    private List<YailDictionary> currentItems;
    private int detailTextColor;
    private int detailTextSize;
    private final Filter filter = new Filter() { // from class: com.google.appinventor.components.runtime.util.ListViewArrayAdapterImageTwoText.1
        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            String lowerCase = charSequence.toString().toLowerCase();
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (lowerCase == null || lowerCase.length() == 0) {
                filterResults.count = ListViewArrayAdapterImageTwoText.this.currentItems.size();
                filterResults.values = ListViewArrayAdapterImageTwoText.this.currentItems;
                return filterResults;
            }
            ListViewArrayAdapterImageTwoText.this.filterCurrentItems.clear();
            for (YailDictionary yailDictionary : ListViewArrayAdapterImageTwoText.this.currentItems) {
                if (yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString().concat(ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION))).contains(charSequence)) {
                    ListViewArrayAdapterImageTwoText.this.filterCurrentItems.add(yailDictionary);
                }
            }
            filterResults.count = ListViewArrayAdapterImageTwoText.this.filterCurrentItems.size();
            filterResults.values = ListViewArrayAdapterImageTwoText.this.filterCurrentItems;
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            ListViewArrayAdapterImageTwoText.this.itemAdapter.clear();
            Iterator it = ListViewArrayAdapterImageTwoText.this.filterCurrentItems.iterator();
            while (it.hasNext()) {
                ListViewArrayAdapterImageTwoText.this.itemAdapter.add((YailDictionary) it.next());
            }
        }
    };
    private List<YailDictionary> filterCurrentItems;
    private int imageHeight;
    private int imageWidth;
    private ArrayAdapter<YailDictionary> itemAdapter;
    private int textColor;
    private int textSize;

    public ListViewArrayAdapterImageTwoText(int i, int i2, int i3, int i4, int i5, int i6, ComponentContainer componentContainer, List<YailDictionary> list) {
        this.textSize = i;
        this.detailTextSize = i2;
        this.textColor = i3;
        this.detailTextColor = i4;
        this.imageWidth = i5;
        this.imageHeight = i6;
        this.container = componentContainer;
        this.currentItems = list;
        this.filterCurrentItems = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View createView() {
        LinearLayout linearLayout = new LinearLayout(this.container.$context());
        linearLayout.setOrientation(0);
        linearLayout.setPadding(15, 15, 15, 15);
        View imageView = new ImageView(this.container.$context());
        imageView.setLayoutParams(new LinearLayout.LayoutParams(this.imageWidth, this.imageHeight));
        imageView.setId(1);
        LinearLayout linearLayout2 = new LinearLayout(this.container.$context());
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(10, 10, 10, 10);
        TextView textView = new TextView(this.container.$context());
        textView.setPadding(10, 10, 10, 10);
        textView.setId(2);
        TextView textView2 = new TextView(this.container.$context());
        textView2.setPadding(10, 10, 10, 10);
        textView2.setId(3);
        linearLayout2.addView(textView);
        linearLayout2.addView(textView2);
        linearLayout.addView(imageView);
        linearLayout.addView(linearLayout2);
        return linearLayout;
    }

    public void setImage(ImageView imageView, String str) {
        BitmapDrawable bitmapDrawable;
        if (str != null) {
            try {
                bitmapDrawable = MediaUtil.getBitmapDrawable(this.container.$form(), str);
            } catch (IOException unused) {
                Log.e(Component.LISTVIEW_KEY_IMAGE, "Unable to load ".concat(str));
                bitmapDrawable = null;
            }
            ViewUtil.setImage(imageView, bitmapDrawable);
        }
    }

    public ArrayAdapter<YailDictionary> createAdapter() {
        ArrayAdapter<YailDictionary> arrayAdapter = new ArrayAdapter<YailDictionary>(this.container.$context(), R.layout.simple_list_item_2, R.id.text1, this.currentItems) { // from class: com.google.appinventor.components.runtime.util.ListViewArrayAdapterImageTwoText.2
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View viewCreateView = ListViewArrayAdapterImageTwoText.this.createView();
                ImageView imageView = (ImageView) viewCreateView.findViewById(1);
                TextView textView = (TextView) viewCreateView.findViewById(2);
                TextView textView2 = (TextView) viewCreateView.findViewById(3);
                YailDictionary yailDictionary = (YailDictionary) ListViewArrayAdapterImageTwoText.this.filterCurrentItems.get(i);
                String string = yailDictionary.get(Component.LISTVIEW_KEY_IMAGE).toString();
                String string2 = yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString();
                String stringEmptyIfNull = ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION));
                ListViewArrayAdapterImageTwoText.this.setImage(imageView, string);
                textView.setText(string2);
                textView2.setText(stringEmptyIfNull);
                textView.setTextColor(ListViewArrayAdapterImageTwoText.this.textColor);
                textView2.setTextColor(ListViewArrayAdapterImageTwoText.this.detailTextColor);
                textView.setTextSize(ListViewArrayAdapterImageTwoText.this.textSize);
                textView2.setTextSize(ListViewArrayAdapterImageTwoText.this.detailTextSize);
                return viewCreateView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Filterable
            public Filter getFilter() {
                return ListViewArrayAdapterImageTwoText.this.filter;
            }
        };
        this.itemAdapter = arrayAdapter;
        return arrayAdapter;
    }
}
