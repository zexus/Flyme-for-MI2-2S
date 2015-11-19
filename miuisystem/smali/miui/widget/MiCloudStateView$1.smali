.class Lmiui/widget/MiCloudStateView$1;
.super Ljava/lang/Object;
.source "MiCloudStateView.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudStateView;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudStateView;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudStateView;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lmiui/widget/MiCloudStateView$1;->this$0:Lmiui/widget/MiCloudStateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/widget/MiCloudStateView$1;->this$0:Lmiui/widget/MiCloudStateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/MiCloudStateView;->updateState(Z)V

    .line 125
    return-void
.end method
