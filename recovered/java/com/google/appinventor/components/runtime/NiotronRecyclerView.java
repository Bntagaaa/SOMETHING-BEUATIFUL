package com.google.appinventor.components.runtime;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.YailList;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "A new component ", iconName = "images/niotronRecyclerView.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronRecyclerView extends AndroidViewComponent {
    private ComponentContainer container;
    private Context context;
    private HashMap<Integer, View> customViews;
    private boolean itemAdded;
    private int listLength;
    private int mainId;
    private int numberOfColumns;
    private final RecyclerView view;
    private ArrayList<NiotronAdapter.NiotronViewHolder> viewHolders;
    private HashMap<Integer, NiotronAdapter.NiotronViewHolder> viewHolders2;

    public NiotronRecyclerView(ComponentContainer componentContainer) {
        super(componentContainer);
        this.listLength = 0;
        this.mainId = 0;
        this.numberOfColumns = 1;
        this.itemAdded = false;
        this.viewHolders = new ArrayList<>();
        this.viewHolders2 = new HashMap<>();
        this.customViews = new HashMap<>();
        this.container = componentContainer;
        RecyclerView recyclerView = new RecyclerView(componentContainer.$context());
        this.view = recyclerView;
        componentContainer.$add(this);
        this.context = componentContainer.$context();
        recyclerView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        recyclerView.setNestedScrollingEnabled(false);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    public void SetProperty(String str, int i, String str2, String str3) {
        try {
            Invoke(this.viewHolders2.get(Integer.valueOf(i)).itemView.findViewWithTag(str), str2, YailList.makeList(new Object[]{str3}));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SimpleFunction
    public void AddComponentInPosition(AndroidViewComponent androidViewComponent, int i, int i2, int i3) {
        androidViewComponent.getView().setLayoutParams(new ViewGroup.LayoutParams(i2, i3));
        androidViewComponent.getView().setTag("customRecyclerViewByNiotron");
        this.customViews.put(Integer.valueOf(i), androidViewComponent.getView());
        if (((LinearLayoutManager) this.view.getLayoutManager()).findFirstVisibleItemPosition() > i || ((LinearLayoutManager) this.view.getLayoutManager()).findLastVisibleItemPosition() < i) {
            return;
        }
        try {
            ((ViewGroup) this.viewHolders2.get(Integer.valueOf(i)).itemView).addView(androidViewComponent.getView(), new ViewGroup.LayoutParams(i2, i3));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SimpleFunction
    public void RemoveComponentFromInPosition(AndroidViewComponent androidViewComponent, int i) {
        androidViewComponent.getView().setTag("");
        this.customViews.remove(Integer.valueOf(i));
        if (((LinearLayoutManager) this.view.getLayoutManager()).findFirstVisibleItemPosition() > i || ((LinearLayoutManager) this.view.getLayoutManager()).findLastVisibleItemPosition() < i) {
            return;
        }
        try {
            ((ViewGroup) this.viewHolders2.get(Integer.valueOf(i)).itemView).removeView(androidViewComponent.getView());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SimpleFunction
    public void SetListLength(int i) {
        this.listLength = i;
        this.view.getAdapter().notifyDataSetChanged();
    }

    @SimpleFunction
    public void AddClickListener(final String str) {
        Iterator<NiotronAdapter.NiotronViewHolder> it = this.viewHolders.iterator();
        while (it.hasNext()) {
            final NiotronAdapter.NiotronViewHolder next = it.next();
            View viewFindViewWithTag = next.itemView.findViewWithTag(str);
            if (viewFindViewWithTag != null) {
                viewFindViewWithTag.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronRecyclerView.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        NiotronRecyclerView.this.Click(str, next.getAbsoluteAdapterPosition());
                    }
                });
            }
        }
    }

    @SimpleFunction
    public void AddLongClickListener(final String str) {
        Iterator<NiotronAdapter.NiotronViewHolder> it = this.viewHolders.iterator();
        while (it.hasNext()) {
            final NiotronAdapter.NiotronViewHolder next = it.next();
            View viewFindViewWithTag = next.itemView.findViewWithTag(str);
            if (viewFindViewWithTag != null) {
                viewFindViewWithTag.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.google.appinventor.components.runtime.NiotronRecyclerView.2
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view) {
                        NiotronRecyclerView.this.LongClick(str, next.getAbsoluteAdapterPosition());
                        return false;
                    }
                });
            }
        }
    }

    @SimpleFunction(description = "Use this block to get component for Any Component, It Supports Label,Button,Image,Switch,CheckBox,Textbox")
    public Object GetComponent(String str, int i) {
        try {
            View viewFindViewWithTag = this.viewHolders2.get(Integer.valueOf(i)).itemView.findViewWithTag(str);
            Log.e("NiotronRecyclerView", viewFindViewWithTag.getClass().getName());
            if (viewFindViewWithTag instanceof TextView) {
                return new Label(this.container, (TextView) viewFindViewWithTag);
            }
            if (viewFindViewWithTag instanceof android.widget.Button) {
                return new Button(this.container, (android.widget.Button) viewFindViewWithTag);
            }
            if (viewFindViewWithTag instanceof ImageView) {
                return new Image(this.container, (ImageView) viewFindViewWithTag);
            }
            if (viewFindViewWithTag instanceof SwitchCompat) {
                return new Switch(this.container, (SwitchCompat) viewFindViewWithTag);
            }
            if (viewFindViewWithTag instanceof android.widget.CheckBox) {
                return new CheckBox(this.container, (android.widget.CheckBox) viewFindViewWithTag);
            }
            if (viewFindViewWithTag instanceof EditText) {
                return new TextBox(this.container, (EditText) viewFindViewWithTag);
            }
            throw new YailRuntimeError("GetComponent", "Component not supported to get in GetComponent");
        } catch (Exception unused) {
            return null;
        }
    }

    @SimpleEvent
    public void ItemAdded() {
        EventDispatcher.dispatchEvent(this, "ItemAdded", new Object[0]);
    }

    @SimpleEvent
    public void Click(String str, int i) {
        EventDispatcher.dispatchEvent(this, "Click", str, Integer.valueOf(i));
    }

    @SimpleEvent
    public void LongClick(String str, int i) {
        EventDispatcher.dispatchEvent(this, "LongClick", str, Integer.valueOf(i));
    }

    @SimpleEvent
    public void Scroll(int i) {
        EventDispatcher.dispatchEvent(this, "Scroll", Integer.valueOf(i));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void XmlResource(String str) {
        if (!this.container.$form().isRepl()) {
            String strReplaceAll = str.replaceAll(".xml", "");
            try {
                String[] strArrSplit = this.container.$context().getClass().getName().split("\\.");
                String[] strArr = new String[strArrSplit.length - 1];
                for (int i = 0; i < strArrSplit.length - 1; i++) {
                    strArr[i] = strArrSplit[i];
                }
                this.mainId = Class.forName(TextUtils.join(".", strArr) + ".R$layout").getField(strReplaceAll).getInt(null);
                return;
            } catch (Exception e) {
                throw new YailRuntimeError(e.getMessage().toString(), "Error");
            }
        }
        Toast.makeText(this.context, "Sorry! Recycler View is not supported in companion yet", 0).show();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "None", editorArgs = {"Vertical", "Horizontal", "Grid"}, editorType = PropertyTypeConstants.PROPERTY_TYPE_CHOICES)
    public void ListType(String str) {
        if (str.equalsIgnoreCase("vertical")) {
            this.view.setLayoutManager(new LinearLayoutManager(this.context));
        } else if (str.equalsIgnoreCase("horizontal")) {
            this.view.setLayoutManager(new LinearLayoutManager(this.context, 0, false));
        } else if (str.equalsIgnoreCase("grid")) {
            this.view.setLayoutManager(new GridLayoutManager(this.context, this.numberOfColumns));
        } else {
            this.view.setLayoutManager(new LinearLayoutManager(this.context));
        }
        this.view.setAdapter(new NiotronAdapter());
    }

    @SimpleProperty
    public void GridColumnCount(int i) {
        this.numberOfColumns = i;
        this.view.setLayoutManager(new GridLayoutManager(this.context, i));
    }

    public class NiotronAdapter extends RecyclerView.Adapter<NiotronViewHolder> {
        public NiotronAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public NiotronViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            NiotronViewHolder niotronViewHolder = new NiotronViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(NiotronRecyclerView.this.mainId, viewGroup, false));
            NiotronRecyclerView.this.viewHolders.add(niotronViewHolder);
            NiotronRecyclerView.this.ItemAdded();
            return niotronViewHolder;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull NiotronViewHolder niotronViewHolder, int i) {
            NiotronRecyclerView.this.viewHolders2.put(Integer.valueOf(i), niotronViewHolder);
            View viewFindViewWithTag = niotronViewHolder.itemView.findViewWithTag("customRecyclerViewByNiotron");
            if (viewFindViewWithTag != null) {
                ((ViewGroup) niotronViewHolder.itemView).removeView(viewFindViewWithTag);
            }
            if (NiotronRecyclerView.this.customViews.containsKey(Integer.valueOf(i))) {
                ((ViewGroup) niotronViewHolder.itemView).addView((View) NiotronRecyclerView.this.customViews.get(Integer.valueOf(i)));
            }
            NiotronRecyclerView.this.Scroll(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return NiotronRecyclerView.this.listLength;
        }

        public class NiotronViewHolder extends RecyclerView.ViewHolder {
            public NiotronViewHolder(@NonNull View view) {
                super(view);
            }
        }
    }

    public void Invoke(View view, String str, YailList yailList) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Method method;
        Method[] methods = view.getClass().getMethods();
        try {
            Object[] array = yailList.toArray();
            try {
                try {
                    method = view.getClass().getMethod(str, String.class);
                } catch (Exception unused) {
                    method = view.getClass().getMethod(str, CharSequence.class);
                }
            } catch (Exception unused2) {
                method = getMethod(methods, str, array.length);
            }
            Class<?>[] parameterTypes = method.getParameterTypes();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < parameterTypes.length; i++) {
                if ("int".equals(parameterTypes[i].getName())) {
                    arrayList.add(Integer.valueOf(Integer.parseInt(array[i].toString())));
                } else if (PropertyTypeConstants.PROPERTY_TYPE_FLOAT.equals(parameterTypes[i].getName())) {
                    arrayList.add(Float.valueOf(Float.parseFloat(array[i].toString())));
                } else if ("double".equals(parameterTypes[i].getName())) {
                    arrayList.add(Double.valueOf(Double.parseDouble(array[i].toString())));
                } else if ("java.lang.String".equals(parameterTypes[i].getName())) {
                    arrayList.add(array[i].toString());
                } else if (PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN.equals(parameterTypes[i].getName())) {
                    arrayList.add(Boolean.valueOf(Boolean.parseBoolean(array[i].toString())));
                } else {
                    arrayList.add(array[i]);
                }
            }
            method.invoke(view, arrayList.toArray());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Method getMethod(Method[] methodArr, String str, int i) {
        String strReplaceAll = str.replaceAll("[^a-zA-Z0-9]", "");
        for (Method method : methodArr) {
            int length = method.getParameterTypes().length;
            if (method.getName().equals(strReplaceAll) && length == i) {
                return method;
            }
        }
        return null;
    }
}
