.class public Lcom/android/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    .line 42
    .local v1, "holder":Lcom/android/camera/CameraHolder;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    .line 43
    .local v3, "pref":Lcom/android/camera/preferences/CameraSettingPreferences;
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 44
    .local v0, "cameraId":I
    invoke-virtual {v1, v0}, Lcom/android/camera/CameraHolder;->tryOpen(I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    if-nez v4, :cond_0

    .line 54
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->keep()V

    .line 48
    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->release()V

    .line 49
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "i":Landroid/content/Intent;
    const-class v4, Lcom/android/camera/Camera;

    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
