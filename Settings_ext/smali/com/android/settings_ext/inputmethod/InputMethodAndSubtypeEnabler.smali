.class public Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "InputMethodAndSubtypeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private abo:Z

.field private final abp:Ljava/util/HashMap;

.field private final abq:Ljava/util/HashMap;

.field private abr:Ljava/util/List;

.field private bn:Ljava/text/Collator;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abp:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abq:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/text/Collator;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->bn:Ljava/text/Collator;

    return-object v0
.end method

.method private a(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/PreferenceScreen;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 157
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    .line 158
    const/4 v0, 0x1

    if-gt v5, v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 162
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 165
    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 170
    new-instance v7, Lcom/android/settings_ext/inputmethod/SwitchWithNoTextPreference;

    invoke-direct {v7, v4}, Lcom/android/settings_ext/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 171
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abq:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 173
    invoke-virtual {v7, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    new-instance v8, Landroid/preference/PreferenceCategory;

    invoke-direct {v8, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 176
    const v0, 0x7f0905ef

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 177
    invoke-virtual {p2, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 179
    const/4 v1, 0x0

    .line 180
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 181
    :goto_1
    if-ge v3, v5, :cond_3

    .line 182
    invoke-virtual {p1, v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 184
    if-nez v1, :cond_2

    .line 185
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4, v1, v10}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 181
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 189
    :cond_1
    new-instance v10, Lcom/android/settings_ext/inputmethod/InputMethodSubtypePreference;

    invoke-direct {v10, v4, v0, p1}, Lcom/android/settings_ext/inputmethod/InputMethodSubtypePreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V

    .line 191
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 194
    :cond_3
    new-instance v0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler$1;-><init>(Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 203
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 204
    :goto_3
    if-ge v2, v3, :cond_4

    .line 205
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 206
    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    invoke-static {v0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeUtil;->j(Landroid/preference/Preference;)V

    .line 204
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abp:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 212
    const v0, 0x7f0905f0

    invoke-virtual {v7, v0}, Landroid/preference/TwoStatePreference;->setTitle(I)V

    goto/16 :goto_0

    .line 215
    :cond_5
    invoke-virtual {v7, v1}, Landroid/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/inputmethod/InputMethodInfo;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 272
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abp:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p1, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    .line 276
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 295
    :cond_0
    return-void

    .line 279
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 280
    instance-of v1, v0, Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    .line 283
    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 285
    if-eqz p2, :cond_2

    .line 286
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    invoke-virtual {v0, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private aL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private aM(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 222
    instance-of v2, v0, Landroid/preference/TwoStatePreference;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abq:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 232
    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {v0, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 238
    instance-of v1, v0, Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    .line 242
    if-nez p2, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 243
    if-eqz p2, :cond_2

    .line 244
    check-cast v0, Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 242
    goto :goto_2

    .line 248
    :cond_4
    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abr:Ljava/util/List;

    iget-boolean v3, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abo:Z

    invoke-static {p0, v0, v1, v3}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/settings_ext/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 251
    invoke-direct {p0, p1, v2}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->d(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 258
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 259
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abq:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    .line 262
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 266
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->a(Landroid/view/inputmethod/InputMethodInfo;Z)V

    goto :goto_0

    .line 269
    :cond_2
    return-void
.end method

.method private pG()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    invoke-direct {p0, v0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->aM(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->c(Ljava/lang/String;Z)V

    goto :goto_0

    .line 301
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->d(Ljava/lang/String;Z)V

    .line 302
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    const-string v0, "android.intent.extra.TITLE"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->aL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 60
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abo:Z

    .line 66
    const-string v0, "input_method_id"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->aL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abr:Ljava/util/List;

    .line 70
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->bn:Ljava/text/Collator;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 74
    :goto_1
    if-ge v1, v4, :cond_3

    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abr:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 77
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->a(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/PreferenceScreen;)V

    .line 74
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 60
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 82
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->d(Ljava/lang/String;Z)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abr:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abo:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/settings_ext/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 122
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    .line 151
    :goto_0
    return v0

    .line 129
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abq:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    iget-object v5, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abq:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 133
    check-cast p1, Landroid/preference/TwoStatePreference;

    .line 134
    invoke-virtual {p1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 136
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->c(Ljava/lang/String;Z)V

    move v0, v2

    .line 137
    goto :goto_0

    .line 141
    :cond_2
    instance-of v0, p1, Lcom/android/settings_ext/inputmethod/InputMethodSubtypePreference;

    if-eqz v0, :cond_4

    .line 142
    check-cast p1, Lcom/android/settings_ext/inputmethod/InputMethodSubtypePreference;

    .line 143
    invoke-virtual {p1, v3}, Lcom/android/settings_ext/inputmethod/InputMethodSubtypePreference;->setChecked(Z)V

    .line 144
    invoke-virtual {p1}, Lcom/android/settings_ext/inputmethod/InputMethodSubtypePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->pG()V

    :cond_3
    move v0, v2

    .line 149
    goto :goto_0

    :cond_4
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/inputmethod/InputMethodSettingValuesWrapper;->aR(Landroid/content/Context;)Lcom/android/settings_ext/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/inputmethod/InputMethodSettingValuesWrapper;->pN()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abr:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->abp:Ljava/util/HashMap;

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/settings_ext/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeEnabler;->pG()V

    .line 113
    return-void
.end method
