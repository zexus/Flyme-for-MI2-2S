.class Lcom/android/settings_ext/wifi/B;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic atC:Lcom/android/settings_ext/wifi/MiuiWifiSettings;

.field final synthetic atD:Lcom/android/settings_ext/wifi/d;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/MiuiWifiSettings;Lcom/android/settings_ext/wifi/d;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/settings_ext/wifi/B;->atC:Lcom/android/settings_ext/wifi/MiuiWifiSettings;

    iput-object p2, p0, Lcom/android/settings_ext/wifi/B;->atD:Lcom/android/settings_ext/wifi/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/settings_ext/wifi/B;->atC:Lcom/android/settings_ext/wifi/MiuiWifiSettings;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/B;->atD:Lcom/android/settings_ext/wifi/d;

    invoke-static {v0, v1}, Lcom/android/settings_ext/wifi/MiuiWifiSettings;->a(Lcom/android/settings_ext/wifi/MiuiWifiSettings;Lcom/android/settings_ext/wifi/d;)V

    .line 749
    return-void
.end method
