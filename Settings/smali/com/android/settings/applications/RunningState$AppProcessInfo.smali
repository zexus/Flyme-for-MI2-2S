.class Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppProcessInfo"
.end annotation


# instance fields
.field hasForegroundServices:Z

.field hasServices:Z

.field final info:Landroid/app/ActivityManager$RunningAppProcessInfo;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .param p1, "_info"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 137
    return-void
.end method