.class public Lcom/android/settings_ext/display/FluencyModeListPreference;
.super Landroid/preference/ListPreference;
.source "FluencyModeListPreference.java"


# instance fields
.field private UA:[Ljava/lang/String;

.field private UB:Lcom/android/settings_ext/display/i;

.field private Uy:[Ljava/lang/String;

.field private Uz:[Ljava/lang/String;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/display/FluencyModeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/settings_ext/display/i;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ext/display/i;-><init>(Lcom/android/settings_ext/display/FluencyModeListPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->UB:Lcom/android/settings_ext/display/i;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->Uy:[Ljava/lang/String;

    .line 48
    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->Uz:[Ljava/lang/String;

    .line 49
    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->UA:[Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->Uy:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/FluencyModeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 51
    invoke-direct {p0}, Lcom/android/settings_ext/display/FluencyModeListPreference;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->mStatus:I

    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->Uy:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->mStatus:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/FluencyModeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/display/FluencyModeListPreference;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings_ext/display/FluencyModeListPreference;->bq(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/display/FluencyModeListPreference;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->Uy:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/display/FluencyModeListPreference;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->mStatus:I

    return v0
.end method

.method private bq(I)V
    .locals 2

    .prologue
    .line 148
    if-nez p1, :cond_1

    .line 149
    const-string v0, "persist.sys.miui_feature_config"

    const-string v1, "/system/etc/miui_feature/lite.conf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/display/FluencyModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 154
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 151
    const-string v0, "persist.sys.miui_feature_config"

    const-string v1, "/system/etc/miui_feature/default.conf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings_ext/display/FluencyModeListPreference;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->UA:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/display/FluencyModeListPreference;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->Uz:[Ljava/lang/String;

    return-object v0
.end method

.method private getStatus()I
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->isLiteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->UB:Lcom/android/settings_ext/display/i;

    iget v1, p0, Lcom/android/settings_ext/display/FluencyModeListPreference;->mStatus:I

    new-instance v2, Lcom/android/settings_ext/display/e;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/display/e;-><init>(Lcom/android/settings_ext/display/FluencyModeListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    return-void
.end method
