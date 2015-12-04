.class Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$4;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->onFmSeekCompleted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$4;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$4;->this$1:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    iget-object v0, v0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->refreshList()V

    .line 429
    return-void
.end method
