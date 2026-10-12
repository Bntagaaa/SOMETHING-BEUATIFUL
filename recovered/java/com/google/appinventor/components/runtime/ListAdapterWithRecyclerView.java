package com.google.appinventor.components.runtime;

import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.TextViewUtil;
import com.google.appinventor.components.runtime.util.ViewUtil;
import com.google.appinventor.components.runtime.util.YailDictionary;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class ListAdapterWithRecyclerView extends RecyclerView.Adapter<RvViewHolder> implements Filterable {
    private static final String LOG_TAG = "ListAdapterRecyclerView";
    private int backgroundColor;
    private ClickListener clickListener;
    protected final ComponentContainer container;
    protected final Filter filter;
    private List<YailDictionary> filterItems;
    private int idCard;
    private int idFirst;
    private int idImages;
    private int idSecond;
    private int imageHeight;
    private int imageWidth;
    public boolean isSelected;
    public Boolean[] isVisible;
    private CardView[] itemViews;
    private List<YailDictionary> items;
    private int layoutType;
    private boolean multiSelect;
    public Boolean[] selection;
    private int selectionColor;
    private int textDetailColor;
    private String textDetailFont;
    private float textDetailSize;
    private int textMainColor;
    private String textMainFont;
    private float textMainSize;

    public interface ClickListener {
        void onItemClick(int i, View view);
    }

    public ListAdapterWithRecyclerView(ComponentContainer componentContainer, List<YailDictionary> list, int i, int i2, float f, float f2, String str, String str2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.filter = new Filter() { // from class: com.google.appinventor.components.runtime.ListAdapterWithRecyclerView.1
            @Override // android.widget.Filter
            public Filter.FilterResults performFiltering(CharSequence charSequence) {
                String lowerCase = charSequence.toString().toLowerCase();
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (lowerCase == null || lowerCase.length() == 0) {
                    arrayList = new ArrayList(ListAdapterWithRecyclerView.this.items);
                } else {
                    for (YailDictionary yailDictionary : ListAdapterWithRecyclerView.this.items) {
                        Object obj = yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION);
                        String string = yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString();
                        if (obj != null) {
                            string = _COROUTINE.a.j(string, " ", obj.toString().toLowerCase());
                        }
                        if (string.toLowerCase().contains(lowerCase)) {
                            arrayList.add(yailDictionary);
                        }
                    }
                }
                filterResults.count = arrayList.size();
                filterResults.values = arrayList;
                return filterResults;
            }

            @Override // android.widget.Filter
            public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                ListAdapterWithRecyclerView.this.filterItems = (List) filterResults.values;
                for (int i8 = 0; i8 < ListAdapterWithRecyclerView.this.items.size(); i8++) {
                    if (ListAdapterWithRecyclerView.this.filterItems.size() > 0 && ListAdapterWithRecyclerView.this.filterItems.contains(ListAdapterWithRecyclerView.this.items.get(i8))) {
                        ListAdapterWithRecyclerView listAdapterWithRecyclerView = ListAdapterWithRecyclerView.this;
                        listAdapterWithRecyclerView.isVisible[i8] = Boolean.TRUE;
                        if (listAdapterWithRecyclerView.itemViews[i8] != null) {
                            ListAdapterWithRecyclerView.this.itemViews[i8].setVisibility(0);
                            ListAdapterWithRecyclerView.this.itemViews[i8].getLayoutParams().height = -2;
                        }
                    } else {
                        ListAdapterWithRecyclerView listAdapterWithRecyclerView2 = ListAdapterWithRecyclerView.this;
                        listAdapterWithRecyclerView2.isVisible[i8] = Boolean.FALSE;
                        if (listAdapterWithRecyclerView2.itemViews[i8] != null) {
                            ListAdapterWithRecyclerView.this.itemViews[i8].setVisibility(8);
                            ListAdapterWithRecyclerView.this.itemViews[i8].getLayoutParams().height = 0;
                        }
                    }
                }
            }
        };
        this.isSelected = false;
        this.idFirst = -1;
        this.idSecond = -1;
        this.idImages = -1;
        this.idCard = 1;
        this.items = list;
        this.container = componentContainer;
        this.textMainSize = f;
        this.textMainColor = i;
        this.textDetailColor = i2;
        this.textDetailSize = f2;
        this.textMainFont = str;
        this.textDetailFont = str2;
        this.layoutType = i3;
        this.backgroundColor = i4;
        this.selectionColor = i5;
        this.imageHeight = i7;
        this.imageWidth = i6;
        this.itemViews = new CardView[list.size()];
        this.multiSelect = z;
        Boolean[] boolArr = new Boolean[list.size()];
        this.selection = boolArr;
        Arrays.fill(boolArr, Boolean.FALSE);
        Boolean[] boolArr2 = new Boolean[list.size()];
        this.isVisible = boolArr2;
        Arrays.fill(boolArr2, Boolean.TRUE);
    }

    public ListAdapterWithRecyclerView(ComponentContainer componentContainer, List<String> list, int i, float f, String str, int i2, int i3) {
        this.filter = new Filter() { // from class: com.google.appinventor.components.runtime.ListAdapterWithRecyclerView.1
            @Override // android.widget.Filter
            public Filter.FilterResults performFiltering(CharSequence charSequence) {
                String lowerCase = charSequence.toString().toLowerCase();
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (lowerCase == null || lowerCase.length() == 0) {
                    arrayList = new ArrayList(ListAdapterWithRecyclerView.this.items);
                } else {
                    for (YailDictionary yailDictionary : ListAdapterWithRecyclerView.this.items) {
                        Object obj = yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION);
                        String string = yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString();
                        if (obj != null) {
                            string = _COROUTINE.a.j(string, " ", obj.toString().toLowerCase());
                        }
                        if (string.toLowerCase().contains(lowerCase)) {
                            arrayList.add(yailDictionary);
                        }
                    }
                }
                filterResults.count = arrayList.size();
                filterResults.values = arrayList;
                return filterResults;
            }

            @Override // android.widget.Filter
            public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                ListAdapterWithRecyclerView.this.filterItems = (List) filterResults.values;
                for (int i8 = 0; i8 < ListAdapterWithRecyclerView.this.items.size(); i8++) {
                    if (ListAdapterWithRecyclerView.this.filterItems.size() > 0 && ListAdapterWithRecyclerView.this.filterItems.contains(ListAdapterWithRecyclerView.this.items.get(i8))) {
                        ListAdapterWithRecyclerView listAdapterWithRecyclerView = ListAdapterWithRecyclerView.this;
                        listAdapterWithRecyclerView.isVisible[i8] = Boolean.TRUE;
                        if (listAdapterWithRecyclerView.itemViews[i8] != null) {
                            ListAdapterWithRecyclerView.this.itemViews[i8].setVisibility(0);
                            ListAdapterWithRecyclerView.this.itemViews[i8].getLayoutParams().height = -2;
                        }
                    } else {
                        ListAdapterWithRecyclerView listAdapterWithRecyclerView2 = ListAdapterWithRecyclerView.this;
                        listAdapterWithRecyclerView2.isVisible[i8] = Boolean.FALSE;
                        if (listAdapterWithRecyclerView2.itemViews[i8] != null) {
                            ListAdapterWithRecyclerView.this.itemViews[i8].setVisibility(8);
                            ListAdapterWithRecyclerView.this.itemViews[i8].getLayoutParams().height = 0;
                        }
                    }
                }
            }
        };
        this.isSelected = false;
        this.idFirst = -1;
        this.idSecond = -1;
        this.idImages = -1;
        this.idCard = 1;
        this.container = componentContainer;
        this.textMainSize = f;
        this.textMainColor = i;
        this.textMainFont = str;
        this.textDetailColor = i;
        this.textDetailSize = 0.0f;
        this.textDetailFont = "0";
        this.layoutType = 0;
        this.backgroundColor = i2;
        this.selectionColor = i3;
        this.imageHeight = 0;
        this.imageWidth = 0;
        this.multiSelect = false;
        this.itemViews = new CardView[list.size()];
        Boolean[] boolArr = new Boolean[list.size()];
        this.selection = boolArr;
        Arrays.fill(boolArr, Boolean.FALSE);
        Boolean[] boolArr2 = new Boolean[list.size()];
        this.isVisible = boolArr2;
        Arrays.fill(boolArr2, Boolean.TRUE);
        this.items = new ArrayList();
        for (String str2 : list) {
            YailDictionary yailDictionary = new YailDictionary();
            yailDictionary.put(Component.LISTVIEW_KEY_MAIN_TEXT, str2);
            this.items.add(yailDictionary);
        }
    }

    public void clearSelections() {
        Arrays.fill(this.selection, Boolean.FALSE);
        int i = 0;
        while (true) {
            CardView[] cardViewArr = this.itemViews;
            if (i >= cardViewArr.length) {
                return;
            }
            cardViewArr[i].setBackgroundColor(this.backgroundColor);
            i++;
        }
    }

    public void toggleSelection(int i) {
        CardView[] cardViewArr;
        Arrays.fill(this.selection, Boolean.FALSE);
        int i2 = 0;
        while (true) {
            cardViewArr = this.itemViews;
            if (i2 >= cardViewArr.length) {
                break;
            }
            CardView cardView = cardViewArr[i2];
            if (cardView != null) {
                cardView.setBackgroundColor(this.backgroundColor);
            }
            i2++;
        }
        if (i >= 0) {
            this.selection[i] = Boolean.TRUE;
            CardView cardView2 = cardViewArr[i];
            if (cardView2 != null) {
                cardView2.setBackgroundColor(this.selectionColor);
            }
        }
    }

    public void changeSelections(int i) {
        this.selection[i] = Boolean.valueOf(!r0[i].booleanValue());
        if (this.selection[i].booleanValue()) {
            this.itemViews[i].setBackgroundColor(this.selectionColor);
        } else {
            this.itemViews[i].setBackgroundColor(this.backgroundColor);
        }
    }

    public boolean hasVisibleItems() {
        return Arrays.asList(this.isVisible).contains(Boolean.TRUE);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RvViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        CardView cardView = new CardView(this.container.$context());
        cardView.setUseCompatPadding(true);
        cardView.setContentPadding(10, 10, 10, 10);
        cardView.setPreventCornerOverlap(true);
        cardView.setCardElevation(2.1f);
        cardView.setRadius(0.0f);
        cardView.setMaxCardElevation(3.0f);
        cardView.setBackgroundColor(this.backgroundColor);
        cardView.setClickable(this.isSelected);
        int iGenerateViewId = ViewCompat.generateViewId();
        this.idCard = iGenerateViewId;
        cardView.setId(iGenerateViewId);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, 0);
        ViewCompat.setElevation(cardView, 20.0f);
        TextView textView = new TextView(this.container.$context());
        int iGenerateViewId2 = ViewCompat.generateViewId();
        this.idFirst = iGenerateViewId2;
        textView.setId(iGenerateViewId2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = 10;
        textView.setLayoutParams(layoutParams2);
        textView.setTextSize(this.textMainSize);
        textView.setTextColor(this.textMainColor);
        TextViewUtil.setFontTypeface(this.container.$form(), textView, this.textMainFont, false, false);
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(this.container.$context());
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setOrientation(0);
        int i2 = this.layoutType;
        if (i2 == 4 || i2 == 3) {
            View imageView = new ImageView(this.container.$context());
            int iGenerateViewId3 = ViewCompat.generateViewId();
            this.idImages = iGenerateViewId3;
            imageView.setId(iGenerateViewId3);
            imageView.setLayoutParams(new LinearLayout.LayoutParams(this.imageWidth, this.imageHeight));
            linearLayout.addView(imageView);
        }
        int i3 = this.layoutType;
        if (i3 == 0 || i3 == 3) {
            linearLayout.addView(textView);
        } else {
            TextView textView2 = new TextView(this.container.$context());
            int iGenerateViewId4 = ViewCompat.generateViewId();
            this.idSecond = iGenerateViewId4;
            textView2.setId(iGenerateViewId4);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
            textView2.setTextSize(this.textDetailSize);
            TextViewUtil.setFontTypeface(this.container.$form(), textView2, this.textDetailFont, false, false);
            textView2.setTextColor(this.textDetailColor);
            int i4 = this.layoutType;
            if (i4 == 1 || i4 == 4) {
                layoutParams3.topMargin = 10;
                textView2.setLayoutParams(layoutParams3);
                android.widget.LinearLayout linearLayout2 = new android.widget.LinearLayout(this.container.$context());
                linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 2.0f));
                linearLayout2.setOrientation(1);
                linearLayout2.addView(textView);
                linearLayout2.addView(textView2);
                linearLayout.addView(linearLayout2);
            } else if (i4 == 2) {
                layoutParams3.setMargins(50, 10, 0, 0);
                textView2.setLayoutParams(layoutParams3);
                textView2.setMaxLines(1);
                textView2.setEllipsize(null);
                linearLayout.addView(textView);
                linearLayout.addView(textView2);
            }
        }
        cardView.setLayoutParams(layoutParams);
        cardView.addView(linearLayout);
        return new RvViewHolder(cardView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final RvViewHolder rvViewHolder, int i) {
        String string;
        rvViewHolder.cardView.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.ListAdapterWithRecyclerView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                rvViewHolder.onClick(view);
            }
        });
        YailDictionary yailDictionary = this.items.get(i);
        String string2 = yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString();
        if (!yailDictionary.containsKey(Component.LISTVIEW_KEY_DESCRIPTION)) {
            string = "";
        } else {
            string = yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION).toString();
        }
        int i2 = this.layoutType;
        if (i2 == 0) {
            rvViewHolder.textViewFirst.setText(string2);
        } else if (i2 == 1 || i2 == 2) {
            rvViewHolder.textViewFirst.setText(string2);
            rvViewHolder.textViewSecond.setText(string);
        } else if (i2 == 3) {
            String string3 = yailDictionary.get(Component.LISTVIEW_KEY_IMAGE).toString();
            BitmapDrawable bitmapDrawable = new BitmapDrawable();
            try {
                bitmapDrawable = MediaUtil.getBitmapDrawable(this.container.$form(), string3);
            } catch (IOException e) {
                Log.e(LOG_TAG, "onBindViewHolder Unable to load image " + string3 + ": " + e.getMessage());
            }
            rvViewHolder.textViewFirst.setText(string2);
            ViewUtil.setImage(rvViewHolder.imageVieww, bitmapDrawable);
        } else if (i2 == 4) {
            String string4 = yailDictionary.get(Component.LISTVIEW_KEY_IMAGE).toString();
            BitmapDrawable bitmapDrawable2 = new BitmapDrawable();
            try {
                bitmapDrawable2 = MediaUtil.getBitmapDrawable(this.container.$form(), string4);
            } catch (IOException e2) {
                Log.e(LOG_TAG, "onBindViewHolder Unable to load image " + string4 + ": " + e2.getMessage());
            }
            rvViewHolder.textViewFirst.setText(string2);
            rvViewHolder.textViewSecond.setText(string);
            ViewUtil.setImage(rvViewHolder.imageVieww, bitmapDrawable2);
        } else {
            Log.e(LOG_TAG, "onBindViewHolder Layout not recognized: " + i2);
        }
        if (this.selection[i].booleanValue()) {
            rvViewHolder.cardView.setBackgroundColor(this.selectionColor);
        } else {
            rvViewHolder.cardView.setBackgroundColor(this.backgroundColor);
        }
        if (!this.isVisible[i].booleanValue()) {
            rvViewHolder.cardView.setVisibility(8);
            rvViewHolder.cardView.getLayoutParams().height = 0;
        } else {
            rvViewHolder.cardView.setVisibility(0);
            rvViewHolder.cardView.getLayoutParams().height = -2;
        }
        this.itemViews[i] = rvViewHolder.cardView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.itemViews.length;
    }

    public class RvViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        public CardView cardView;
        public ImageView imageVieww;
        public TextView textViewFirst;
        public TextView textViewSecond;

        public RvViewHolder(View view) {
            super(view);
            view.setOnClickListener(this);
            this.cardView = (CardView) view.findViewById(ListAdapterWithRecyclerView.this.idCard);
            this.textViewFirst = (TextView) view.findViewById(ListAdapterWithRecyclerView.this.idFirst);
            if (ListAdapterWithRecyclerView.this.idSecond != -1) {
                this.textViewSecond = (TextView) view.findViewById(ListAdapterWithRecyclerView.this.idSecond);
            }
            if (ListAdapterWithRecyclerView.this.idImages != -1) {
                this.imageVieww = (ImageView) view.findViewById(ListAdapterWithRecyclerView.this.idImages);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition = getAdapterPosition();
            if (ListAdapterWithRecyclerView.this.multiSelect) {
                ListAdapterWithRecyclerView.this.changeSelections(adapterPosition);
            } else {
                ListAdapterWithRecyclerView.this.toggleSelection(adapterPosition);
            }
            ListAdapterWithRecyclerView.this.clickListener.onItemClick(adapterPosition, view);
        }
    }

    public void setOnItemClickListener(ClickListener clickListener) {
        this.clickListener = clickListener;
    }

    public String getSelectedItems() {
        StringBuilder sb = new StringBuilder();
        String str = "";
        int i = 0;
        while (true) {
            Boolean[] boolArr = this.selection;
            if (i < boolArr.length) {
                if (boolArr[i].booleanValue()) {
                    YailDictionary yailDictionary = this.items.get(i);
                    sb.append(str);
                    sb.append(yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString());
                    str = ",";
                }
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return this.filter;
    }
}
