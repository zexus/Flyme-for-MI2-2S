.class public Lcom/android/settings/wifi/WifiAPITest;
.super Lmiui/preference/PreferenceActivity;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private aud:I

.field private aue:Landroid/preference/Preference;

.field private auf:Landroid/preference/Preference;

.field private aug:Landroid/preference/Preference;

.field private hD:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiAPITest;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aud:I

    return v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiAPITest;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/android/settings/wifi/WifiAPITest;->aud:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->hD:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private uJ()V
    .locals 2

    .prologue
    .line 74
    const v0, 0x7f04012c

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPITest;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 78
    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->aue:Landroid/preference/Preference;

    .line 79
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->aue:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    const-string v1, "disable_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->auf:Landroid/preference/Preference;

    .line 82
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->auf:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    const-string v1, "enable_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aug:Landroid/preference/Preference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aug:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAPITest;->uJ()V

    .line 69
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPITest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->hD:Landroid/net/wifi/WifiManager;

    .line 70
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aue:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 160
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->auf:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    const-string v1, "Input"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    const-string v1, "Enter Network ID"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 112
    const-string v2, "Ok"

    new-instance v3, Lcom/android/settings/wifi/L;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/L;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    const-string v1, "Cancel"

    new-instance v2, Lcom/android/settings/wifi/M;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/M;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->aug:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 133
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    const-string v1, "Input"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 135
    const-string v1, "Enter Network ID"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 139
    const-string v2, "Ok"

    new-instance v3, Lcom/android/settings/wifi/N;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/N;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    const-string v1, "Cancel"

    new-instance v2, Lcom/android/settings/wifi/O;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/O;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 96
    const/4 v0, 0x0

    return v0
.end method
