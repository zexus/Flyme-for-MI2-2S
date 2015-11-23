.class Lcom/android/settings/wifi/A;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic atC:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/wifi/A;->atC:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/A;->atC:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/A;->atC:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/A;->atC:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->finish()V

    .line 192
    return-void
.end method
