.class Lcom/android/settings_ext/wfd/e;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aoB:Lcom/android/settings_ext/wfd/c;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wfd/c;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/settings_ext/wfd/e;->aoB:Lcom/android/settings_ext/wfd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/settings_ext/wfd/e;->aoB:Lcom/android/settings_ext/wfd/c;

    iget-object v0, v0, Lcom/android/settings_ext/wfd/c;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->a(Lcom/android/settings_ext/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->resumeWifiDisplay()V

    .line 381
    return-void
.end method
