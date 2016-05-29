.class public Lcom/android/settings/ButtonSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ButtonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    .line 176
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    return-void
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/settings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 169
    .local v0, "list":Landroid/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v19, 0x7f06000f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/ButtonSettings;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 102
    .local v17, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 103
    .local v18, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 105
    .local v15, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e0053

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 108
    .local v5, "deviceKeys":I
    const/16 v19, 0x1a

    invoke-static/range {v19 .. v19}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v11

    .line 109
    .local v11, "hasPowerKey":Z
    and-int/lit8 v19, v5, 0x1

    if-eqz v19, :cond_4

    const/4 v9, 0x1

    .line 110
    .local v9, "hasHomeKey":Z
    :goto_0
    and-int/lit8 v19, v5, 0x4

    if-eqz v19, :cond_5

    const/4 v10, 0x1

    .line 111
    .local v10, "hasMenuKey":Z
    :goto_1
    and-int/lit8 v19, v5, 0x8

    if-eqz v19, :cond_6

    const/4 v8, 0x1

    .line 113
    .local v8, "hasAssistKey":Z
    :goto_2
    const/4 v7, 0x0

    .line 114
    .local v7, "hasAnyBindableKey":Z
    const-string v19, "home_key"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 116
    .local v12, "homeCategory":Landroid/preference/PreferenceCategory;
    const-string v19, "menu_key"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    .line 119
    .local v14, "menuCategory":Landroid/preference/PreferenceCategory;
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ButtonSettings;->mHandler:Landroid/os/Handler;

    .line 121
    if-eqz v9, :cond_7

    .line 122
    const v19, 0x10e0050

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 124
    .local v4, "defaultLongPressAction":I
    if-ltz v4, :cond_0

    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v4, v0, :cond_1

    .line 126
    :cond_0
    const/4 v4, 0x0

    .line 129
    :cond_1
    const v19, 0x10e0051

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 131
    .local v3, "defaultDoubleTapAction":I
    if-ltz v3, :cond_2

    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v3, v0, :cond_3

    .line 133
    :cond_2
    const/4 v3, 0x0

    .line 136
    :cond_3
    const-string v19, "key_home_long_press_action"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 139
    .local v13, "longPressAction":I
    const-string v19, "hardware_keys_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/android/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 141
    const-string v19, "key_home_double_tap_action"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 144
    .local v6, "doubleTapAction":I
    const-string v19, "hardware_keys_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/android/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 146
    const/4 v7, 0x1

    .line 151
    .end local v3    # "defaultDoubleTapAction":I
    .end local v4    # "defaultLongPressAction":I
    .end local v6    # "doubleTapAction":I
    .end local v13    # "longPressAction":I
    :goto_3
    if-eqz v10, :cond_9

    .line 152
    const-string v19, "key_menu_action"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 154
    .local v16, "pressAction":I
    const-string v19, "hardware_keys_menu_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 156
    const-string v20, "key_menu_long_press_action"

    if-eqz v8, :cond_8

    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 159
    .restart local v13    # "longPressAction":I
    const-string v19, "hardware_keys_menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/android/settings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 161
    const/4 v7, 0x1

    .line 165
    .end local v13    # "longPressAction":I
    .end local v16    # "pressAction":I
    :goto_5
    return-void

    .line 109
    .end local v7    # "hasAnyBindableKey":Z
    .end local v8    # "hasAssistKey":Z
    .end local v9    # "hasHomeKey":Z
    .end local v10    # "hasMenuKey":Z
    .end local v12    # "homeCategory":Landroid/preference/PreferenceCategory;
    .end local v14    # "menuCategory":Landroid/preference/PreferenceCategory;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 110
    .restart local v9    # "hasHomeKey":Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 111
    .restart local v10    # "hasMenuKey":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 148
    .restart local v7    # "hasAnyBindableKey":Z
    .restart local v8    # "hasAssistKey":Z
    .restart local v12    # "homeCategory":Landroid/preference/PreferenceCategory;
    .restart local v14    # "menuCategory":Landroid/preference/PreferenceCategory;
    :cond_7
    invoke-virtual {v15, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 156
    .restart local v16    # "pressAction":I
    :cond_8
    const/16 v19, 0x3

    goto :goto_4

    .line 163
    .end local v16    # "pressAction":I
    :cond_9
    invoke-virtual {v15, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 185
    iget-object v1, p0, Lcom/android/settings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_home_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :goto_0
    return v0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/settings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    const-string v2, "key_home_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/android/settings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_menu_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 198
    iget-object v1, p0, Lcom/android/settings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_menu_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
