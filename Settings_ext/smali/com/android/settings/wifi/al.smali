.class Lcom/android/settings_ext/wifi/al;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic avY:Lcom/android/settings_ext/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/settings_ext/wifi/al;->avY:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 822
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 823
    iget-object v1, p0, Lcom/android/settings_ext/wifi/al;->avY:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiSettings;->a(Lcom/android/settings_ext/wifi/WifiSettings;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    iget-object v1, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/settings_ext/wifi/al;->avY:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiSettings;->a(Lcom/android/settings_ext/wifi/WifiSettings;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    iget-object v1, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/al;->avY:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-static {v2}, Lcom/android/settings_ext/wifi/WifiSettings;->a(Lcom/android/settings_ext/wifi/WifiSettings;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v2

    iget-object v2, v2, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/wifi/al;->avY:Lcom/android/settings_ext/wifi/WifiSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ext/wifi/WifiSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 836
    return-void

    .line 831
    :cond_0
    const-string v1, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/settings_ext/wifi/al;->avY:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-static {v2}, Lcom/android/settings_ext/wifi/WifiSettings;->a(Lcom/android/settings_ext/wifi/WifiSettings;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v2

    iget-object v2, v2, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
