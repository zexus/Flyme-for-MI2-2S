.class Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmStationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStationListFragment;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/FmStationListFragment;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/FmStationListFragment;Lcom/miui/fmradio/FmStationListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/FmStationListFragment;
    .param p2, "x1"    # Lcom/miui/fmradio/FmStationListFragment$1;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;-><init>(Lcom/miui/fmradio/FmStationListFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mAdapter:Lcom/miui/fmradio/StationListAdapter;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$600(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/StationListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/fmradio/StationListAdapter;->getItem(I)Lcom/miui/fmradio/StationItem;

    move-result-object v0

    .line 343
    .local v0, "item":Lcom/miui/fmradio/StationItem;
    instance-of v1, v0, Lcom/miui/fmradio/StationItem$StationitemDivider;

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$700(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$OnItemClickListener;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$700(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;->onStationItemClick(Lcom/miui/fmradio/StationItem;)V

    .line 348
    :cond_0
    return-void
.end method
