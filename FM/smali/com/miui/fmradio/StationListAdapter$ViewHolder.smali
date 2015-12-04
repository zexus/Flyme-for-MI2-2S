.class Lcom/miui/fmradio/StationListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/StationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field divView:Landroid/widget/TextView;

.field freqView:Landroid/widget/TextView;

.field labelView:Landroid/widget/TextView;

.field llInfo:Landroid/widget/LinearLayout;

.field playView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/fmradio/StationListAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/StationListAdapter;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->this$0:Lcom/miui/fmradio/StationListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/StationListAdapter;Lcom/miui/fmradio/StationListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/StationListAdapter;
    .param p2, "x1"    # Lcom/miui/fmradio/StationListAdapter$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/miui/fmradio/StationListAdapter$ViewHolder;-><init>(Lcom/miui/fmradio/StationListAdapter;)V

    return-void
.end method
