.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final Al:Lcom/android/internal/content/PackageMonitor;

.field private adK:Lcom/android/settings/nfc/PaymentBackend;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/PaymentSettings;Lcom/android/settings/nfc/PaymentSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->Al:Lcom/android/internal/content/PackageMonitor;

    .line 179
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/PaymentSettings$2;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 147
    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->adK:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Lcom/android/settings/nfc/PaymentBackend;->d(Landroid/content/ComponentName;)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    .line 152
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->adK:Lcom/android/settings/nfc/PaymentBackend;

    .line 65
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "payment_service_search_uri"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const v1, 0x7f09092c

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 174
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 175
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 177
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 122
    const v0, 0x7f100168

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    new-instance v2, Lcom/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/PaymentSettings$1;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->Al:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 165
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 238
    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->adK:Lcom/android/settings/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;->aH(Z)V

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->Al:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    .line 159
    return-void
.end method

.method public refresh()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 74
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->adK:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->qq()Ljava/util/List;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 78
    new-instance v2, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4, v0, p0}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v4, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->kk:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->adH:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 85
    :cond_0
    const-string v2, "PaymentSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load banner drawable of service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100168

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f100166

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 93
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 110
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 111
    return-void

    .line 98
    :cond_2
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 99
    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettings;->adK:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v5}, Lcom/android/settings/nfc/PaymentBackend;->qr()Z

    move-result v5

    .line 100
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 101
    const v6, 0x7f090929

    invoke-virtual {p0, v6}, Lcom/android/settings/nfc/PaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 105
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method
