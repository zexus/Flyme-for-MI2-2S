.class Lcom/android/settings/wifi/B;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic atC:Lcom/android/settings/wifi/MiuiWifiSettings;

.field final synthetic atD:Lcom/android/settings/wifi/d;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/d;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/settings/wifi/B;->atC:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/B;->atD:Lcom/android/settings/wifi/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/settings/wifi/B;->atC:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/B;->atD:Lcom/android/settings/wifi/d;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/d;)V

    .line 749
    return-void
.end method
