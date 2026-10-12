package com.google.appinventor.components.runtime;

import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ChipType;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "A new component ", iconName = "images/niotronChip.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronChip extends AndroidViewComponent {
    private static final String LOG_TAG = "NiotronChip";
    private final ChipGroup chipGroup;
    private HashMap<String, Chip> chipHashMap;
    private boolean selectionRequired;
    private boolean singleSelect;

    public NiotronChip(ComponentContainer componentContainer) {
        super(componentContainer);
        this.singleSelect = false;
        this.selectionRequired = false;
        this.chipGroup = new ChipGroup(componentContainer.$context());
        this.chipHashMap = new HashMap<>();
        componentContainer.$add(this);
        setListeners();
    }

    @SimpleFunction(description = "Create a new Chip, with default color and checked color")
    public void CreateChip(String str, @Options(ChipType.class) String str2, int i, int i2) {
        Chip chip;
        new Chip(this.container.$context());
        if (str2 == "choice") {
            try {
                chip = (Chip) ((LayoutInflater) this.container.$context().getSystemService("layout_inflater")).inflate(R.layout.class.getField("niotronchip1").getInt(null), (ViewGroup) null);
            } catch (Exception e) {
                throw new YailRuntimeError(e.getMessage().toString(), "Error");
            }
        } else if (str2 == "action") {
            try {
                chip = (Chip) ((LayoutInflater) this.container.$context().getSystemService("layout_inflater")).inflate(R.layout.class.getField("niotronchip2").getInt(null), (ViewGroup) null);
            } catch (Exception e2) {
                throw new YailRuntimeError(e2.getMessage().toString(), "Error");
            }
        } else if (str2 == "entry") {
            try {
                chip = (Chip) ((LayoutInflater) this.container.$context().getSystemService("layout_inflater")).inflate(R.layout.class.getField("niotronchip3").getInt(null), (ViewGroup) null);
            } catch (Exception e3) {
                throw new YailRuntimeError(e3.getMessage().toString(), "Error");
            }
        } else if (str2 == "filter") {
            try {
                chip = (Chip) ((LayoutInflater) this.container.$context().getSystemService("layout_inflater")).inflate(R.layout.class.getField("niotronchip4").getInt(null), (ViewGroup) null);
            } catch (Exception e4) {
                throw new YailRuntimeError(e4.getMessage().toString(), "Error");
            }
        } else {
            throw new YailRuntimeError("Invalid Chip Type", "Error");
        }
        chip.setChipBackgroundColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i2, i}));
        chip.setOnCloseIconClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronChip.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NiotronChip niotronChip = NiotronChip.this;
                niotronChip.CloseButtonClicked(niotronChip.getChipName((Chip) view));
            }
        });
        chip.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronChip.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NiotronChip.this.Clicked(NiotronChip.this.getChipName((Chip) view));
            }
        });
        this.chipHashMap.put(str, chip);
        this.chipGroup.addView(chip);
    }

    @SimpleFunction(description = "Removes chip")
    public void RemoveChip(Object obj) {
        if (obj instanceof String) {
            this.chipGroup.removeView(this.chipHashMap.get(obj));
        } else {
            if (obj instanceof Chip) {
                this.chipGroup.removeView((Chip) obj);
                return;
            }
            throw new YailRuntimeError("Unsupported Chip value, can not remove chip", "Unsupported Value");
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets if any single chip of the group should be selected")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SingleSelection(boolean z) {
        this.singleSelect = z;
        this.chipGroup.setSingleSelection(z);
    }

    @SimpleProperty(description = "if any single chip of the group should be selected")
    public boolean SingleSelection() {
        return this.singleSelect;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets if one chip of the group must be selected")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SelectionRequired(boolean z) {
        this.selectionRequired = z;
        this.chipGroup.setSelectionRequired(z);
    }

    @SimpleProperty(description = "if one chip of the group must be selected")
    public boolean SelectionRequired() {
        return this.selectionRequired;
    }

    @SimpleFunction(description = "Sets chip radius")
    public void Radius(String str, float f) {
        this.chipHashMap.get(str).setChipCornerRadius(f);
    }

    @SimpleFunction(description = "Sets chip text")
    public void Text(String str, String str2) {
        this.chipHashMap.get(str).setText(str2);
    }

    @SimpleFunction(description = "Sets chip icon")
    public void Icon(String str, @Asset String str2) {
        Chip chip = this.chipHashMap.get(str);
        if (str2 == "") {
            chip.setChipIcon(null);
        } else {
            try {
                chip.setChipIcon(MediaUtil.getBitmapDrawable(this.container.$form(), str2));
            } catch (IOException unused) {
                throw new YailRuntimeError("No such asset found", "Error");
            }
        }
    }

    @SimpleFunction(description = "Sets the chip text color")
    public void TextColor(String str, int i, int i2) {
        this.chipHashMap.get(str).setTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i2, i}));
    }

    @SimpleFunction(description = "Sets stroke color")
    public void StrokeColor(String str, int i, int i2) {
        this.chipHashMap.get(str).setChipStrokeColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i2, i}));
    }

    @SimpleFunction(description = "Sets stroke size")
    public void StrokeSize(String str, float f) {
        this.chipHashMap.get(str).setChipStrokeWidth(f);
    }

    @SimpleFunction(description = "Set close icon")
    public void CloseIcon(String str, @Asset String str2) {
        Chip chip = this.chipHashMap.get(str);
        if (str2 == "") {
            chip.setCloseIcon(null);
        } else {
            try {
                chip.setCloseIcon(MediaUtil.getBitmapDrawable(this.container.$form(), str2));
            } catch (IOException unused) {
                throw new YailRuntimeError("No such asset found", "Error");
            }
        }
    }

    @SimpleFunction(description = "Sets chip padding")
    public void ChipPadding(String str, int i, int i2, int i3, int i4) {
        this.chipHashMap.get(str).setPadding(i, i2, i3, i4);
    }

    @SimpleFunction(description = "Sets chip padding")
    public void ChipIconPadding(String str, int i, int i2) {
        Chip chip = this.chipHashMap.get(str);
        chip.setIconStartPadding(i);
        chip.setIconEndPadding(i2);
    }

    @SimpleFunction(description = "Sets chip close icon padding")
    public void ChipCloseIconPadding(String str, int i, int i2) {
        Chip chip = this.chipHashMap.get(str);
        chip.setCloseIconStartPadding(i);
        chip.setCloseIconEndPadding(i2);
    }

    @SimpleFunction(description = "Sets chip icon size")
    public void IconSize(String str, float f) {
        this.chipHashMap.get(str).setChipIconSize(f);
    }

    @SimpleFunction(description = "Sets chip icon size")
    public void IconColor(String str, int i, int i2) {
        this.chipHashMap.get(str).setChipIconTint(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i2, i}));
    }

    @SimpleFunction(description = "Sets close icon size")
    public void CloseIconColor(String str, int i, int i2) {
        this.chipHashMap.get(str).setCloseIconTint(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i2, i}));
    }

    @SimpleFunction(description = "Check if the perticular chip is checked")
    public boolean isChecked(String str) {
        return this.chipHashMap.get(str).isChecked();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets vertical spacing")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void VerticalSpacing(int i) {
        this.chipGroup.setChipSpacingVertical(i);
    }

    @SimpleProperty(description = "Gets vertical spacing")
    public int VerticalSpacing() {
        return this.chipGroup.getChipSpacingVertical();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets vertical spacing")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void HorizontalSpacing(int i) {
        this.chipGroup.setChipSpacingHorizontal(i);
    }

    @SimpleProperty(description = "Gets vertical spacing")
    public int HorizontalSpacing() {
        return this.chipGroup.getChipSpacingHorizontal();
    }

    @SimpleFunction(description = "gets all the checked chips")
    public List<Integer> CheckedChipsList() {
        return this.chipGroup.getCheckedChipIds();
    }

    @SimpleEvent(description = "Invokes when chip check change (only works if single selection if true)")
    public void CheckChanged(int i) {
        EventDispatcher.dispatchEvent(this, "CheckChanged", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Invokes when chip was clicked")
    public void Clicked(String str) {
        EventDispatcher.dispatchEvent(this, "Clicked", str);
    }

    @SimpleEvent(description = "Invokes when close button clicked")
    public void CloseButtonClicked(String str) {
        EventDispatcher.dispatchEvent(this, "CloseButtonClicked", str);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public ChipGroup getView() {
        return this.chipGroup;
    }

    private void setListeners() {
        this.chipGroup.setOnCheckedChangeListener(new ChipGroup.OnCheckedChangeListener() { // from class: com.google.appinventor.components.runtime.NiotronChip.3
            @Override // com.google.android.material.chip.ChipGroup.OnCheckedChangeListener
            public void onCheckedChanged(ChipGroup chipGroup, int i) {
                NiotronChip.this.CheckChanged(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getChipName(Chip chip) {
        for (Map.Entry<String, Chip> entry : this.chipHashMap.entrySet()) {
            if (entry.getValue() == chip) {
                return entry.getKey();
            }
        }
        return null;
    }
}
