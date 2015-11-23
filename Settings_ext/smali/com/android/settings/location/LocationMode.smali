.class public Lcom/android/settings_ext/location/LocationMode;
.super Lcom/android/settings_ext/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/settings_ext/location/RadioButtonPreference$OnClickListener;


# instance fields
.field private acA:Z

.field private acB:Lcom/android/a/a/d;

.field private acu:Lcom/android/settings_ext/location/RadioButtonPreference;

.field private acv:Lcom/android/settings_ext/location/RadioButtonPreference;

.field private acw:Lcom/android/settings_ext/location/RadioButtonPreference;

.field private acx:Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

.field private acy:Lcom/android/a/a/a;

.field private acz:Lcom/android/settings_ext/location/LocationMode$XTServiceConnection;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings_ext/location/LocationSettingsBase;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acy:Lcom/android/a/a/a;

    .line 78
    iput-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acz:Lcom/android/settings_ext/location/LocationMode$XTServiceConnection;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/location/LocationMode;->acA:Z

    .line 83
    new-instance v0, Lcom/android/settings_ext/location/LocationMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/location/LocationMode$1;-><init>(Lcom/android/settings_ext/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/android/settings_ext/location/LocationMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/location/LocationMode$2;-><init>(Lcom/android/settings_ext/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acB:Lcom/android/a/a/d;

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/location/LocationMode;Lcom/android/a/a/a;)Lcom/android/a/a/a;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings_ext/location/LocationMode;->acy:Lcom/android/a/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/location/LocationMode;)Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acx:Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

    return-object v0
.end method

.method private a(Lcom/android/settings_ext/location/RadioButtonPreference;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 250
    if-nez p1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acu:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acv:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acw:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acu:Lcom/android/settings_ext/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acu:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acv:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acw:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acv:Lcom/android/settings_ext/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acu:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acv:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acw:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acw:Lcom/android/settings_ext/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acu:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acv:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acw:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings_ext/location/LocationMode;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/location/LocationMode;)Lcom/android/a/a/a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acy:Lcom/android/a/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/location/LocationMode;)Lcom/android/a/a/d;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acB:Lcom/android/a/a/d;

    return-object v0
.end method

.method private gC()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 190
    :cond_0
    const v0, 0x7f060045

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/location/LocationMode;->addPreferencesFromResource(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 193
    const-string v0, "high_accuracy"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acu:Lcom/android/settings_ext/location/RadioButtonPreference;

    .line 194
    const-string v0, "battery_saving"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acv:Lcom/android/settings_ext/location/RadioButtonPreference;

    .line 195
    const-string v0, "sensors_only"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acw:Lcom/android/settings_ext/location/RadioButtonPreference;

    .line 196
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acu:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/location/RadioButtonPreference;->a(Lcom/android/settings_ext/location/RadioButtonPreference$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acv:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/location/RadioButtonPreference;->a(Lcom/android/settings_ext/location/RadioButtonPreference$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acw:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/location/RadioButtonPreference;->a(Lcom/android/settings_ext/location/RadioButtonPreference$OnClickListener;)V

    .line 200
    const-string v0, "enhanced_location"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 202
    const-string v1, "location_izat"

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ext/location/LocationMode;->acx:Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

    .line 203
    iget-boolean v1, p0, Lcom/android/settings_ext/location/LocationMode;->acA:Z

    if-nez v1, :cond_3

    .line 204
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acx:Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acx:Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

    new-instance v1, Lcom/android/settings_ext/location/LocationMode$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/location/LocationMode$3;-><init>(Lcom/android/settings_ext/location/LocationMode;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationMode;->qd()V

    .line 246
    return-object v2

    .line 207
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acy:Lcom/android/a/a/a;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acy:Lcom/android/a/a/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/a/a/a;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationMode;->acy:Lcom/android/a/a/a;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/android/a/a/a;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    iget-object v3, p0, Lcom/android/settings_ext/location/LocationMode;->acx:Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acx:Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acx:Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ext/location/LocationMode;->acy:Lcom/android/a/a/a;

    invoke-interface {v1}, Lcom/android/a/a/a;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/location/WrappingIZatSwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-string v0, "LocationMode"

    const-string v1, "Service connection error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private qc()V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/android/settings_ext/location/LocationMode$XTServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/location/LocationMode$XTServiceConnection;-><init>(Lcom/android/settings_ext/location/LocationMode;Lcom/android/settings_ext/location/LocationMode$1;)V

    iput-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acz:Lcom/android/settings_ext/location/LocationMode$XTServiceConnection;

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/a/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v1, "com.qualcomm.location.XT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/location/LocationMode;->acz:Lcom/android/settings_ext/location/LocationMode$XTServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/location/LocationMode;->acA:Z

    .line 119
    return-void
.end method


# virtual methods
.method public ao()I
    .locals 1

    .prologue
    .line 309
    const v0, 0x7f090942

    return v0
.end method

.method public b(Lcom/android/settings_ext/location/RadioButtonPreference;)V
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationMode;->acu:Lcom/android/settings_ext/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 273
    const/4 v0, 0x3

    .line 279
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/location/LocationMode;->bT(I)V

    .line 280
    return-void

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationMode;->acv:Lcom/android/settings_ext/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 275
    const/4 v0, 0x2

    goto :goto_0

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationMode;->acw:Lcom/android/settings_ext/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 277
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f(IZ)V
    .locals 2

    .prologue
    .line 284
    packed-switch p1, :pswitch_data_0

    .line 301
    :goto_0
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 302
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationMode;->acu:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/location/RadioButtonPreference;->setEnabled(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationMode;->acv:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/location/RadioButtonPreference;->setEnabled(Z)V

    .line 304
    iget-object v1, p0, Lcom/android/settings_ext/location/LocationMode;->acw:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/location/RadioButtonPreference;->setEnabled(Z)V

    .line 305
    return-void

    .line 286
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/location/LocationMode;->a(Lcom/android/settings_ext/location/RadioButtonPreference;)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acw:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/location/LocationMode;->a(Lcom/android/settings_ext/location/RadioButtonPreference;)V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acv:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/location/LocationMode;->a(Lcom/android/settings_ext/location/RadioButtonPreference;)V

    goto :goto_0

    .line 295
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationMode;->acu:Lcom/android/settings_ext/location/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/location/LocationMode;->a(Lcom/android/settings_ext/location/RadioButtonPreference;)V

    goto :goto_0

    .line 301
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/settings_ext/location/LocationSettingsBase;->onPause()V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/settings_ext/location/LocationSettingsBase;->onResume()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings_ext/location/LocationMode;->gC()Landroid/preference/PreferenceScreen;

    .line 178
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings_ext/location/LocationSettingsBase;->onStart()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings_ext/location/LocationMode;->qc()V

    .line 166
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/settings_ext/location/LocationSettingsBase;->onStop()V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ext/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/location/LocationMode;->acz:Lcom/android/settings_ext/location/LocationMode$XTServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    return-void
.end method
