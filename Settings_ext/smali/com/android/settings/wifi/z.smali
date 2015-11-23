.class Lcom/android/settings_ext/wifi/z;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic atC:Lcom/android/settings_ext/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/MiuiWifiSettings;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings_ext/wifi/z;->atC:Lcom/android/settings_ext/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/wifi/z;->atC:Lcom/android/settings_ext/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ext/wifi/z;->atC:Lcom/android/settings_ext/wifi/MiuiWifiSettings;

    invoke-static {v0, v1}, Lcom/android/settings_ext/wifi/MiuiWifiSettings;->a(Lcom/android/settings_ext/wifi/MiuiWifiSettings;Z)Z

    .line 155
    iget-object v0, p0, Lcom/android/settings_ext/wifi/z;->atC:Lcom/android/settings_ext/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/MiuiWifiSettings;->finish()V

    .line 156
    return-void
.end method
