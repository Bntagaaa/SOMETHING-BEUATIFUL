package com.google.appinventor.components.runtime;

import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.ListAdapterWithRecyclerView;
import com.google.appinventor.components.runtime.util.ElementsUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "<p>This is a visible component that displays a list of text and image elements.</p> <p>Simple lists of strings may be set using the ElementsFromString property. More complex lists of elements containing multiple strings and/or images can be created using the ListData and ListViewLayout properties. </p>", iconName = "images/listView.png", nonVisible = false, version = 7)
@UsesLibraries(libraries = "recyclerview.jar, recyclerview.aar")
/* loaded from: classes.dex */
public final class ListView extends AndroidViewComponent implements AdapterView.OnItemClickListener {
    private static final int DEFAULT_BACKGROUND_COLOR = -16777216;
    private static final boolean DEFAULT_ENABLED = false;
    private static final int DEFAULT_IMAGE_WIDTH = 200;
    private static final int DEFAULT_TEXT_SIZE = 22;
    private static final String LOG_TAG = "ListView";
    private int backgroundColor;
    protected final ComponentContainer container;
    private int detailTextColor;
    private List<YailDictionary> dictItems;
    private float fontSizeDetail;
    private float fontSizeMain;
    private String fontTypeDetail;
    private String fontTypeface;
    private int imageHeight;
    private int imageWidth;
    private int layout;
    private final android.widget.LinearLayout linearLayout;
    private ListAdapterWithRecyclerView listAdapterWithRecyclerView;
    private int orientation;
    private String propertyValue;
    private RecyclerView recyclerView;
    private String selection;
    private int selectionColor;
    private String selectionDetailText;
    private int selectionIndex;
    private boolean showFilter;
    private List<String> stringItems;
    private int textColor;
    private EditText txtSearchBox;

    public ListView(ComponentContainer componentContainer) throws JSONException {
        super(componentContainer);
        this.showFilter = false;
        this.container = componentContainer;
        this.stringItems = new ArrayList();
        this.dictItems = new ArrayList();
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(componentContainer.$context());
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(1);
        this.orientation = 0;
        this.layout = 0;
        this.recyclerView = new RecyclerView(componentContainer.$context());
        this.recyclerView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
        EditText editText = new EditText(componentContainer.$context());
        this.txtSearchBox = editText;
        editText.setSingleLine(true);
        this.txtSearchBox.setWidth(-2);
        this.txtSearchBox.setPadding(10, 10, 10, 10);
        this.txtSearchBox.setHint("Search list...");
        if (!AppInventorCompatActivity.isClassicMode()) {
            this.txtSearchBox.setBackgroundColor(-1);
        }
        if (componentContainer.$form().isDarkTheme()) {
            this.txtSearchBox.setTextColor(-16777216);
            this.txtSearchBox.setHintTextColor(-16777216);
        }
        this.txtSearchBox.addTextChangedListener(new TextWatcher() { // from class: com.google.appinventor.components.runtime.ListView.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (charSequence.length() > 0) {
                    if (!ListView.this.listAdapterWithRecyclerView.hasVisibleItems()) {
                        ListView.this.setAdapterData();
                    }
                    ListView.this.listAdapterWithRecyclerView.getFilter().filter(charSequence);
                    ListView.this.recyclerView.setAdapter(ListView.this.listAdapterWithRecyclerView);
                    return;
                }
                ListView.this.setAdapterData();
            }
        });
        if (this.showFilter) {
            this.txtSearchBox.setVisibility(0);
        } else {
            this.txtSearchBox.setVisibility(8);
        }
        BackgroundColor(-16777216);
        SelectionColor(Component.COLOR_LTGRAY);
        TextColor(-1);
        TextColorDetail(-1);
        FontSize(22.0f);
        FontSizeDetail(14.0f);
        FontTypeface("0");
        FontTypefaceDetail("0");
        ImageWidth(200);
        ImageHeight(200);
        ElementsFromString("");
        ListData("");
        linearLayout.addView(this.txtSearchBox);
        linearLayout.addView(this.recyclerView);
        linearLayout.requestLayout();
        componentContainer.$add(this);
        Width(-2);
        ListViewLayout(0);
        SelectionIndex(0);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.linearLayout;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Determines the height of the list on the view.")
    public void Height(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Height(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Determines the width of the list on the view.")
    public void Width(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Width(i);
    }

    @SimpleProperty(description = "Sets visibility of ShowFilterBar. True will show the bar, False will hide it.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowFilterBar(boolean z) {
        this.showFilter = z;
        if (z) {
            this.txtSearchBox.setVisibility(0);
        } else {
            this.txtSearchBox.setVisibility(8);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns current state of ShowFilterBar for visibility.")
    public boolean ShowFilterBar() {
        return this.showFilter;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "List of elements to show in the ListView. Depending on the ListView, this may be a list of strings or a list of 3-element sub-lists containing Text, Description, and Image file name.")
    public void Elements(YailList yailList) {
        this.dictItems.clear();
        this.stringItems = new ArrayList();
        if (yailList.size() > 0) {
            if (yailList.getObject(0) instanceof YailDictionary) {
                for (int i = 0; i < yailList.size(); i++) {
                    Object object = yailList.getObject(i);
                    if (object instanceof YailDictionary) {
                        this.dictItems.add(i, (YailDictionary) object);
                    } else {
                        YailDictionary yailDictionary = new YailDictionary();
                        yailDictionary.put(Component.LISTVIEW_KEY_MAIN_TEXT, YailList.YailListElementToString(object));
                        this.dictItems.add(i, yailDictionary);
                    }
                }
            } else {
                this.stringItems = ElementsUtil.elementsStrings(yailList, LOG_TAG);
            }
        }
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public YailList Elements() {
        if (this.dictItems.size() > 0) {
            return YailList.makeList((List) this.dictItems);
        }
        return ElementsUtil.makeYailListFromList(this.stringItems);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The TextView elements specified as a string with the stringItems separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTAREA)
    public void ElementsFromString(String str) {
        this.stringItems = ElementsUtil.elementsListFromString(str);
        setAdapterData();
    }

    public void setAdapterData() {
        LinearLayoutManager linearLayoutManager;
        if (!this.dictItems.isEmpty()) {
            this.listAdapterWithRecyclerView = new ListAdapterWithRecyclerView(this.container, this.dictItems, this.textColor, this.detailTextColor, this.fontSizeMain, this.fontSizeDetail, this.fontTypeface, this.fontTypeDetail, this.layout, this.backgroundColor, this.selectionColor, this.imageWidth, this.imageHeight, false);
            if (this.orientation == 1) {
                linearLayoutManager = new LinearLayoutManager(this.container.$context(), 0, false);
            } else {
                linearLayoutManager = new LinearLayoutManager(this.container.$context(), 1, false);
            }
        } else {
            this.listAdapterWithRecyclerView = new ListAdapterWithRecyclerView(this.container, this.stringItems, this.textColor, this.fontSizeMain, this.fontTypeface, this.backgroundColor, this.selectionColor);
            linearLayoutManager = new LinearLayoutManager(this.container.$context(), 1, false);
        }
        this.listAdapterWithRecyclerView.setOnItemClickListener(new ListAdapterWithRecyclerView.ClickListener() { // from class: com.google.appinventor.components.runtime.ListView.2
            @Override // com.google.appinventor.components.runtime.ListAdapterWithRecyclerView.ClickListener
            public void onItemClick(int i, View view) {
                ListView.this.listAdapterWithRecyclerView.toggleSelection(i);
                ListView.this.SelectionIndex(i + 1);
                ListView.this.AfterPicking();
            }
        });
        this.recyclerView.setLayoutManager(linearLayoutManager);
        this.recyclerView.setAdapter(this.listAdapterWithRecyclerView);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text.")
    public int SelectionIndex() {
        return this.selectionIndex;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Specifies the one-indexed position of the selected item in the ListView. This could be used to retrievethe text at the chosen position. If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text.")
    public void SelectionIndex(int i) {
        if (!this.dictItems.isEmpty()) {
            int iSelectionIndex = ElementsUtil.selectionIndex(i, YailList.makeList((List) this.dictItems));
            this.selectionIndex = iSelectionIndex;
            if (iSelectionIndex > 0) {
                this.selection = this.dictItems.get(iSelectionIndex - 1).get(Component.LISTVIEW_KEY_MAIN_TEXT).toString();
                this.selectionDetailText = ElementsUtil.toStringEmptyIfNull(this.dictItems.get(this.selectionIndex - 1).get(Component.LISTVIEW_KEY_DESCRIPTION).toString());
            } else {
                this.selection = "";
                this.selectionDetailText = "";
            }
        } else {
            this.selectionIndex = ElementsUtil.selectionIndexInStringList(i, this.stringItems);
            this.selection = ElementsUtil.setSelectionFromIndexInStringList(i, this.stringItems);
            this.selectionDetailText = "";
        }
        ListAdapterWithRecyclerView listAdapterWithRecyclerView = this.listAdapterWithRecyclerView;
        if (listAdapterWithRecyclerView != null) {
            listAdapterWithRecyclerView.toggleSelection(this.selectionIndex - 1);
        }
    }

    @SimpleFunction(description = "Removes Item from list at a given index")
    public void RemoveItemAtIndex(int i) {
        if (i < 1 || i > Math.max(this.dictItems.size(), this.stringItems.size())) {
            this.container.$form().dispatchErrorOccurredEvent(this, "RemoveItemAtIndex", ErrorMessages.ERROR_LISTVIEW_INDEX_OUT_OF_BOUNDS, Integer.valueOf(i));
            return;
        }
        if (this.dictItems.size() >= i) {
            this.dictItems.remove(i - 1);
        }
        if (this.stringItems.size() >= i) {
            this.stringItems.remove(i - 1);
        }
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the text last selected in the ListView.")
    public String Selection() {
        return this.selection;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Selection(String str) {
        this.selection = str;
        if (!this.dictItems.isEmpty()) {
            int i = 0;
            while (true) {
                if (i >= this.dictItems.size()) {
                    break;
                }
                YailDictionary yailDictionary = this.dictItems.get(i);
                if (yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString() == str) {
                    this.selectionIndex = i + 1;
                    this.selectionDetailText = ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION));
                    break;
                } else {
                    this.selectionIndex = 0;
                    i++;
                }
            }
        } else {
            this.selectionIndex = ElementsUtil.setSelectedIndexFromValueInStringList(str, this.stringItems);
        }
        SelectionIndex(this.selectionIndex);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the secondary text of the selected row in the ListView.")
    public String SelectionDetailText() {
        return this.selectionDetailText;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        YailDictionary yailDictionary = (YailDictionary) adapterView.getAdapter().getItem(i);
        this.selection = ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString());
        this.selectionDetailText = ElementsUtil.toStringEmptyIfNull(yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION));
        this.selectionIndex = i + 1;
        AfterPicking();
    }

    @SimpleEvent(description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property.")
    public void AfterPicking() {
        EventDispatcher.dispatchEvent(this, "AfterPicking", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the listview background.")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
        this.recyclerView.setBackgroundColor(i);
        this.linearLayout.setBackgroundColor(this.backgroundColor);
    }

    @SimpleProperty(description = "The color of the item when it is selected.")
    public int SelectionColor() {
        return this.selectionColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_LTGRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void SelectionColor(int i) {
        this.selectionColor = i;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The text color of the listview stringItems.")
    public int TextColor() {
        return this.textColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.textColor = i;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The text color of DetailText of listview stringItems. ")
    public int TextColorDetail() {
        return this.detailTextColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColorDetail(int i) {
        this.detailTextColor = i;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The text size of the listview items.")
    public int TextSize() {
        return Math.round(this.fontSizeMain);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "22", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void TextSize(int i) {
        if (i > 1000) {
            i = 999;
        }
        FontSize(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The text size of the listview stringItems.", userVisible = false)
    public float FontSize() {
        return this.fontSizeMain;
    }

    @SimpleProperty
    public void FontSize(float f) {
        if (f > 1000.0f || f < 1.0f) {
            this.fontSizeMain = 999.0f;
        } else {
            this.fontSizeMain = f;
        }
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The text size of the listview stringItems.")
    public float FontSizeDetail() {
        return this.fontSizeDetail;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void FontSizeDetail(float f) {
        if (f > 1000.0f || f < 1.0f) {
            this.fontSizeDetail = 999.0f;
        } else {
            this.fontSizeDetail = f;
        }
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public String FontTypeface() {
        return this.fontTypeface;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypeface(String str) {
        this.fontTypeface = str;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public String FontTypefaceDetail() {
        return this.fontTypeDetail;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypefaceDetail(String str) {
        this.fontTypeDetail = str;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The image width of the listview image.")
    public int ImageWidth() {
        return this.imageWidth;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "200", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void ImageWidth(int i) {
        this.imageWidth = i;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The image height of the listview image stringItems.")
    public int ImageHeight() {
        return this.imageHeight;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "200", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void ImageHeight(int i) {
        this.imageHeight = i;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public int ListViewLayout() {
        return this.layout;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_LISTVIEW_LAYOUT)
    public void ListViewLayout(int i) {
        this.layout = i;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public int Orientation() {
        return this.orientation;
    }

    @SimpleProperty(description = "Specifies the layout's orientation (vertical, horizontal). ")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_RECYCLERVIEW_ORIENTATION)
    public void Orientation(int i) {
        this.orientation = i;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    public String ListData() {
        return this.propertyValue;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_LISTVIEW_ADD_DATA)
    public void ListData(String str) throws JSONException {
        String string;
        this.propertyValue = str;
        this.dictItems.clear();
        if (str != null && str != "") {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    YailDictionary yailDictionary = new YailDictionary();
                    if (jSONObject.has(Component.LISTVIEW_KEY_MAIN_TEXT)) {
                        yailDictionary.put(Component.LISTVIEW_KEY_MAIN_TEXT, jSONObject.getString(Component.LISTVIEW_KEY_MAIN_TEXT));
                        yailDictionary.put(Component.LISTVIEW_KEY_DESCRIPTION, jSONObject.has(Component.LISTVIEW_KEY_DESCRIPTION) ? jSONObject.getString(Component.LISTVIEW_KEY_DESCRIPTION) : "");
                        if (jSONObject.has(Component.LISTVIEW_KEY_IMAGE)) {
                            string = jSONObject.getString(Component.LISTVIEW_KEY_IMAGE);
                        } else {
                            string = "";
                        }
                        yailDictionary.put(Component.LISTVIEW_KEY_IMAGE, string);
                        this.dictItems.add(yailDictionary);
                    }
                }
            } catch (JSONException e) {
                Log.e(LOG_TAG, "Malformed JSON in ListView.ListData", e);
                this.container.$form().dispatchErrorOccurredEvent(this, "ListView.ListData", 0, e.getMessage());
            }
        }
        setAdapterData();
    }

    @SimpleFunction(description = "Create a ListView entry. MainText is required. DetailText and ImageName are optional.")
    public YailDictionary CreateElement(String str, String str2, String str3) {
        YailDictionary yailDictionary = new YailDictionary();
        yailDictionary.put(Component.LISTVIEW_KEY_MAIN_TEXT, str);
        yailDictionary.put(Component.LISTVIEW_KEY_DESCRIPTION, str2);
        yailDictionary.put(Component.LISTVIEW_KEY_IMAGE, str3);
        return yailDictionary;
    }

    @SimpleFunction(description = "Get the Main Text of a ListView element.")
    public String GetMainText(YailDictionary yailDictionary) {
        return yailDictionary.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString();
    }

    @SimpleFunction(description = "Get the Detail Text of a ListView element.")
    public String GetDetailText(YailDictionary yailDictionary) {
        return yailDictionary.get(Component.LISTVIEW_KEY_DESCRIPTION).toString();
    }

    @SimpleFunction(description = "Get the filename of the image of a ListView element that has been uploaded to Media.")
    public String GetImageName(YailDictionary yailDictionary) {
        return yailDictionary.get(Component.LISTVIEW_KEY_IMAGE).toString();
    }

    @SimpleFunction(description = "Reload the ListView to reflect any changes in the data.")
    public void Refresh() {
        setAdapterData();
    }
}
