.class Lcom/android/settings_ext/applications/RunningState$ServiceItem;
.super Lcom/android/settings_ext/applications/RunningState$BaseItem;
.source "RunningState.java"


# instance fields
.field JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

.field Lr:Landroid/app/ActivityManager$RunningServiceInfo;

.field Ls:Landroid/content/pm/ServiceInfo;

.field Lt:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ext/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 341
    return-void
.end method
