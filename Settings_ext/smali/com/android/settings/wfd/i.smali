.class Lcom/android/settings/wfd/i;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aoA:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/settings/wfd/i;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings/wfd/i;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->i(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 624
    iget-object v1, p0, Lcom/android/settings/wfd/i;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->d(Lcom/android/settings/wfd/WifiDisplaySettings;I)I

    .line 625
    iget-object v1, p0, Lcom/android/settings/wfd/i;->aoA:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->e(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 626
    return-void
.end method
