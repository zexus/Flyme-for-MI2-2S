.class public final Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice$Callback;


# instance fields
.field private Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

.field private Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

.field private Mw:Landroid/app/AlertDialog;

.field private NW:Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

.field private NX:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

.field private NY:Landroid/preference/PreferenceGroup;

.field private NZ:Landroid/preference/EditTextPreference;

.field private final Oa:Ljava/util/HashMap;

.field private Ob:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Oa:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NZ:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V
    .locals 7

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    .line 278
    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const v0, 0x7f0900ef

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_0
    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->d(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    const v3, 0x7f0900e3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    const v4, 0x7f0900e4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v2, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V

    .line 297
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mw:Landroid/app/AlertDialog;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/settings_ext/bluetooth/Utils;->a(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mw:Landroid/app/AlertDialog;

    .line 299
    return-void
.end method

.method private a(Landroid/preference/CheckBoxPreference;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 340
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mt()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 341
    invoke-interface {p2, v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    invoke-interface {p2, v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->e(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 343
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 256
    invoke-interface {p1, v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 257
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    move v0, v1

    .line 260
    :goto_0
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->a(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V

    .line 272
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    .line 263
    :cond_1
    invoke-interface {p1, v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-interface {p1, v3, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 266
    invoke-direct {p0, p2, p1}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->a(Landroid/preference/CheckBoxPreference;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 268
    :cond_2
    invoke-interface {p1, v3, v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->c(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private aY(I)I
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private f(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 205
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->d(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 208
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 209
    invoke-interface {p1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->lF()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->aY(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 210
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->my()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothClass;)I

    move-result v2

    .line 213
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mt()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 222
    invoke-direct {p0, v1, p1}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->a(Landroid/preference/CheckBoxPreference;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V

    .line 224
    return-object v1
.end method

.method private f(Landroid/preference/Preference;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 346
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-object v0

    .line 349
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;->aD(Ljava/lang/String;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private mP()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mA()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    .line 179
    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->f(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 180
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->mQ()V

    .line 183
    return-void
.end method

.method private mQ()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 187
    iget-boolean v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Ob:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Ob:Z

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Ob:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Ob:Z

    goto :goto_0
.end method

.method private mR()V
    .locals 6

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mA()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    .line 315
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 316
    if-nez v1, :cond_0

    .line 317
    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->f(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 320
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->a(Landroid/preference/CheckBoxPreference;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mB()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 325
    if-eqz v2, :cond_2

    .line 326
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " from profile list"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NY:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 330
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->mQ()V

    .line 331
    return-void
.end method

.method private mS()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mn()V

    .line 366
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NX:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ne()Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->g(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)V

    .line 367
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NZ:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NZ:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->mR()V

    .line 311
    return-void
.end method


# virtual methods
.method public lH()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 303
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    .line 103
    :goto_0
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 105
    const-string v0, "profile_container"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NY:Landroid/preference/PreferenceGroup;

    .line 106
    const-string v0, "rename_device"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NZ:Landroid/preference/EditTextPreference;

    .line 108
    if-nez v1, :cond_1

    .line 109
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "Activity started without a remote Bluetooth device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->finish()V

    .line 132
    :goto_1
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    const-string v1, "device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NW:Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NX:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NX:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ne()Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NX:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ng()Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mk:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfileManager;

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    .line 119
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_2

    .line 120
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "Device not found, cannot connect to it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_1

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NZ:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NZ:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NZ:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->mP()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mw:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mw:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mw:Landroid/app/AlertDialog;

    .line 141
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->b(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NX:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->aj(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 240
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NZ:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 243
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->f(Landroid/preference/Preference;)Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    .line 244
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1, p1}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->a(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v1, "unpair"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->mS()V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->finish()V

    .line 233
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NX:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->aj(Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->finish()V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NZ:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NW:Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->NZ:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 162
    instance-of v2, v0, Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 163
    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 164
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    :cond_1
    return-void

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 147
    return-void
.end method
