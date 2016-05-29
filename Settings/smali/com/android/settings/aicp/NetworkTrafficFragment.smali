.class public Lcom/android/settings_ext/aicp/NetworkTrafficFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "NetworkTrafficFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private MASK_DOWN:I

.field private MASK_METER:I

.field private MASK_PERIOD:I

.field private MASK_TEXT:I

.field private MASK_UNIT:I

.field private MASK_UP:I

.field private mNetTrafficAutohide:Landroid/preference/SwitchPreference;

.field private mNetTrafficAutohideThreshold:Lcom/android/settings_ext/widget/SeekBarPreferenceCham;

.field private mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field private mNetTrafficDisplay:Landroid/preference/ListPreference;

.field private mNetTrafficMonitor:Landroid/preference/ListPreference;

.field private mNetTrafficPeriod:Landroid/preference/ListPreference;

.field private mNetTrafficUnit:Landroid/preference/ListPreference;

.field private mNetTrafficVal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private NetworkTrafficColorReset()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_traffic_vector_color"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    iget-object v1, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setNewPreviewColor(I)V

    .line 178
    const-string v1, "#%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "hexColor":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ext/aicp/NetworkTrafficFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/aicp/NetworkTrafficFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->NetworkTrafficColorReset()V

    return-void
.end method

.method private getBit(II)Z
    .locals 1
    .param p1, "intNumber"    # I
    .param p2, "intMask"    # I

    .prologue
    .line 294
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResources()V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 242
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_METER:I

    .line 243
    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_TEXT:I

    .line 244
    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_UP:I

    .line 245
    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_DOWN:I

    .line 246
    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_UNIT:I

    .line 247
    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_PERIOD:I

    .line 248
    return-void
.end method

.method private resetToDefault()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090a4b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 163
    const v1, 0x7f090a4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 164
    const v1, 0x7f090a29

    new-instance v2, Lcom/android/settings_ext/aicp/NetworkTrafficFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment$1;-><init>(Lcom/android/settings_ext/aicp/NetworkTrafficFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    const v1, 0x7f0900fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 171
    return-void
.end method

.method private setBit(IIZ)I
    .locals 1
    .param p1, "intNumber"    # I
    .param p2, "intMask"    # I
    .param p3, "blnState"    # Z

    .prologue
    .line 287
    if-eqz p3, :cond_0

    .line 288
    or-int v0, p1, p2

    .line 290
    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    goto :goto_0
.end method

.method private updateNetworkTrafficState(I)V
    .locals 3
    .param p1, "mIndex"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 252
    if-gtz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohideThreshold:Lcom/android/settings_ext/widget/SeekBarPreferenceCham;

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/widget/SeekBarPreferenceCham;->setEnabled(Z)V

    .line 284
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 265
    if-ne p1, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohideThreshold:Lcom/android/settings_ext/widget/SeekBarPreferenceCham;

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/widget/SeekBarPreferenceCham;->setEnabled(Z)V

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohideThreshold:Lcom/android/settings_ext/widget/SeekBarPreferenceCham;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/SeekBarPreferenceCham;->setEnabled(Z)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohideThreshold:Lcom/android/settings_ext/widget/SeekBarPreferenceCham;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/SeekBarPreferenceCham;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v7, 0x7f060005

    invoke-virtual {p0, v7}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->addPreferencesFromResource(I)V

    .line 72
    invoke-direct {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->loadResources()V

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "defaultState":I
    iget v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_METER:I

    invoke-direct {p0, v0, v7, v8}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->setBit(IIZ)I

    move-result v0

    .line 77
    iget v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_DOWN:I

    invoke-direct {p0, v0, v7, v8}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->setBit(IIZ)I

    move-result v0

    .line 78
    iget v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_PERIOD:I

    invoke-direct {p0, v0, v7, v9}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->setBit(IIZ)I

    move-result v7

    const/high16 v10, 0x7d00000

    add-int v0, v7, v10

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 81
    .local v5, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 83
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v7, "network_traffic_display"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficDisplay:Landroid/preference/ListPreference;

    .line 84
    const-string v7, "network_traffic_monitor"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    .line 85
    const-string v7, "network_traffic_period"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    .line 86
    const-string v7, "network_traffic_unit"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    .line 88
    const-string v7, "network_traffic_color"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 90
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v7, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "network_traffic_vector_color"

    const/4 v11, -0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, "intColor":I
    const-string v7, "#%08x"

    new-array v10, v8, [Ljava/lang/Object;

    and-int/lit8 v11, v2, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "hexColor":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v7, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v7, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setNewPreviewColor(I)V

    .line 97
    const-string v7, "network_traffic_autohide"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    .line 99
    iget-object v10, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "network_traffic_vector_autohide"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_2

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 101
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    const-string v7, "network_traffic_autohide_threshold"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ext/widget/SeekBarPreferenceCham;

    iput-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohideThreshold:Lcom/android/settings_ext/widget/SeekBarPreferenceCham;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "network_traffic_vector_autohide_threshold"

    const/16 v11, 0xa

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 107
    .local v4, "netTrafficAutohideThreshold":I
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohideThreshold:Lcom/android/settings_ext/widget/SeekBarPreferenceCham;

    invoke-virtual {v7, v4}, Lcom/android/settings_ext/widget/SeekBarPreferenceCham;->setValue(I)V

    .line 108
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohideThreshold:Lcom/android/settings_ext/widget/SeekBarPreferenceCham;

    invoke-virtual {v7, p0}, Lcom/android/settings_ext/widget/SeekBarPreferenceCham;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v10

    cmp-long v7, v10, v12

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v10

    cmp-long v7, v10, v12

    if-eqz v7, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "network_traffic_vector_state"

    invoke-static {v7, v10, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    .line 115
    iget v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    iget v10, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_METER:I

    iget v11, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_TEXT:I

    add-int/2addr v10, v11

    and-int v3, v7, v10

    .line 116
    .local v3, "intIndex":I
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficDisplay:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 117
    invoke-direct {p0, v3}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->updateNetworkTrafficState(I)V

    .line 119
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficDisplay:Landroid/preference/ListPreference;

    if-ltz v3, :cond_3

    .end local v3    # "intIndex":I
    :goto_1
    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 120
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficDisplay:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficDisplay:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficDisplay:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    iget v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    iget v10, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_UP:I

    iget v11, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_DOWN:I

    add-int/2addr v10, v11

    and-int v3, v7, v10

    .line 124
    .restart local v3    # "intIndex":I
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 125
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    if-ltz v3, :cond_4

    .end local v3    # "intIndex":I
    :goto_2
    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 126
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    iget v10, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_PERIOD:I

    and-int/2addr v7, v10

    ushr-int/lit8 v3, v7, 0x10

    .line 130
    .restart local v3    # "intIndex":I
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 131
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    if-ltz v3, :cond_5

    .end local v3    # "intIndex":I
    :goto_3
    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 132
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    iget v10, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    iget v11, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_UNIT:I

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getBit(II)Z

    move-result v10

    if-eqz v10, :cond_0

    move v9, v8

    :cond_0
    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 136
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v7, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->setHasOptionsMenu(Z)V

    .line 140
    return-void

    .end local v4    # "netTrafficAutohideThreshold":I
    :cond_2
    move v7, v9

    .line 99
    goto/16 :goto_0

    .restart local v3    # "intIndex":I
    .restart local v4    # "netTrafficAutohideThreshold":I
    :cond_3
    move v3, v9

    .line 119
    goto/16 :goto_1

    :cond_4
    move v3, v8

    .line 125
    goto :goto_2

    .line 131
    :cond_5
    const/4 v3, 0x3

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 144
    const/4 v0, 0x1

    const v1, 0x7f090a4b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020072

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->resetToDefault()V

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 184
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficDisplay:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    move-object v6, p2

    .line 185
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 186
    .local v3, "intState":I
    iget v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    iget v8, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_METER:I

    iget v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_METER:I

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getBit(II)Z

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->setBit(IIZ)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    .line 187
    iget v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    iget v8, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_TEXT:I

    iget v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_TEXT:I

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getBit(II)Z

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->setBit(IIZ)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_vector_state"

    iget v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficDisplay:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, "index":I
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficDisplay:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficDisplay:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    invoke-direct {p0, v1}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->updateNetworkTrafficState(I)V

    .line 237
    .end local v1    # "index":I
    .end local v3    # "intState":I
    :goto_0
    return v7

    .line 194
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v6, :cond_1

    .line 195
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v2

    .line 199
    .local v2, "intHex":I
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_vector_color"

    invoke-static {v6, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 202
    .end local v0    # "hex":Ljava/lang/String;
    .end local v2    # "intHex":I
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    move-object v6, p2

    .line 203
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 204
    .restart local v3    # "intState":I
    iget v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    iget v8, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_UP:I

    iget v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_UP:I

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getBit(II)Z

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->setBit(IIZ)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    .line 205
    iget v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    iget v8, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_DOWN:I

    iget v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_DOWN:I

    invoke-direct {p0, v3, v9}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getBit(II)Z

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->setBit(IIZ)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_vector_state"

    iget v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 209
    .restart local v1    # "index":I
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficMonitor:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    .end local v1    # "index":I
    .end local v3    # "intState":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_3

    move-object v6, p2

    .line 212
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 213
    .restart local v3    # "intState":I
    iget v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    iget v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_PERIOD:I

    invoke-direct {p0, v6, v9, v8}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->setBit(IIZ)I

    move-result v6

    shl-int/lit8 v8, v3, 0x10

    add-int/2addr v6, v8

    iput v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_vector_state"

    iget v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 217
    .restart local v1    # "index":I
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 219
    .end local v1    # "index":I
    .end local v3    # "intState":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_4

    .line 220
    iget v8, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    iget v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->MASK_UNIT:I

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {p0, v8, v9, v6}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->setBit(IIZ)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_vector_state"

    iget v9, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficVal:I

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 224
    .restart local v1    # "index":I
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 226
    .end local v1    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_6

    .line 227
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 228
    .local v5, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "network_traffic_vector_autohide"

    if-eqz v5, :cond_5

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    move v6, v8

    goto :goto_1

    .line 231
    .end local v5    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->mNetTrafficAutohideThreshold:Lcom/android/settings_ext/widget/SeekBarPreferenceCham;

    if-ne p1, v6, :cond_7

    .line 232
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 233
    .local v4, "threshold":I
    invoke-virtual {p0}, Lcom/android/settings_ext/aicp/NetworkTrafficFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_traffic_vector_autohide_threshold"

    invoke-static {v6, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .end local v4    # "threshold":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    move v7, v8

    .line 237
    goto/16 :goto_0
.end method
