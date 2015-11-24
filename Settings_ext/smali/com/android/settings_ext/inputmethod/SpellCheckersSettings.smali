.class public Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ext/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;
.implements Lcom/android/settings_ext/widget/I;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private abT:Landroid/preference/Preference;

.field private abU:Landroid/view/textservice/SpellCheckerInfo;

.field private abV:[Landroid/view/textservice/SpellCheckerInfo;

.field private abW:Landroid/view/textservice/TextServicesManager;

.field private kr:Lcom/android/settings_ext/widget/SwitchBar;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method private a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_0
    if-nez p2, :cond_1

    .line 136
    const v0, 0x7f0905f0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 239
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->pW()V

    .line 240
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method static synthetic access$100(I)I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->bS(I)I

    move-result v0

    return v0
.end method

.method private b(Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 211
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;->pU()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 215
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 217
    const v2, 0x7f0905b5

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 219
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    const/high16 v0, 0x1040000

    new-instance v2, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$3;-><init>(Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 231
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 232
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->pW()V

    return-void
.end method

.method private static bR(I)I
    .locals 1

    .prologue
    .line 163
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static bS(I)I
    .locals 1

    .prologue
    .line 164
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private pV()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abV:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v0, :cond_0

    move v0, v1

    .line 74
    :goto_0
    if-ge v1, v0, :cond_1

    .line 75
    iget-object v4, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abV:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v4, v4, v1

    .line 76
    new-instance v5, Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;

    invoke-direct {v5, v3, v4, p0}, Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;-><init>(Landroid/content/Context;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/settings_ext/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;)V

    .line 77
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 78
    invoke-static {v5}, Lcom/android/settings_ext/inputmethod/InputMethodAndSubtypeUtil;->j(Landroid/preference/Preference;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abV:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v0, v0

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method private pW()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abU:Landroid/view/textservice/SpellCheckerInfo;

    .line 106
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abU:Landroid/view/textservice/SpellCheckerInfo;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v4

    .line 111
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings_ext/widget/SwitchBar;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abT:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abU:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0, v3, v0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 118
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    move v3, v2

    .line 119
    :goto_0
    if-ge v3, v6, :cond_0

    .line 120
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 122
    instance-of v1, v0, Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;

    if-eqz v1, :cond_2

    .line 123
    check-cast v0, Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;

    .line 124
    invoke-virtual {v0}, Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;->pU()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 125
    iget-object v7, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abU:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abU:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;->setSelected(Z)V

    .line 119
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 125
    goto :goto_1
.end method

.method private pX()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 171
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v4

    .line 173
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    const v1, 0x7f0905aa

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    .line 176
    add-int/lit8 v1, v6, 0x1

    new-array v7, v1, [Ljava/lang/CharSequence;

    .line 177
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v7, v0

    move v2, v0

    move v1, v0

    .line 179
    :goto_0
    if-ge v2, v6, :cond_1

    .line 180
    invoke-virtual {v3, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    .line 181
    invoke-static {v2}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->bR(I)I

    move-result v0

    .line 182
    invoke-direct {p0, v3, v8}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v0

    .line 183
    invoke-virtual {v8, v4}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 179
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 187
    :cond_1
    new-instance v0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v5, v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 207
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 208
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, p2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->pW()V

    .line 101
    return-void
.end method

.method public a(Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;)V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;->pU()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 156
    :goto_0
    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0, v1}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 161
    :goto_1
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->b(Lcom/android/settings_ext/inputmethod/SpellCheckerPreference;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f060085

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    .line 61
    const-string v0, "spellchecker_language"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abT:Landroid/preference/Preference;

    .line 62
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abT:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    const-string v0, "textservices"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abU:Landroid/view/textservice/SpellCheckerInfo;

    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abW:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abV:[Landroid/view/textservice/SpellCheckerInfo;

    .line 67
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->pV()V

    .line 68
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/SwitchBar;->b(Lcom/android/settings_ext/widget/I;)V

    .line 95
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->abT:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->pX()V

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gh;

    invoke-virtual {v0}, Lcom/android/settings_ext/gh;->gH()Lcom/android/settings_ext/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/SwitchBar;->show()V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/SwitchBar;->a(Lcom/android/settings_ext/widget/I;)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->pW()V

    .line 89
    return-void
.end method
