.class Lcom/android/server/notification/ZenModeHelper$3;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$3;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$3;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string v1, "deffered"

    # invokes: Lcom/android/server/notification/ZenModeHelper;->changeMusicVolumeIfNeeded(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->access$400(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/String;)V

    .line 519
    return-void
.end method
