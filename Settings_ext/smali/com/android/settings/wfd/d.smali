.class Lcom/android/settings_ext/wfd/d;
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
    .line 368
    iput-object p1, p0, Lcom/android/settings_ext/wfd/d;->aoB:Lcom/android/settings_ext/wfd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings_ext/wfd/d;->aoB:Lcom/android/settings_ext/wfd/c;

    iget-object v0, v0, Lcom/android/settings_ext/wfd/c;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->a(Lcom/android/settings_ext/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->pauseWifiDisplay()V

    .line 372
    return-void
.end method
