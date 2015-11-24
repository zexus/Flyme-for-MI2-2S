.class Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;
.super Ljava/lang/Object;
.source "RunningState.java"


# instance fields
.field final KQ:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field KR:Z

.field KS:Z


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/settings_ext/applications/RunningState$AppProcessInfo;->KQ:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 133
    return-void
.end method
