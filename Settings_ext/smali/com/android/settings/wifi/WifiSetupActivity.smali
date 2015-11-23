.class public Lcom/android/settings/wifi/WifiSetupActivity;
.super Lcom/android/settings/wifi/WifiPickerActivity;
.source "WifiSetupActivity.java"

# interfaces
.implements Lcom/android/settings/ac;
.implements Lcom/android/setupwizard/navigationbar/f;


# instance fields
.field private final asr:Landroid/content/IntentFilter;

.field private awA:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

.field private awx:Z

.field private awy:Z

.field private awz:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerActivity;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awx:Z

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->asr:Landroid/content/IntentFilter;

    .line 87
    new-instance v0, Lcom/android/settings/wifi/au;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/au;-><init>(Lcom/android/settings/wifi/WifiSetupActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiSetupActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->vG()V

    return-void
.end method

.method private bq(Z)V
    .locals 2

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    .line 131
    if-eqz p1, :cond_2

    .line 132
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awz:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "WifiSetupActivity"

    const-string v1, "Auto-finishing with connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->di(I)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awz:Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awA:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awA:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awA:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awA:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awA:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awA:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awx:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private dj(I)V
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.wizard.NEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v2, "scriptUri"

    const-string v3, "scriptUri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v2, "actionId"

    const-string v3, "actionId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v2, "theme"

    const-string v3, "theme"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v0, "com.android.setupwizard.ResultCode"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const/16 v0, 0x2710

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 264
    if-nez v0, :cond_0

    .line 268
    :goto_0
    return v1

    .line 267
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private vG()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 126
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->bq(Z)V

    .line 127
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private vI()Z
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scriptUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awA:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "useImmersiveMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 232
    invoke-virtual {p1, v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->bt(Z)V

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public di(I)V
    .locals 3

    .prologue
    .line 197
    const-string v0, "WifiSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishOrNext resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isUsingWizardManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->vI()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->vI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSetupActivity;->dj(I)V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSetupActivity;->setResult(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->finish()V

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 184
    const-class v0, Lcom/android/settings/wifi/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v1, "holo_light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "material_light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    :cond_0
    const p2, 0x7f0a0040

    .line 179
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiPickerActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 180
    return-void

    .line 175
    :cond_2
    const-string v1, "holo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "material"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_3
    const p2, 0x7f0a003f

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 103
    const-string v3, "wifi_auto_finish_on_connect"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awy:Z

    .line 104
    const-string v3, "allowSkip"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awx:Z

    .line 106
    const-string v3, "wifi_require_user_network_selection"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awz:Z

    .line 107
    return-void

    :cond_0
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onPause()V

    .line 167
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 118
    const-string v0, "userSelectedNetwork"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awz:Z

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->asr:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->vG()V

    .line 161
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "userSelectedNetwork"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awz:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    return-void
.end method

.method vH()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "WifiSetupActivity"

    const-string v1, "Network selected by user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->awz:Z

    .line 154
    return-void
.end method

.method public vJ()V
    .locals 0

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->onBackPressed()V

    .line 242
    return-void
.end method

.method public vK()V
    .locals 3

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->di(I)V

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f09030c

    .line 253
    :goto_1
    invoke-static {v0}, Lcom/android/settings/wifi/av;->dk(I)Lcom/android/settings/wifi/av;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/av;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    const v0, 0x7f09030d

    goto :goto_1
.end method
