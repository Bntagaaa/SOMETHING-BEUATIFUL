package com.google.appinventor.components.runtime;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.appinventor.components.runtime.util.AnimationUtil;

/* loaded from: classes.dex */
public class ListPickerActivity extends AppInventorCompatActivity implements AdapterView.OnItemClickListener {
    static int backgroundColor;
    static int itemColor;
    MyAdapter adapter;
    private String closeAnim = "";
    private android.widget.ListView listView;
    EditText txtSearchBox;

    @Override // com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        styleTitleBar();
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(this);
        linearLayout.setOrientation(1);
        Intent intent = getIntent();
        String str = ListPicker.LIST_ACTIVITY_ANIM_TYPE;
        if (intent.hasExtra(str)) {
            this.closeAnim = intent.getStringExtra(str);
        }
        String str2 = ListPicker.LIST_ACTIVITY_ORIENTATION_TYPE;
        if (intent.hasExtra(str2)) {
            String lowerCase = intent.getStringExtra(str2).toLowerCase();
            if (lowerCase.equals("portrait")) {
                setRequestedOrientation(1);
            } else if (lowerCase.equals("landscape")) {
                setRequestedOrientation(0);
            }
        }
        String str3 = ListPicker.LIST_ACTIVITY_TITLE;
        if (intent.hasExtra(str3)) {
            setTitle(intent.getStringExtra(str3));
        }
        String str4 = ListPicker.LIST_ACTIVITY_ARG_NAME;
        if (intent.hasExtra(str4)) {
            String[] stringArrayExtra = getIntent().getStringArrayExtra(str4);
            android.widget.ListView listView = new android.widget.ListView(this);
            this.listView = listView;
            listView.setOnItemClickListener(this);
            this.listView.setScrollingCacheEnabled(false);
            itemColor = intent.getIntExtra(ListPicker.LIST_ACTIVITY_ITEM_TEXT_COLOR, -1);
            int intExtra = intent.getIntExtra(ListPicker.LIST_ACTIVITY_BACKGROUND_COLOR, -16777216);
            backgroundColor = intExtra;
            linearLayout.setBackgroundColor(intExtra);
            MyAdapter myAdapter = new MyAdapter(this, stringArrayExtra);
            this.adapter = myAdapter;
            this.listView.setAdapter((ListAdapter) myAdapter);
            String stringExtra = intent.getStringExtra(ListPicker.LIST_ACTIVITY_SHOW_SEARCH_BAR);
            EditText editText = new EditText(this);
            this.txtSearchBox = editText;
            editText.setSingleLine(true);
            this.txtSearchBox.setWidth(-2);
            this.txtSearchBox.setPadding(10, 10, 10, 10);
            this.txtSearchBox.setHint("Search list...");
            this.txtSearchBox.setBackgroundColor(-1);
            if (stringExtra == null || !stringExtra.equalsIgnoreCase("true")) {
                this.txtSearchBox.setVisibility(8);
            }
            this.txtSearchBox.addTextChangedListener(new TextWatcher() { // from class: com.google.appinventor.components.runtime.ListPickerActivity.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    ListPickerActivity.this.adapter.getFilter().filter(charSequence);
                }
            });
        } else {
            setResult(0);
            finish();
            AnimationUtil.ApplyCloseScreenAnimation(this, this.closeAnim);
        }
        linearLayout.addView(this.txtSearchBox);
        linearLayout.addView(this.listView);
        setContentView(linearLayout);
        linearLayout.requestLayout();
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getWindow().getDecorView().getWindowToken(), 0);
        getWindow().setSoftInputMode(3);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        String str = (String) adapterView.getAdapter().getItem(i);
        Intent intent = new Intent();
        intent.putExtra(ListPicker.LIST_ACTIVITY_RESULT_NAME, str);
        intent.putExtra(ListPicker.LIST_ACTIVITY_RESULT_INDEX, i + 1);
        setResult(-1, intent);
        finish();
        AnimationUtil.ApplyCloseScreenAnimation(this, this.closeAnim);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        AnimationUtil.ApplyCloseScreenAnimation(this, this.closeAnim);
        super.onBackPressed();
    }

    public static class MyAdapter extends ArrayAdapter<String> {
        private final Context mContext;

        public MyAdapter(Context context, String[] strArr) {
            super(context, R.layout.activity_list_item, strArr);
            this.mContext = context;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return ((String) getItem(i)).hashCode();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView = (TextView) view;
            if (textView == null) {
                textView = (TextView) LayoutInflater.from(this.mContext).inflate(R.layout.simple_list_item_1, viewGroup, false);
            }
            textView.setText((CharSequence) getItem(i));
            textView.setTextColor(ListPickerActivity.itemColor);
            return textView;
        }
    }
}
