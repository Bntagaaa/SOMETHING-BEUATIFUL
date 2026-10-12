package com.google.appinventor.components.runtime;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.repackaged.org.json.JSONArray;
import com.google.appinventor.components.runtime.repackaged.org.json.JSONException;
import com.google.appinventor.components.runtime.repackaged.org.json.JSONObject;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;

@DesignerComponent(category = ComponentCategory.LAYOUT, description = "Dynamic Recycler View", iconName = "images/niotronRecyclerView.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "json.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronRecyclerListView extends AndroidViewComponent {
    private final Util UTIL_INSTANCE;
    private HashMap<View, AndroidViewComponent> components;
    private Class[] contClass;
    private ComponentContainer container;
    private Context context;
    private android.widget.LinearLayout currentParent;
    private VerticalArrangement invisible;
    private int itemCount;
    private HashMap<AndroidViewComponent, String> mainComps;
    private LinearLayoutManager manager;
    private StaggeredGridLayoutManager manager2;
    private MyAdapter myAdapter;
    private HashMap<Integer, Object> parents;
    private JSONArray propertiesArray;
    private final RecyclerView view;

    public NiotronRecyclerListView(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.itemCount = 0;
        this.contClass = new Class[]{ComponentContainer.class};
        this.components = new HashMap<>();
        this.mainComps = new HashMap<>();
        this.parents = new HashMap<>();
        this.currentParent = null;
        this.UTIL_INSTANCE = new Util();
        this.propertiesArray = new JSONArray();
        this.container = componentContainer;
        this.context = componentContainer.$context();
        RecyclerView recyclerView = new RecyclerView(componentContainer.$context());
        this.view = recyclerView;
        componentContainer.$add(this);
        recyclerView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        recyclerView.setNestedScrollingEnabled(false);
        VerticalArrangement verticalArrangement = new VerticalArrangement(componentContainer);
        this.invisible = verticalArrangement;
        verticalArrangement.Visible(false);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    public class Util {
        public Util() {
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

        public void parse(String str, JSONObject jSONObject) throws JSONException {
            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
            jSONObject2.remove("components");
            if (!"".equals(str)) {
                jSONObject2.put("in", str);
            }
            NiotronRecyclerListView.this.propertiesArray.put(jSONObject2);
            if (jSONObject.has("components")) {
                for (int i = 0; i < jSONObject.getJSONArray("components").length(); i++) {
                    parse(jSONObject2.optString("id", ""), jSONObject.getJSONArray("components").getJSONObject(i));
                }
            }
        }
    }

    public class MyAdapter extends RecyclerView.Adapter<ViewHolder> {
        public MyAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return NiotronRecyclerListView.this.itemCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ViewHolder viewHolder = new ViewHolder(new android.widget.LinearLayout(NiotronRecyclerListView.this.context));
            NiotronRecyclerListView.this.currentParent = viewHolder.item;
            NiotronRecyclerListView.this.OnCreateViewHolder();
            return viewHolder;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(ViewHolder viewHolder, int i) {
            NiotronRecyclerListView.this.currentParent = viewHolder.item;
            NiotronRecyclerListView.this.OnBindView(i);
        }

        public class ViewHolder extends RecyclerView.ViewHolder {
            public android.widget.LinearLayout item;

            public ViewHolder(android.widget.LinearLayout linearLayout) {
                super(linearLayout);
                this.item = linearLayout;
            }
        }
    }

    @SimpleFunction
    public void Initialize(int i, int i2, boolean z, boolean z2) {
        this.components = new HashMap<>();
        this.mainComps = new HashMap<>();
        this.parents = new HashMap<>();
        if (z2) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(i, i2);
            this.manager2 = staggeredGridLayoutManager;
            this.view.setLayoutManager(staggeredGridLayoutManager);
        } else {
            if (i == 1) {
                this.manager = new LinearLayoutManager(this.context, i2, z);
            } else {
                this.manager = new GridLayoutManager(this.context, i, i2, z);
            }
            this.view.setLayoutManager(this.manager);
        }
        this.view.setItemAnimator(new DefaultItemAnimator());
        MyAdapter myAdapter = new MyAdapter();
        this.myAdapter = myAdapter;
        this.view.setAdapter(myAdapter);
    }

    @SimpleFunction
    public void SetItemCount(int i) {
        this.itemCount = i;
        this.myAdapter.notifyDataSetChanged();
    }

    @SimpleFunction
    public int GetCount() {
        return this.itemCount;
    }

    @SimpleEvent
    public void OnBindView(int i) {
        EventDispatcher.dispatchEvent(this, "OnBindView", Integer.valueOf(i));
    }

    @SimpleEvent
    public void OnCreateViewHolder() {
        EventDispatcher.dispatchEvent(this, "OnCreateViewHolder", new Object[0]);
    }

    @SimpleFunction
    public void CreateComponent(Object obj, Object obj2, String str) {
        boolean z = obj2 instanceof String;
        try {
            AndroidViewComponent androidViewComponent = (AndroidViewComponent) Class.forName(((z && obj2.toString().contains(".")) ? obj2.toString().replace(" ", "") : z ? _COROUTINE.a.i("com.google.appinventor.components.runtime.", obj2.toString().replace(" ", "")) : obj2 instanceof AndroidViewComponent ? obj2.getClass().getName() : "").trim().replace(" ", "")).getConstructor(this.contClass).newInstance((ComponentContainer) (obj.toString().equals("") ? this.invisible : obj));
            androidViewComponent.getView().setTag(str);
            this.components.put(androidViewComponent.getView(), androidViewComponent);
            if (obj.toString().equals("")) {
                android.widget.LinearLayout linearLayout = this.currentParent;
                View view = androidViewComponent.getView();
                if (view.getParent() != null) {
                    ((ViewGroup) view.getParent()).removeView(view);
                }
                linearLayout.addView(view);
            }
        } catch (Exception e) {
            ErrorOccurred(e.toString());
        }
    }

    public Object Invoke(Component component, String str, YailList yailList) throws SecurityException {
        if (component != null) {
            Method[] methods = component.getClass().getMethods();
            try {
                try {
                    Object[] array = yailList.toArray();
                    Method method = this.UTIL_INSTANCE.getMethod(methods, str, array.length);
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
                    return method.invoke(component, arrayList.toArray());
                } catch (Exception e) {
                    throw new YailRuntimeError(e.getMessage(), "Recycler View");
                }
            } catch (Throwable unused) {
                return null;
            }
        }
        throw new YailRuntimeError("Component cannot be null.", "Recycler View");
    }

    @SimpleFunction
    public void Schema(AndroidViewComponent androidViewComponent, String str, YailList yailList) throws Exception {
        JSONObject jSONObject = new JSONObject(str);
        this.propertiesArray = new JSONArray();
        if (str.replace(" ", "").isEmpty() || !jSONObject.has("components")) {
            throw new YailRuntimeError("The template is empty, or is does not have any components.", "GridRecyclerView");
        }
        JSONArray jSONArray = jSONObject.has("keys") ? jSONObject.getJSONArray("keys") : null;
        if (jSONArray != null && jSONArray.length() == yailList.size() - 1) {
            for (int i = 0; i < jSONArray.length(); i++) {
                String strI = _COROUTINE.a.i("%", jSONArray.getString(i));
                String strA = _COROUTINE.a.A("{", jSONArray.getString(i), "}");
                String strReplace = yailList.getString(i).replace("\"", "");
                str = str.replace(strI, strReplace).replace(strA, strReplace);
            }
        }
        this.UTIL_INSTANCE.parse("", new JSONObject(str));
        this.propertiesArray.remove(0);
        for (int i2 = 0; i2 < this.propertiesArray.length(); i2++) {
            if (!this.propertiesArray.getJSONObject(i2).has("id")) {
                throw new YailRuntimeError("One or multiple components do not have a specified ID in the template.", "Recycler View");
            }
            JSONObject jSONObject2 = this.propertiesArray.getJSONObject(i2);
            String string = jSONObject2.getString("id");
            CreateComponent(!jSONObject2.has("in") ? androidViewComponent : (AndroidViewComponent) GetComponentWithId(jSONObject2.getString("in")), jSONObject2.getString("type"), string);
            JSONObject jSONObject3 = jSONObject2.getJSONObject("properties");
            JSONArray jSONArrayNames = jSONObject3.names();
            for (int i3 = 0; i3 < jSONArrayNames.length(); i3++) {
                Invoke((Component) GetComponentWithId(string), jSONArrayNames.getString(i3), YailList.makeList(new Object[]{jSONObject3.get(jSONArrayNames.getString(i3))}));
            }
        }
    }

    @SimpleFunction
    public void SetUniqueId(AndroidViewComponent androidViewComponent, String str) {
        this.mainComps.put(androidViewComponent, str);
    }

    @SimpleFunction
    public void SetProperty(AndroidViewComponent androidViewComponent, String str, Object obj) {
        try {
            Invoke(androidViewComponent, str, YailList.makeList(new Object[]{obj}));
        } catch (Exception e) {
            ErrorOccurred(e.toString());
        }
    }

    @SimpleFunction
    public void SetProperties(Component component, YailDictionary yailDictionary) throws Exception {
        JSONObject jSONObject = new JSONObject(yailDictionary.toString());
        JSONArray jSONArrayNames = jSONObject.names();
        for (int i = 0; i < jSONObject.length(); i++) {
            String string = jSONArrayNames.getString(i);
            Invoke(component, string, YailList.makeList(new Object[]{jSONObject.get(string)}));
        }
    }

    @SimpleFunction
    public void DeleteComponent(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        View viewFindViewWithTag = this.currentParent.findViewWithTag(str);
        AndroidViewComponent androidViewComponent = this.components.get(viewFindViewWithTag);
        if (androidViewComponent != null) {
            try {
                androidViewComponent.getClass().getMethod("Visible", Boolean.TYPE).invoke(androidViewComponent, Boolean.FALSE);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (viewFindViewWithTag.getParent() != null) {
            ((ViewGroup) viewFindViewWithTag.getParent()).removeView(viewFindViewWithTag);
        }
    }

    @SimpleFunction
    public Object GetComponentWithId(String str) {
        return this.components.get(this.currentParent.findViewWithTag(str));
    }

    @SimpleFunction
    public void SetPosition(int i) {
        this.currentParent = ((MyAdapter.ViewHolder) this.parents.get(Integer.valueOf(i))).item;
    }

    @SimpleFunction
    public String GetUniqueIdWithComponent(AndroidViewComponent androidViewComponent) {
        String str = this.mainComps.get(androidViewComponent);
        return str == null ? "none" : str;
    }

    @SimpleFunction
    public boolean IsDynamicAndSetUnique(AndroidViewComponent androidViewComponent) {
        return this.mainComps.get(androidViewComponent) != null;
    }

    @SimpleFunction
    public int GetFirstVisibleItemPosition() {
        LinearLayoutManager linearLayoutManager = this.manager;
        if (linearLayoutManager != null) {
            return linearLayoutManager.findFirstVisibleItemPosition();
        }
        return 0;
    }

    @SimpleFunction
    public int GetLastVisibleItemPosition() {
        LinearLayoutManager linearLayoutManager = this.manager;
        if (linearLayoutManager != null) {
            return linearLayoutManager.findLastVisibleItemPosition();
        }
        return 0;
    }

    @SimpleEvent
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
