.class Lcom/miui/fmradio/FmStationListFragment$3;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmStationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStationListFragment;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$3;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStationItemChanged(Lcom/miui/fmradio/StationItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/fmradio/StationItem;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$3;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->refreshList()V

    .line 720
    return-void
.end method
