.class Lcom/miui/fmradio/FmLocalService$2;
.super Ljava/lang/Object;
.source "FmLocalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmLocalService;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/miui/fmradio/FmLocalService$2;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 987
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$2;->this$0:Lcom/miui/fmradio/FmLocalService;

    const-wide/16 v2, 0x0

    # setter for: Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J
    invoke-static {v0, v2, v3}, Lcom/miui/fmradio/FmLocalService;->access$2202(Lcom/miui/fmradio/FmLocalService;J)J

    .line 988
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$2;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->turnFmOff()V

    .line 989
    return-void
.end method
