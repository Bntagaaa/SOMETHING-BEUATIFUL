package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.graphics.drawable.BitmapDrawable;
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
public class ListViewArrayAdapterImageSingleText {
    private ComponentContainer container;
    private List<YailDictionary> currentItems;
    private final Filter filter = new Filter() { // from class: com.google.appinventor.components.runtime.util.ListViewArrayAdapterImageSingleText.1
        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            String lowerCase = charSequence.toString().toLowerCase();
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (lowerCase == null || lowerCase.length() == 0) {
                filterResults.count = ListViewArrayAdapterImageSingleText.this.currentItems.size();
                filterResults.values = ListViewArrayAdapterImageSingleText.this.currentItems;
                return filterResults;
            }
            ListViewArrayAdapterImageSingleText.this.filterCurrentItems.clear();
            for (YailDictionary yailDictionary : ListViewArrayAdapterImageSingleText.this.currentItems) {
                if (yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString().contains(lowerCase)) {
                    ListViewArrayAdapterImageSingleText.this.filterCurrentItems.add(yailDictionary);
                }
            }
            filterResults.count = ListViewArrayAdapterImageSingleText.this.filterCurrentItems.size();
            filterResults.values = ListViewArrayAdapterImageSingleText.this.filterCurrentItems;
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            ListViewArrayAdapterImageSingleText.this.filterCurrentItems = (List) filterResults.values;
            ListViewArrayAdapterImageSingleText.this.itemAdapter.clear();
            Iterator it = ListViewArrayAdapterImageSingleText.this.filterCurrentItems.iterator();
            while (it.hasNext()) {
                ListViewArrayAdapterImageSingleText.this.itemAdapter.add((YailDictionary) it.next());
            }
        }
    };
    private List<YailDictionary> filterCurrentItems;
    private int imageHeight;
    private int imageWidth;
    private ArrayAdapter<YailDictionary> itemAdapter;
    private int textColor;
    private int textSize;

    public ListViewArrayAdapterImageSingleText(int i, int i2, int i3, int i4, ComponentContainer componentContainer, List<YailDictionary> list) {
        this.textSize = i;
        this.textColor = i2;
        this.imageWidth = i3;
        this.imageHeight = i4;
        this.container = componentContainer;
        this.currentItems = list;
        this.filterCurrentItems = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View createView() {
        LinearLayout linearLayout = new LinearLayout(this.container.$context());
        linearLayout.setOrientation(0);
        linearLayout.setPadding(15, 15, 15, 15);
        ImageView imageView = new ImageView(this.container.$context());
        imageView.setId(1);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(this.imageWidth, this.imageHeight));
        TextView textView = new TextView(this.container.$context());
        textView.setPadding(15, 15, 15, 15);
        textView.setId(2);
        linearLayout.addView(imageView);
        linearLayout.addView(textView);
        return linearLayout;
    }

    public void setImage(ImageView imageView, String str) {
        BitmapDrawable bitmapDrawable;
        if (str != "") {
            try {
                bitmapDrawable = MediaUtil.getBitmapDrawable(this.container.$form(), str);
            } catch (IOException unused) {
                a.w("Unable to load ", str, Component.LISTVIEW_KEY_IMAGE);
            }
        } else {
            bitmapDrawable = null;
        }
        ViewUtil.setImage(imageView, bitmapDrawable);
    }

    public ArrayAdapter<YailDictionary> createAdapter() {
        ArrayAdapter<YailDictionary> arrayAdapter = new ArrayAdapter<YailDictionary>(this.container.$context(), 0, this.currentItems) { // from class: com.google.appinventor.components.runtime.util.ListViewArrayAdapterImageSingleText.2
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View viewCreateView = ListViewArrayAdapterImageSingleText.this.createView();
                ImageView imageView = (ImageView) viewCreateView.findViewById(1);
                TextView textView = (TextView) viewCreateView.findViewById(2);
                YailDictionary yailDictionary = (YailDictionary) ListViewArrayAdapterImageSingleText.this.filterCurrentItems.get(i);
                String stringEmptyIfNull = ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_IMAGE));
                String stringEmptyIfNull2 = ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT));
                ListViewArrayAdapterImageSingleText.this.setImage(imageView, stringEmptyIfNull);
                textView.setText(stringEmptyIfNull2);
                textView.setTextColor(ListViewArrayAdapterImageSingleText.this.textColor);
                textView.setTextSize(ListViewArrayAdapterImageSingleText.this.textSize);
                return viewCreateView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Filterable
            public Filter getFilter() {
                return ListViewArrayAdapterImageSingleText.this.filter;
            }
        };
        this.itemAdapter = arrayAdapter;
        return arrayAdapter;
    }
}
